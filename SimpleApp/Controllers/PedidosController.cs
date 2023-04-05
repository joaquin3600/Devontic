using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SimpleApp.Models;
using System.Collections.Generic;

namespace SimpleApp.Controllers
{
    [Route("api/[controller]")]
    public class PedidosController : Controller
    {
        private DataContext Context;
        public PedidosController(DataContext PContext)
        {
            Context = PContext;
        }
        [HttpGet]
        public IEnumerable<Pedido> GetPedidos()
        {
            IEnumerable<Pedido> Pedidos = Context.Pedidos;

            return Context.Pedidos;
        }

        [HttpGet("{id}")]
        public Pedido? GetPedido(long id)
        {
            return Context.Pedidos.Find(id);
        }

        [HttpGet("{id}/{detalle}")]
        public Pedido? GetPedido(long id, string detalle)
        {
            Pedido? Pedido = Context.Pedidos.Find(id);

            var TempProductos = (from Pedidos in Context.Pedidos
                                 join PedidoProductos in Context.PedidoProductos on Pedidos.PedidoId equals PedidoProductos.PedidoId
                                 join Productos in Context.Productos on PedidoProductos.ProductoId equals Productos.ProductoId
                                 where Pedidos.PedidoId == id
                                 select new Producto
                                 {
                                     ProductoId = Productos.ProductoId,
                                     Nombre = Productos.Nombre,
                                     Precio = Productos.Precio
                                 });
            if (TempProductos.Count() != 0)
                Pedido.Productos = TempProductos;
            return Pedido;
        }

        [HttpPut]
        public void UpdatePedido([FromBody] Pedido P)
        {
            Context.Pedidos.Update(P);
            Context.SaveChanges();
        }

        [HttpDelete("{id}")]
        public void DeletePedido(long id)
        {
            Context.Pedidos.Remove(new Pedido() { PedidoId = id });
            Context.SaveChanges();
        }
    }
}
