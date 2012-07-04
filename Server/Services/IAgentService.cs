using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Server.Services
{
	[ServiceContract( Name = "AgentService", Namespace = Namespaces.ServiceNamespace, SessionMode= SessionMode.Required )]
	public interface IAgentService
	{
		[OperationContract( IsInitiating = true )]
		Task HandshakeAsync( long agentId );

		[OperationContract]
		Task DoOperationAsync();
	}
}
