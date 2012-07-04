using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Server.Presenters
{
	public interface IPerfMonitorFormPresenter
	{
		string ToggleMonitorSuspendedButtonText { get; }
		void ToggleMonitorSuspended();
		IPerformanceCounters Counters { get; }
	}
}
