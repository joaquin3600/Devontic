using Microsoft.EntityFrameworkCore;
using SimpleApp.Models;
using System.ComponentModel.DataAnnotations;

namespace WebApp.Models
{
    public static class SeedData
    {
        public static void SeedDatabase(DataContext context)
        {
            context.Database.Migrate();
            if (context.Productos.Count() == 0 && context.Pedidos.Count() == 0 && context.PedidoProductos.Count() == 0)
            {
                Producto p1 = new Producto { Nombre = "Asiento", Precio = 275 };
                Producto p2 = new Producto { Nombre = "Chaqueta", Precio = 48.95m };

                Producto p3 = new Producto { Nombre = "Pelota", Precio = 19.50m };
                Producto p4 = new Producto { Nombre = "Banderas de campo", Precio = 34.95m };

                Producto p5 = new Producto { Nombre = "Estadio", Precio = 79500 };
                Producto p6 = new Producto { Nombre = "Gorra", Precio = 16 };

                Pedido pe1 = new Pedido { Fecha = DateTime.Parse("2023-05-02") };
                Pedido pe2 = new Pedido { Fecha = DateTime.Parse("2022-05-02") };
                Pedido pe3 = new Pedido { Fecha = DateTime.Parse("2021-05-02") };

                context.PedidoProductos.AddRange(
                    new PedidoProducto { Pedido = pe1, Producto = p1 },
                    new PedidoProducto { Pedido = pe1, Producto = p2 },

                    new PedidoProducto { Pedido = pe2, Producto = p3 },
                    new PedidoProducto { Pedido = pe2, Producto = p4 },

                    new PedidoProducto { Pedido = pe3, Producto = p5 },
                    new PedidoProducto { Pedido = pe3, Producto = p6 }
                );
                context.SaveChanges();
            }
        }
    }
}

