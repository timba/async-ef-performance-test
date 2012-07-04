using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Server.Services
{
	public class ConsoleService : IConsoleService
	{
		private static object _sync = new object();
		private static Random _rand;
		private static int _computersCount;
		private const int _take = 25;

		#region Old Async Style

		public class MyAsyncResult<T> : IAsyncResult, IDisposable
		{
			private System.Threading.ManualResetEventSlim _resetEvent;
			private readonly object _sync = new object();

			public T Data
			{
				get;
				set;
			}

			#region IAsyncResult Members

			public object AsyncState
			{
				get;
				set;
			}

			public System.Threading.WaitHandle AsyncWaitHandle
			{
				get
				{
					if( _resetEvent != null )
					{
						return _resetEvent.WaitHandle;
					}

					lock( _sync )
					{
						if( _resetEvent == null )
						{
							_resetEvent = new System.Threading.ManualResetEventSlim( IsCompleted );
						}
					}

					return _resetEvent.WaitHandle;
				}
			}

			public bool CompletedSynchronously
			{
				get;
				private set;
			}

			public bool IsCompleted
			{
				get;
				private set;
			}

			public void Complete( bool completedSynchronously )
			{
				CompletedSynchronously = completedSynchronously;
				if( completedSynchronously )
				{
					IsCompleted = true;
				}

				lock( _sync )
				{
					IsCompleted = true;
					if( _resetEvent != null )
					{
						_resetEvent.Set();
					}
				}
			}

			#endregion

			#region IDisposable Members

			public void Dispose()
			{
				lock( _sync )
				{
					if( _resetEvent != null )
					{
						_resetEvent.Dispose();
					}
				}
			}

			#endregion
		}

		public IAsyncResult BeginGetComputers( AsyncCallback callback, object state )
		{
			var entities = new CrmEntitiesEntities();

			var query = ( from comp in entities.Computers
						  where comp.Id > 10 && comp.Id < 100
						  orderby comp.Id
						  select comp ).Skip( 10 ).Take( 25 );

			var result = new MyAsyncResult<Computer[]> { AsyncState = state };

			entities.BeginGetEntities( query, entitiesAsyncResult =>
			{
				IEnumerable<Computer> computers = entities.EndGetEntities<Computer>( entitiesAsyncResult );
				result.Data = computers.ToArray();
				entities.Dispose();
				result.Complete( false );
				callback( result );
			}, null );

			return result;

			#region TPL Improvements

			var task = Task.Factory.FromAsync<IQueryable<Computer>, IEnumerable<Computer>>(
				entities.BeginGetEntities, entities.EndGetEntities<Computer>, query, state );

			return task.ContinueWith( res =>
			{
				entities.Dispose();
				callback( task );
			} );

			#endregion
		}

		public Computer[] EndGetComputers( IAsyncResult asyncResult )
		{
			var result = ( MyAsyncResult<Computer[]> )asyncResult;
			return result.Data;

			#region TPL Improvements

			//return ( ( ComputersTask )asyncResult ).Result.ToArray();

			#endregion
		}

		#endregion

		#region New Async Style

		public async Task<IEnumerable<Computer>> GetComputersAsync()
		{
			using( var entities = new CrmEntitiesEntities() )
			{
				lock( _sync )
				{
					if( _rand == null )
					{
						_rand = new Random();
						_computersCount = entities.Computers.Count();
					}
				}

				int start = _rand.Next( _computersCount - _take );

				var query = ( from comp in entities.Computers
							  orderby comp.Id
							  select comp ).Skip( start ).Take( _take );

				var result = await entities.GetEntitiesAsync( query );

				return result.ToArray();
			}
		}

		#endregion
	}
}
