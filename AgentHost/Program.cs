using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using AgentHost.AgentControlServiceReference;

namespace AgentHost
{
	class Program
	{
		private static AgentsControlServiceClient client;
		private static CancellationTokenSource cancelSource;
		private static CallbackHost callbackHost;

		static void Main( string[] args )
		{
			Console.WriteLine( "Agent control host started." );
			Console.WriteLine();

			ThreadPool.SetMinThreads( 1000, 1000 );
			ThreadPool.SetMaxThreads( 15000, 15000 );

			AgentsControl agents = new AgentsControl();
			callbackHost = new CallbackHost { Agents = agents };
			cancelSource = new CancellationTokenSource();
			ResetClient();
			StartTask();

			Console.ReadLine();
			agents.SetConnectionsCount( 0, true );
			client.Close();
			Console.WriteLine( "Bye." );
		}

		private static void Channel_Closed( object sender, EventArgs e )
		{
			Console.WriteLine();
			Console.WriteLine( "Lost connection." );
			Console.WriteLine();
			ResetClient();
			StartTask();
		}

		private static void ResetClient()
		{
			if( client != null )
			{
				client.InnerChannel.Closed -= Channel_Closed;
				client.InnerChannel.Faulted -= Channel_Closed;
				client.Abort();
				client.Close();
			}

			InstanceContext context = new InstanceContext( callbackHost );
			client = new AgentsControlServiceClient( context );
		}

		private static void StartTask()
		{
			Task.Factory.StartNew( StartService, cancelSource.Token );
		}

		private static void StartService()
		{
			while( true )
			{
				if( cancelSource.IsCancellationRequested )
					break;

				try
				{
					Console.Write( "Connecting control to the server... " );
					client.Register();
					client.InnerChannel.Closed += Channel_Closed;
					client.InnerChannel.Faulted += Channel_Closed;
					Console.WriteLine( "Connected" );
					Console.WriteLine();
					break;
				}
				catch( Exception ex )
				{
					if( cancelSource.IsCancellationRequested )
						break;

					ResetClient();
					Console.WriteLine( "Failed: {0}", ex.Message );
					Console.WriteLine();
				}


				if( cancelSource.IsCancellationRequested )
					break;

				Thread.Sleep( 1000 );
			}
		}
	}
}
