using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Server.Services
{
	[ServiceBehavior( InstanceContextMode = InstanceContextMode.PerSession )]
	public class AgentsControlService : IAgentsControlService
	{
		public static IAppServer Server
		{
			get;
			set;
		}

		private IAgentControlCallback _callback;

		public async Task RegisterAsync()
		{
			_callback = OperationContext.Current.GetCallbackChannel<IAgentControlCallback>();
			using( var entities = new CrmEntitiesEntities() )
			{
				var idsquery = from comp in entities.Computers
							   orderby comp.Id
							   select comp.Id;
				var context = OperationContext.Current;
				var ids = await entities.GetEntitiesAsync( idsquery );
				Server.RegisterAgentControl( _callback );
				context.Channel.Closed += ( sender, args ) =>
				{
					Server.UnregisterAgentControl( _callback );
				};

				_callback.Initialize( ids );
				_callback.SetConnectionsCount( Server.ExpectedConnectionsCount );
			}
		}
	}
}
