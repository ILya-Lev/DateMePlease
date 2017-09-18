namespace DateMePlease.DomainModel.Entities
{
	public class Interest
	{
		public int Id { get; set; }

		/// <summary>
		/// in order to ease interest matching and loading/saving/adding to a particular member
		/// </summary>
		public InterestType InterestType { get; set; }
	}
}