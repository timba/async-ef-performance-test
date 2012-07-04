using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using AgentHost.AgentControlServiceReference;

namespace AgentHost
{
	public class CallbackHost : AgentsControlServiceCallback
	{
		public AgentsControl Agents
		{
			get;
			set;
		}

		public void SetConnectionsCount( int count )
		{
			Agents.SetConnectionsCount( count, true );
		}

		public void Initialize( long[] ids )
		{
			Agents.SetIds( ids );
		}
	}
}
