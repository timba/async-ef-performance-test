using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Server.Services
{
	[ServiceContract( Name = "ConsoleService", Namespace = Namespaces.ServiceNamespace )]
	public interface IConsoleService
	{
		#region New Async Style

		[OperationContract]
		Task<IEnumerable<Computer>> GetComputersAsync();

		#endregion

		#region Old Async Style

		//[OperationContract( AsyncPattern = true )]
		//IAsyncResult BeginGetComputers( AsyncCallback callback, object state );

		//Computer[] EndGetComputers( IAsyncResult asyncResult );

		#endregion
	}
}
