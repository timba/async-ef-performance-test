using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Server.Presenters
{
	public class PayloadControlFormPresenter : IPayloadControlFormPresenter
	{
		private readonly IAppServer _server;

		public PayloadControlFormPresenter( IAppServer server )
		{
			_server = server;
		}

		public int ConnectionsCount
		{
			get
			{
				return _server.ExpectedConnectionsCount;
			}
			set
			{
				_server.ExpectedConnectionsCount = value;
			}
		}
	}
}
