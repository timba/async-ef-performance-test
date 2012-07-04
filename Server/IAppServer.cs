using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Server.Services;

namespace Server
{
	public interface IAppServer
	{
		bool IsAsync { get; set; }
		bool Started { get; }
		void ToggleStarted();
		int ExpectedConnectionsCount { get; set; }
		int CurrentConnectionsCount { get; }
		void RegisterAgentControl( IAgentControlCallback context );
		void UnregisterAgentControl( IAgentControlCallback context );
		void RegisterAgent( long agentId );
		void UnRegisterAgent( long agentId );
		bool AgentSavesComputer { get; set; }
	}
}
