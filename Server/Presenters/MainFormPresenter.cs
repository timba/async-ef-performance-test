using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Server
{
	public class MainFormPresenter : BaseNotifyPropertyChanged, IMainFormPresenter
	{
		private readonly IAppServer _server;
		private readonly PerfMonitorForm _monitorForm;
		private readonly PayloadControlForm _payloadForm;

		public MainFormPresenter( IAppServer server, PerfMonitorForm monitorForm, PayloadControlForm payloadForm )
		{
			_server = server;
			_monitorForm = monitorForm;
			_payloadForm = payloadForm;
		}

		public void ShowMonitor()
		{
			_monitorForm.Show();
			_monitorForm.Activate();
		}

		public void ShowPayload()
		{
			_payloadForm.Show();
			_payloadForm.Activate();
		}

		public bool IsAsync
		{
			get
			{
				return _server.IsAsync;
			}
			set
			{
				if( value != _server.IsAsync )
				{
					_server.IsAsync = value;
					OnPropertyChanged( () => IsAsync );
					OnPropertyChanged( () => IsSync );
				}
			}
		}

		public bool IsSync
		{
			get
			{
				return !_server.IsAsync;
			}
			set
			{
				if( value != !_server.IsAsync )
				{
					_server.IsAsync = !value;
					OnPropertyChanged( () => IsAsync );
					OnPropertyChanged( () => IsSync );
				}
			}
		}

		public bool AgentSavesComputer
		{
			get
			{
				return _server.AgentSavesComputer;
			}
			set
			{
				if( value != _server.AgentSavesComputer )
				{
					_server.AgentSavesComputer = value;
					OnPropertyChanged( () => AgentSavesComputer );
				}
			}
		}

		public string StartButtonText
		{
			get
			{
				return _server.Started ? "Stop" : "Start";
			}
		}

		public void ToggleStarted()
		{
			_server.ToggleStarted();
			OnPropertyChanged( () => StartButtonText );
		}
	}
}
