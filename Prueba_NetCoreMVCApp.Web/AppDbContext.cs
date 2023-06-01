using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using Prueba_NetCoreMVCApp.Web.Models;

namespace Prueba_NetCoreMVCApp.Web
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        { }
        public DbSet<Producto> Productos { get; set; }
    }

}