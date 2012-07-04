using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Description;
using System.Text;
using System.Threading.Tasks;
using Server.Services;

namespace Server
{
	public class AppServer : IAppServer
	{
		private readonly object _sync = new object();
		private bool _isAsync;
		private bool _agentSavesComputer;
		private int _expectedConnectionsCount;
		private ServiceHost _agentControlHost;
		private ServiceHost _agentHost;
		private ServiceHost _consoleHost;

		private readonly ConcurrentDictionary<IAgentControlCallback, object> _agentCallbacks = new ConcurrentDictionary<IAgentControlCallback, object>();
		private readonly ConcurrentDictionary<long, object> _connectedAgents = new ConcurrentDictionary<long, object>();

		public AppServer()
		{
			CreateHosts();
			AgentsControlService.Server = this;
			AgentService.Server = this;
			_isAsync = true;
		}

		private void CreateHosts()
		{
			_agentControlHost = new ServiceHost( typeof( AgentsControlService ) );
			_agentHost = new ServiceHost( typeof( AgentService ) );
			_consoleHost = new ServiceHost( typeof( ConsoleService ) );
		}

		public bool Started
		{
			get;
			private set;
		}

		public void ToggleStarted()
		{
			lock( _sync )
			{
				Started = !Started;
				if( Started )
				{
					_agentControlHost.Open();
					_agentHost.Open();
					_consoleHost.Open();
				}
				else
				{
					_agentControlHost.Close();
					_agentHost.Close();
					_consoleHost.Close();
					CreateHosts();
				}
			}
		}

		public bool IsAsync
		{
			get
			{
				return _isAsync;
			}
			set
			{
				_isAsync = value;
			}
		}

		public bool AgentSavesComputer
		{
			get
			{
				return _agentSavesComputer;
			}
			set
			{
				_agentSavesComputer = value;
			}
		}

		public int ExpectedConnectionsCount
		{
			get
			{
				return _expectedConnectionsCount;
			}
			set
			{
				_expectedConnectionsCount = value;
				foreach( var callback in _agentCallbacks )
				{
					callback.Key.SetConnectionsCount( value );
				}
			}
		}

		public int CurrentConnectionsCount
		{
			get
			{
				return _connectedAgents.Count;
			}
		}

		public void RegisterAgentControl( IAgentControlCallback context )
		{
			_agentCallbacks.TryAdd( context, null );
		}

		public void UnregisterAgentControl( IAgentControlCallback context )
		{
			object value;
			_agentCallbacks.TryRemove( context, out value );
		}

		public void RegisterAgent( long agentId )
		{
			_connectedAgents.AddOrUpdate( agentId, ( object )null, ( key, value ) => value );
		}

		public void UnRegisterAgent( long agentId )
		{
			object value;
			_connectedAgents.TryRemove( agentId, out value );
		}
	}
}
