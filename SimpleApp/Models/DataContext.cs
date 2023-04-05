using Microsoft.EntityFrameworkCore;
namespace SimpleApp.Models
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> opts) : base(opts) { }
        public DbSet<Pedido> Pedidos => Set<Pedido>();
        public DbSet<Producto> Productos => Set<Producto>();
        public DbSet<PedidoProducto> PedidoProductos => Set<PedidoProducto>();
    }
}
