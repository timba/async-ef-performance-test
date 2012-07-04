using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Server.Services
{
	[ServiceBehavior( InstanceContextMode = InstanceContextMode.PerSession, ConcurrencyMode = ConcurrencyMode.Multiple )]
	public class AgentService : IAgentService
	{
		private long _compId;
		private Random _rnd;
		private static int _doOperationCalls;

		public static int OperationCalls
		{
			get
			{
				int value = _doOperationCalls;
				Interlocked.Exchange( ref _doOperationCalls, 0 );
				return value;
			}
		}

		public static IAppServer Server
		{
			get;
			set;
		}

		public async Task HandshakeAsync( long agentId )
		{
			_compId = agentId;
			using( var entities = new CrmEntitiesEntities() )
			{
				var query = from comp in entities.Computers
							where comp.Id == agentId
							select comp;

				var context = OperationContext.Current;

				var comps = await entities.GetEntitiesAsync( query );

				var cmp = comps.FirstOrDefault();
				if( cmp == null )
				{
					throw new FaultException( "comp not found" );
				}

				context.Channel.Closed += ( sender, args ) =>
				{
					Server.UnRegisterAgent( agentId );
				};

				Server.RegisterAgent( agentId );

				_rnd = new Random( GetHashCode() );
			}
		}

		public async Task DoOperationAsync()
		{
			using( var entities = new CrmEntitiesEntities() )
			{
				var query = from comp in entities.Computers
							where comp.Id == _compId
							select comp;

				Computer[] comps;
				if( Server.IsAsync )
				{
					comps = await entities.GetEntitiesAsync( query );
				}
				else
				{
					comps = entities.GetEntitiesSync( query );
				}

				if( Server.AgentSavesComputer )
				{
					var cmp = comps.First();
					int val = _rnd.Next();
					cmp.AgentPackageName = val.ToString();

					if( Server.IsAsync )
					{
						await entities.SaveComputerAsync( cmp );
					}
					else
					{
						entities.SaveComputerSync( cmp );
					}
				}
			}

			Interlocked.Increment( ref _doOperationCalls );
		}
	}
}
