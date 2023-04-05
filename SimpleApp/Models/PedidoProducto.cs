using System.ComponentModel.DataAnnotations.Schema;

namespace SimpleApp.Models
{
    public class PedidoProducto
    {
        public long PedidoProductoId { get; set; }

        public long? ProductoId { get; set; }
        [ForeignKey("ProductoId")]
        public virtual Producto Producto { get; set; }

        public long? PedidoId { get; set; }
        [ForeignKey("PedidoId")]
        public virtual Pedido Pedido { get; set; }

    }
}
