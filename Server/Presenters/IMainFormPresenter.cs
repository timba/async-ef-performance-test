using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Server
{
	public interface IMainFormPresenter
	{
		bool IsAsync { get; set; }
		bool IsSync { get; set; }
		bool AgentSavesComputer { get; set; }
		string StartButtonText { get; }
		void ToggleStarted();
		void ShowMonitor();
		void ShowPayload();
	}
}
