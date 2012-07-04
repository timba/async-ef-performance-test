using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Description;
using System.Text;
using System.Threading.Tasks;

namespace Server.Services
{
	[ServiceContract( Name = "AgentsControlService", Namespace = Namespaces.ServiceNamespace, SessionMode = SessionMode.Required, CallbackContract = typeof( IAgentControlCallback ) )]
	public interface IAgentsControlService
	{
		[OperationContract( IsOneWay = true, IsInitiating = true )]
		Task RegisterAsync();
	}

	public interface IAgentControlCallback
	{
		[OperationContract( IsOneWay = true )]
		void Initialize( long[] ids );

		[OperationContract( IsOneWay = true )]
		void SetConnectionsCount( int count );
	}
}
