using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using Prueba_NetCoreMVCApp.Web.Models;
using System;

namespace Prueba_NetCoreMVCApp.Web.Controllers
{
    public class Producto1 : Controller
    {
        public AppDbContext _dbContext;

        public Producto1(AppDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public IActionResult Index1()
        {
            // Obtener las categorías
            var categorias = _dbContext.Productos.Select(p => p.Categoria).Distinct();
            return View(categorias);
        }

        public IActionResult Buscar(string categoriaSeleccionada)
        {
            // Obtener los productos que coinciden con la categoría seleccionada
            var productos = _dbContext.Productos.Where(p => p.Categoria == categoriaSeleccionada).Take(10).ToList();
            return View(productos);
        }
    }
}