using Microsoft.EntityFrameworkCore;
using WebApplicationAspNet.Models;

namespace WebApplicationAspNet.DB
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions options) : base(options) { }

        public DbSet<Employer> Employers { get; set; }
        public DbSet<EmployerSub> EmployerSubs { get; set; }


        public virtual DbSet<Student> Students { get; set; }

    }
}
