using System;
using System.Collections.Generic;
using System.Data;
using System.Data.EntityClient;
using System.Data.Objects;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Server
{
	public partial class CrmEntitiesEntities
	{
		public async Task<T[]> GetEntitiesAsync<T>( IQueryable<T> query )
		{
			var efConnection = Connection as EntityConnection;
			IDbConnection connection = efConnection.StoreConnection;
			if( connection.State != ConnectionState.Open )
			{
				SqlConnectionStringBuilder b = new SqlConnectionStringBuilder( connection.ConnectionString );
				b.AsynchronousProcessing = true;
				connection.ConnectionString = b.ToString();
			}

			using( SqlCommand command = ( SqlCommand )connection.CreateCommand() )
			{
				ObjectQuery objectQuery = ( ObjectQuery )query;
				string queryStr = objectQuery.ToTraceString();
				command.CommandText = queryStr;
				foreach( var param in objectQuery.Parameters )
				{
					command.Parameters.Add( new SqlParameter( param.Name, param.Value ) );
				}

				if( connection.State != ConnectionState.Open )
				{
					await command.Connection.OpenAsync();
				}

				using( var reader = await command.ExecuteReaderAsync() )
				{
					T[] result = Translate<T>( reader ).ToArray();
					return result;
				}
			}
		}

		public async Task SaveComputerAsync( Computer computer )
		{
			var efConnection = Connection as EntityConnection;
			IDbConnection connection = efConnection.StoreConnection;
			SqlConnectionStringBuilder b = new SqlConnectionStringBuilder( connection.ConnectionString );
			if( !b.AsynchronousProcessing && connection.State != ConnectionState.Open )
			{
				b.AsynchronousProcessing = true;
				connection.ConnectionString = b.ToString();
			}

			using( SqlCommand command = ( SqlCommand )connection.CreateCommand() )
			{
				command.CommandText = "UPDATE Computers SET AgentPackageName = @PNAME WHERE Id = @ID";
				command.Parameters.Add( new SqlParameter( "@PNAME", computer.AgentPackageName ) );
				command.Parameters.Add( new SqlParameter( "@ID", computer.Id ) );
				if( command.Connection.State != ConnectionState.Open )
				{
					await command.Connection.OpenAsync();
				}

				await command.ExecuteNonQueryAsync();
			}
		}

		public void SaveComputerSync( Computer computer )
		{
			var efConnection = Connection as EntityConnection;
			IDbConnection connection = efConnection.StoreConnection;
			SqlConnectionStringBuilder b = new SqlConnectionStringBuilder( connection.ConnectionString );
			if( !b.AsynchronousProcessing && connection.State != ConnectionState.Open )
			{
				b.AsynchronousProcessing = true;
				connection.ConnectionString = b.ToString();
			}

			using( SqlCommand command = ( SqlCommand )connection.CreateCommand() )
			{
				command.CommandText = "UPDATE Computers SET AgentPackageName = @PNAME WHERE Id = @ID";
				command.Parameters.Add( new SqlParameter( "@PNAME", computer.AgentPackageName ) );
				command.Parameters.Add( new SqlParameter( "@ID", computer.Id ) );
				if( command.Connection.State != ConnectionState.Open )
				{
					command.Connection.OpenAsync();
				}

				command.ExecuteNonQueryAsync();
			}
		}

		public T[] GetEntitiesSync<T>( IQueryable<T> query )
		{
			var efConnection = Connection as EntityConnection;
			IDbConnection connection = efConnection.StoreConnection;
			if( connection.State != ConnectionState.Open )
			{
				SqlConnectionStringBuilder b = new SqlConnectionStringBuilder( connection.ConnectionString );
				b.AsynchronousProcessing = true;
				connection.ConnectionString = b.ToString();
			}

			using( SqlCommand command = ( SqlCommand )connection.CreateCommand() )
			{
				ObjectQuery objectQuery = ( ObjectQuery )query;
				string queryStr = objectQuery.ToTraceString();
				command.CommandText = queryStr;
				foreach( var param in objectQuery.Parameters )
				{
					command.Parameters.Add( new SqlParameter( param.Name, param.Value ) );
				}

				if( connection.State != ConnectionState.Open )
				{
					command.Connection.Open();
				}

				using( var reader = command.ExecuteReader() )
				{
					var result = Translate<T>( reader ).ToArray();
					return result.ToArray();
				}
			}
		}

		public IAsyncResult BeginGetEntities<T>( IQueryable<T> query, AsyncCallback callback, object state )
		{
			var efConnection = Connection as EntityConnection;
			IDbConnection connection = efConnection.StoreConnection;
			SqlConnectionStringBuilder b = new SqlConnectionStringBuilder( connection.ConnectionString );
			b.AsynchronousProcessing = true;
			connection.ConnectionString = b.ToString();
			SqlCommand command = ( SqlCommand )connection.CreateCommand();

			ObjectQuery objectQuery = ( ObjectQuery )query;
			string queryStr = objectQuery.ToTraceString();
			command.CommandText = queryStr;
			foreach( var param in objectQuery.Parameters )
			{
				command.Parameters.Add( new SqlParameter( param.Name, param.Value ) );
			}

			command.Connection.Open();

			var task = Task.Factory.FromAsync<SqlDataReader>( command.BeginExecuteReader, command.EndExecuteReader, state );
			return task.ContinueWith( resu =>
			{
				command.Dispose();
				callback( resu );
			} );

		}

		public IEnumerable<T> EndGetEntities<T>( IAsyncResult asyncResult )
		{
			var reader = ( ( Task<SqlDataReader> )asyncResult ).Result;
			var result = Translate<T>( reader ).ToArray();
			reader.Dispose();
			return result;
		}
	}
}
