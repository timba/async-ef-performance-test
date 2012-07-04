using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using AppConsole.ConsoleServiceReference;

namespace Console
{
	public partial class MainForm : Form
	{
		public MainForm()
		{
			InitializeComponent();
		}

		private void getComputersButton_Click( object sender, EventArgs e )
		{
			computerBindingSource.DataSource = null;
			ConsoleServiceClient client = new ConsoleServiceClient();
			Action but = () => getComputersButton.Enabled = false;
			BeginInvoke( but );

			DateTime started = DateTime.UtcNow;
			client.GetComputersAsync().ContinueWith( task =>
			{
				Action action = () =>
				{
					computerBindingSource.DataSource = task.Result;
					getComputersButton.Enabled = true;
					elapsedLabel.Text = String.Format( "Elapsed: {0}", DateTime.UtcNow - started );
				};

				if( InvokeRequired ) { BeginInvoke( action ); };
			} );
		}
	}
}
