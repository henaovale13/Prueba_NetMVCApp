using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Prueba_NetCoreMVCApp.Web.Models;

namespace Prueba_NetCoreMVCApp.Web.Controllers
{
    public class HomeController : Controller
    {
        private List<Producto> GetProducts()
        {

            var products = new List<Producto>
        {
            new Producto
            {
                Nombre = "Cama",
                Descripcion = "Cama con colchón de espuma",
                Categoria = "Hogar",
                ImagenUrl = "/img/cama.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 30.99f,
            },
            new Producto
            {
                Nombre = "Comedor",
                Descripcion = "Comedor de cuatro puestos en mármol",
                Categoria = "Hogar",
                ImagenUrl = "/img/comedor.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 25.99f,
            },
            new Producto
            {
                Nombre = "Sofá cama",
                Descripcion = "Sofá cama reclinable 25x12",
                Categoria = "Hogar",
                ImagenUrl = "/img/sofa.jpg",
                Estado = "Usado",
                Cantidad = 2,
                Precio = 50.99f,
            },
            new Producto
            {
                Nombre = "Lámpara led",
                Descripcion = "Lámpara led con sensor",
                Categoria = "Hogar",
                ImagenUrl = "/img/lampara.jpg",
                Estado = "Nuevo",
                Cantidad = 5,
                Precio = 60f,
            },
            new Producto
            {
                Nombre = "Organizador",
                Descripcion = "Organizador para el hogar",
                Categoria = "Hogar",
                ImagenUrl = "/img/organizador.jpg",
                Estado = "Usado",
                Cantidad = 30,
                Precio = 21.87f,
            },

            new Producto
            {
                Nombre = "Escritorio",
                Descripcion = "Escritorio estilo nordico",
                Categoria = "Hogar",
                ImagenUrl = "/img/escritorio.jpg",
                Estado = "Usado",
                Cantidad = 2,
                Precio = 10.99f,
            },
            new Producto
            {
                Nombre = "Cama",
                Descripcion = "Cama doble",
                Categoria = "Hogar",
                ImagenUrl = "/img/cama2.jpg",
                Estado = "Nuevo",
                Cantidad = 10,
                Precio = 9.99f,
            },
            new Producto
            {
                Nombre = "Silla gamer",
                Descripcion = "Silla gamer reclinable",
                Categoria = "Hogar",
                ImagenUrl = "/img/silla_gamer.jpg",
                Estado = "Usado",
                Cantidad = 13,
                Precio = 20.99f,
            },
            new Producto
            {
                Nombre = "Cama",
                Descripcion = "Cama doble",
                Categoria = "Hogar",
                ImagenUrl = "/img/cama3.jpg",
                Estado = "Nuevo",
                Cantidad = 10,
                Precio = 9.99f,
            },

            new Producto
            {
                Nombre = "Clóset",
                Descripcion = "Clóset en madera",
                Categoria = "Hogar",
                ImagenUrl = "/img/closet.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 70.1f,
            },
            new Producto
            {
                Nombre = "Juego de sala",
                Descripcion = "Juego de sala con un mueble grande y dos pequeños",
                Categoria = "Hogar",
                ImagenUrl = "/img/juego_sala.jpg",
                Estado = "Usado",
                Cantidad = 2,
                Precio = 50.99f,
            },
            new Producto
            {
                Nombre = "Cama",
                Descripcion = "Cama doble",
                Categoria = "Hogar",
                ImagenUrl = "/img/cama4.jpg",
                Estado = "Nuevo",
                Cantidad = 10,
                Precio = 9.99f,
            },
            new Producto
            {
                Nombre = "Juego de sala",
                Descripcion = "Juego de sala con un mueble grande y dos pequeños",
                Categoria = "Hogar",
                ImagenUrl = "/img/juegosala2.jpg",
                Estado = "Usado",
                Cantidad = 2,
                Precio = 50.99f,
            },

            //Electrodomesticos

            new Producto
            {
                Nombre = "Lavadora",
                Descripcion = "Lavadora HACEB con varios moods de lavado",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/lavadora.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 130.99f,
            },
            new Producto
            {
                Nombre = "Estufa",
                Descripcion = "Estufa en vidrio",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/estufa.jpg",
                Estado = "Nuevo",
                Cantidad = 5,
                Precio = 260f,
            },
            new Producto
            {
                Nombre = "Horno",
                Descripcion = "Horno con potencia de 360C",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/horno.jpg",
                Estado = "Usado",
                Cantidad = 30,
                Precio = 21.87f,
            },
            new Producto
            {
                Nombre = "Secadora",
                Descripcion = "Secadora Samsung",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/secadora.jpg",
                Estado = "Usado",
                Cantidad = 2,
                Precio = 30.99f,
            },
            new Producto
            {
                Nombre = "Airfryer",
                Descripcion = "Olla para hacer alimentos más saludables",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/airfryer.jpg",
                Estado = "Usado",
                Cantidad = 13,
                Precio = 80.99f,
            },

            new Producto
            {
                Nombre = "Aspiradora",
                Descripcion = "Aspiradora con tubo de 2 metros",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/Aspiradora.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 120.1f,
            },
            new Producto
            {
                Nombre = "Microondas",
                Descripcion = "Buen calentamiento de tus productos",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/microondas.jpg",
                Estado = "Usado",
                Cantidad = 2,
                Precio = 30.21f,
            },
            new Producto
            {
                Nombre = "Licuadora",
                Descripcion = "Color negro",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/licuadora.jpg",
                Estado = "Usado",
                Cantidad = 13,
                Precio = 60.99f,
            },
            new Producto
            {
                Nombre = "Wafflera",
                Descripcion = "Tamaño medio",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/wafflera.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 90.8f,
            },

            new Producto
            {
                Nombre = "Lavadora",
                Descripcion = "Lavadora HACEB con varios moods de lavado",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/lavadora.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 130.99f,
            },
            new Producto
            {
                Nombre = "Lavadora",
                Descripcion = "Lavadora HACEB con varios moods de lavado",
                Categoria = "Electrodomesticos",
                ImagenUrl = "/img/lavadora.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 130.99f,
            },
             
            //Tecnología

             new Producto
            {
                Nombre = "Iphone 12",
                Descripcion = "iPhone 12 128gb ",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/iphone12.jpg",
                Estado = "Usado",
                Cantidad = 2,
                Precio = 50.99f,
            },
            new Producto
            {
                Nombre = "Asus VivoBook",
                Descripcion = "Laptop Asus VivoBook 8RAM 512SSD",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/asus.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 130.99f,
            },
            new Producto
            {
                Nombre = "Cámara CANON",
                Descripcion = "Canon con lente 33mm",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/canon.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 130.99f,
            },
            new Producto
            {
                Nombre = "Xiaomi Redmi 11",
                Descripcion = "XR11 256GB",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/xiaomi.jpg",
                Estado = "Usado",
                Cantidad = 30,
                Precio = 21.87f,
            },
            new Producto
            {
                Nombre = "Audifonos inalambricos",
                Descripcion = "Largo alcance",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/audifonos.jpg",
                Estado = "Usado",
                Cantidad = 2,
                Precio = 30.99f,
            },

            new Producto
            {
                Nombre = "iPad Pro",
                Descripcion = "256Gb",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/ipadpro.jpg",
                Estado = "Usado",
                Cantidad = 13,
                Precio = 80.99f,
            },
            new Producto
            {
                Nombre = "Reloj inteligente",
                Descripcion = "Reloj digital",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/reloj.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 120.1f,
            },
            new Producto
            {
                Nombre = "Cable para iPhone",
                Descripcion = "Cable 2 metros",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/cable.jpg",
                Estado = "Usado",
                Cantidad = 2,
                Precio = 30.21f,
            },
            new Producto
            {
                Nombre = "iPad Air",
                Descripcion = "Espacio 256Gb",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/ipadair.jpg",
                Estado = "Usado",
                Cantidad = 13,
                Precio = 60.99f,
            },

            new Producto
            {
                Nombre = "Macbook Pro",
                Descripcion = "Laptop ultradelgada",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/macbookpro.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 90.8f,
            },
            new Producto
            {
                Nombre = "iPad Pro",
                Descripcion = "256Gb",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/ipadpro.jpg",
                Estado = "Usado",
                Cantidad = 13,
                Precio = 80.99f,
            },
            new Producto
            {
                Nombre = "Asus VivoBook",
                Descripcion = "Laptop Asus VivoBook 8RAM 512SSD",
                Categoria = "Tecnologia",
                ImagenUrl = "/img/asus.jpg",
                Estado = "Nuevo",
                Cantidad = 4,
                Precio = 130.99f,
            },

            //fin
        };

            return products;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Search(string category)
        {
            var products = GetProducts().Where(p => p.Categoria == category).Take(10);
            return View(products);
        }

        public IActionResult Details(string imageUrl)
        {
            var product = GetProducts().FirstOrDefault(p => p.ImagenUrl == imageUrl);
            return View(product);
        }
    }
}
