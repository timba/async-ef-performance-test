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
	public partial class PayloadControlForm : Form
	{
		public PayloadControlForm( IAppServer server )
		{
			InitializeComponent();
			IPayloadControlFormPresenter presenter = new PayloadControlFormPresenter( server );
			payloadControlFormPresenterBindingSource.DataSource = presenter;
		}

		private void PayloadControlForm_FormClosing( object sender, FormClosingEventArgs e )
		{
			Hide();
			e.Cancel = true;
		}
	}
}
