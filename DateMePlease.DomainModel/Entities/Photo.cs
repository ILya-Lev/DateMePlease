using System;

namespace DateMePlease.DomainModel.Entities
{
	public class Photo
	{
		public int Id { get; set; }

		public string Uri { get; set; }
		public string Description { get; set; }
		public DateTime DateAdded { get; set; }
		public bool IsMain { get; set; }
	}
}