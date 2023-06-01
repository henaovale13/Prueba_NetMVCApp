using System;
using Microsoft.EntityFrameworkCore;

public void ConfigureServices(IServiceCollection services)
{
    // Agregar servicios necesarios para MVC
    services.AddControllersWithViews();

    // Configurar la conexión a la base de datos
    services.AddDbContext<ApplicationDbContext>(options =>
        options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));

    // Otros servicios que necesites agregar

    // Agregar soporte para la sesión en la aplicación (opcional)
    services.AddSession(options =>
    {
        // Configurar las opciones de sesión si es necesario
    });

    // Código Para hacer la conexion a la base de datos sql
    //public class Startup
    //{
    //    public IConfiguration Configuration { get; }

    //    public Startup(IConfiguration configuration)
    //    {
    //        Configuration = configuration;
    //    }

    //    public void ConfigureServices(IServiceCollection services)
    //    {
    //        services.AddDbContext<AppDbContext>(options =>
    // options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));
    //    }



}

