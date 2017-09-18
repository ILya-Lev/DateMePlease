using DateMePlease.DomainModel.Entities;
using System.Data.Entity;

namespace DateMePlease.EntityFramework
{
	public class MainContext : DbContext
	{
		public DbSet<Member> Members { get; set; }
		public DbSet<Message> Messages { get; set; }
		public DbSet<Favorite> Favorites { get; set; }
		public DbSet<Profile> Profiles { get; set; }
		public DbSet<Demographics> Demographicses { get; set; }
		public DbSet<Interest> Interests { get; set; }
		public DbSet<InterestType> InterestTypes { get; set; }
		public DbSet<Photo> Photos { get; set; }

		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
			modelBuilder.Entity<Member>().HasOptional(m => m.Profile).WithRequired(p => p.Member);
		}
	}
}
