using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Server
{
	public interface IPerformanceCounters
	{
		int[] ThreadsCountStat { get; }
		bool Suspended { get; }
		void ToggleSuspended();
		int[] ExpectedConnectionsCountStat { get; }
		int[] CurrentConnectionsCountStat { get; }
		int[] CallsCount { get; }
		long[] MemoryStat { get; }
	}

	public class PerformanceCounters : IPerformanceCounters, IDisposable
	{
		private readonly IAppServer _server;
		private readonly Timer _timer;
		private readonly ConcurrentQueue<int> _threadsCounts = new ConcurrentQueue<int>();
		private readonly ConcurrentQueue<int> _expectedConnectionsCounts = new ConcurrentQueue<int>();
		private readonly ConcurrentQueue<int> _currentConnectionsCounts = new ConcurrentQueue<int>();
		private readonly ConcurrentQueue<int> _callsCounts = new ConcurrentQueue<int>();
		private readonly ConcurrentQueue<long> _memory = new ConcurrentQueue<long>();
		private readonly object _sync = new object();
		private bool _suspended = false;
		private const int _interval = 1000;

		public PerformanceCounters( IAppServer server )
		{
			_server = server;
			InitStatQueue( _threadsCounts );
			InitStatQueue( _expectedConnectionsCounts );
			InitStatQueue( _currentConnectionsCounts );
			InitStatQueue( _memory );
			InitStatQueue( _callsCounts );
			_timer = new Timer( TimerCallback, null, Timeout.Infinite, Timeout.Infinite );
			_timer.Change( _interval, _interval );
		}

		private static void InitStatQueue<TValue>( ConcurrentQueue<TValue> queue )
		{
			for( int i = 0; i < 50; i++ )
			{
				queue.Enqueue( default( TValue ) );
			}
		}

		public int[] ThreadsCountStat
		{
			get
			{
				return _threadsCounts.ToArray();
			}
		}

		public int[] ExpectedConnectionsCountStat
		{
			get
			{
				return _expectedConnectionsCounts.ToArray();
			}
		}

		public int[] CurrentConnectionsCountStat
		{
			get
			{
				return _currentConnectionsCounts.ToArray();
			}
		}

		public int[] CallsCount
		{
			get
			{
				return _callsCounts.ToArray();
			}
		}

		public long[] MemoryStat
		{
			get
			{
				return _memory.ToArray();
			}
		}

		public bool Suspended
		{
			get
			{
				return _suspended;
			}
		}

		public void ToggleSuspended()
		{
			lock( _sync )
			{
				_timer.Change( _suspended ? _interval : 0, Timeout.Infinite );
				_suspended = !_suspended;
			}
		}

		public void Dispose()
		{
			_timer.Dispose();
		}

		private void TimerCallback( object state )
		{
			lock( _sync )
			{
				if( _suspended )
				{
					return;
				}

				_timer.Change( _interval, Timeout.Infinite );
				Process process = Process.GetCurrentProcess();
				UpdateStat( _threadsCounts, process.Threads.Count );
				UpdateStat( _memory, process.VirtualMemorySize64 );
				UpdateStat( _expectedConnectionsCounts, _server.ExpectedConnectionsCount );
				UpdateStat( _currentConnectionsCounts, _server.CurrentConnectionsCount );
				int callsCount = Server.Services.AgentService.OperationCalls;
				UpdateStat( _callsCounts, callsCount );

				if( StatUpdated != null )
				{
					StatUpdated();
				}

				System.Diagnostics.Trace.TraceInformation( "Stat updated: calls count {0}", callsCount );
				_timer.Change( _interval, _interval );
			}
		}

		private void UpdateStat<TValue>( ConcurrentQueue<TValue> queue, TValue value )
		{
			queue.Enqueue( value );
			TValue res;
			queue.TryDequeue( out res );
		}

		public event Action StatUpdated;
	}
}
