using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;

namespace DateMePlease.WebUI.Entities
{
	public class Member
	{
		public int Id { get; set; }
		/// <summary> name in login form </summary>
		public string Username { get; set; }
		/// <summary> helps to understand whether the member has read the message from you </summary>
		public DateTime LastLogin { get; set; }
		public DateTime Created { get; set; }

		public Profile Profile { get; set; }
	}
}