namespace Prueba_NetCoreMVCApp.Web.Models
{
    public class Producto
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string ImagenUrl { get; set; }
        public string Categoria { get; set; }
        public string Estado { get; set; }
        public int Cantidad { get; set; }
        public float Precio { get; set; }

    }
}
