using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Server
{
	public partial class MainForm : Form
	{
		public MainForm()
		{
			InitializeComponent();
			var server = new AppServer();
			PerfMonitorForm monitorForm = new PerfMonitorForm( server );
			PayloadControlForm payloadForm = new PayloadControlForm( server );
			Presenter = new MainFormPresenter( server, monitorForm, payloadForm );
			presenterBindingSource.DataSource = Presenter;
		}

		public IMainFormPresenter Presenter
		{
			get;
			set;
		}

		private void startButton_Click( object sender, EventArgs e )
		{
			var currentContextScheduler = TaskScheduler.FromCurrentSynchronizationContext();
			startButton.Enabled = false;
			startButton.Text = "Wait...";
			Task.Factory
				.StartNew( Presenter.ToggleStarted )
				.ContinueWith( task => startButton.Enabled = true, currentContextScheduler );
		}

		private void MainForm_Load( object sender, EventArgs e )
		{
			// Doesn't help from Frozen UI
			//Thread.CurrentThread.Priority = ThreadPriority.Highest;
			Presenter.ShowMonitor();
			Presenter.ShowPayload();
			Presenter.ToggleStarted();
		}

		private void showMonitorButton_Click( object sender, EventArgs e )
		{
			Presenter.ShowMonitor();
		}

		private void showPayloadControlButton_Click( object sender, EventArgs e )
		{
			Presenter.ShowPayload();
		}
	}
}
