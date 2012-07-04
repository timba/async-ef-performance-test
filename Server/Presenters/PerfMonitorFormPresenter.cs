using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Server.Presenters
{
	public class PerfMonitorFormPresenter : BaseNotifyPropertyChanged, IPerfMonitorFormPresenter
	{
		IPerformanceCounters _counters;

		public PerfMonitorFormPresenter( IPerformanceCounters counters )
		{
			_counters = counters;
		}

		public string ToggleMonitorSuspendedButtonText
		{
			get { return _counters.Suspended ? "Resume" : "Suspend"; }
		}

		public void ToggleMonitorSuspended()
		{
			_counters.ToggleSuspended();
			OnPropertyChanged( () => ToggleMonitorSuspendedButtonText );
		}

		public IPerformanceCounters Counters
		{
			get { return _counters; }
		}
	}
}
