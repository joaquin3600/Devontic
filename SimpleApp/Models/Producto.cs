using System.ComponentModel.DataAnnotations.Schema;
namespace SimpleApp.Models
{
    public class Producto
    {
        public long ProductoId { get; set; }
        public string Nombre { get; set; } = string.Empty;
        [Column(TypeName = "decimal(8, 2)")]
        public decimal Precio { get; set; }

    }
}