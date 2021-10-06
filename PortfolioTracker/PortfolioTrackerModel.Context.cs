namespace PortfolioTracker
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;

    public partial class PortfolioTrackerEntities : DbContext
    {
        public PortfolioTrackerEntities()
            : base("name=PortfolioTrackerEntities")
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }

        public DbSet<PortfolioDetail> PortfolioDetails { get; set; }
        public DbSet<UserDetail> UserDetails { get; set; }
    }
}
