using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Server
{
	public abstract class BaseNotifyPropertyChanged : INotifyPropertyChanged
	{
		public event PropertyChangedEventHandler PropertyChanged;

		protected void OnPropertyChanged<T>( Expression<Func<T>> property )
		{
			var tmp = PropertyChanged;
			if( tmp != null )
			{
				var mex = property.Body as MemberExpression;
				string name = mex.Member.Name;
				var e = new PropertyChangedEventArgs( name );
				PropertyChanged( this, e );
			}
		}
	}
}
