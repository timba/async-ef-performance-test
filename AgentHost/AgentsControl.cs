using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using AgentHost.AgentServiceReference;

namespace AgentHost
{
	public class AgentsControl
	{
		private ConcurrentStack<Tuple<long, CancellationTokenSource>> _activeConnections = new ConcurrentStack<Tuple<long, CancellationTokenSource>>();
		private ConcurrentStack<long> _idleConnections = new ConcurrentStack<long>();

		public void SetIds( long[] ids )
		{
			Console.WriteLine( "Initialized with IDs: {0}", ids.Length );
			int count = _activeConnections.Count;
			SetConnectionsCount( 0, false );
			_idleConnections.Clear();
			if( ids.Length > 0 )
			{
				_idleConnections.PushRange( ids );
				SetConnectionsCount( count, false );
			}
		}

		public void SetConnectionsCount( int count, bool info )
		{
			if( info )
				Console.Write( "Setting connections count to {0} ... ", count );

			if( count == _activeConnections.Count )
			{
				if( info )
					Console.WriteLine( "Skipped - already set to this value" );

				return;
			}

			if( count < _activeConnections.Count )
			{
				var buff = new Tuple<long, CancellationTokenSource>[_activeConnections.Count - count];
				_activeConnections.TryPopRange( buff );
				foreach( var tpl in buff )
				{
					_idleConnections.Push( tpl.Item1 );
					tpl.Item2.Cancel();
				}
			}
			else
			{
				long[] buff = new long[count - _activeConnections.Count];
				_idleConnections.TryPopRange( buff );
				_activeConnections.PushRange( buff.Select( id => Tuple.Create( id, CreateTask( id ) ) ).ToArray() );
			}

			if( info )
				Console.WriteLine( "Done" );
		}

		public CancellationTokenSource CreateTask( long agentId )
		{
			CancellationTokenSource source = new CancellationTokenSource();
			var task = new Task( async () =>
			{
				while( !source.Token.IsCancellationRequested )
				{
					try
					{
						using( AgentServiceClient client = new AgentServiceClient() )
						{
							await client.HandshakeAsync( agentId );
							while( !source.Token.IsCancellationRequested )
							{
								Thread.Sleep( 1000 );
								await client.DoOperationAsync();
							}
						}
					}
					catch
					{
						Thread.Sleep( 1000 );
					}
				}

				source.Dispose();
			}, source.Token );
			task.Start();
			return source;
		}
	}
}
