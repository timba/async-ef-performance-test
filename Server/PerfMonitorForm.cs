using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Server.Presenters;

namespace Server
{
	public partial class PerfMonitorForm : Form
	{
		private readonly object _sync = new object();
		private bool _statInvoking;


		public PerfMonitorForm( IAppServer server )
		{
			InitializeComponent();

			var couners = new PerformanceCounters( server );
			couners.StatUpdated += StatUpdated;
			Presenter = new PerfMonitorFormPresenter( couners );
			perfMonitorFormPresenterBindingSource.DataSource = Presenter;
		}

		public IPerfMonitorFormPresenter Presenter
		{
			get;
			set;
		}

		void StatUpdated()
		{
			lock( _sync )
			{
				if( _statInvoking )
					return;

				_statInvoking = true;
			}

			if( chart.InvokeRequired )
			{
				chart.BeginInvoke( new Action( UpdateChart ) );
			}
			else if( !chart.IsDisposed )
			{
				UpdateChart();
			}
		}

		private void UpdateChart()
		{
			if( !chart.IsDisposed )
			{
				chart.Series["perfThreadsSeries"].Points.DataBindY( Presenter.Counters.ThreadsCountStat );
				chart.Series["perfMemorySeries"].Points.DataBindY( Presenter.Counters.MemoryStat );
				chart.Series["connExpectedConnectionsSeries"].Points.DataBindY( Presenter.Counters.ExpectedConnectionsCountStat );
				chart.Series["connActualConnectionsSeries"].Points.DataBindY( Presenter.Counters.CurrentConnectionsCountStat );
				chart.Series["loadCountSeries"].Points.DataBindY( Presenter.Counters.CallsCount );
				lock( _sync )
				{
					_statInvoking = false;
				}
			}
		}

		private void PerfMonitorForm_FormClosing( object sender, FormClosingEventArgs e )
		{
			Hide();
			e.Cancel = true;
		}

		private void toggleMonitorSuspendedButton_Click( object sender, EventArgs e )
		{
			Presenter.ToggleMonitorSuspended();
		}
	}
}
