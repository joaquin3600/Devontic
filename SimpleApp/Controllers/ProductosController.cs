using Microsoft.AspNetCore.Mvc;
using SimpleApp.Models;

namespace SimpleApp.Controllers
{
    [Route("api/[controller]")]
    public class ProductosController : Controller
    {
        private DataContext Context;
        public ProductosController(DataContext PContext)
        {
            Context = PContext;
        }
        [HttpGet]
        public IEnumerable<Producto> GetProductos()
        {
            return Context.Productos;
        }

        [HttpGet("{id}")]
        public Producto? GetProducto(long id)
        {
            return Context.Productos.Find(id);
        }

        [HttpPost]
        public void SetProducto([FromBody] Producto P)
        {
            Context.Productos.Add(P);
            Context.SaveChanges();
        }

        [HttpPut]
        public void UpdateProducto([FromBody] Producto P)
        {
            Context.Productos.Update(P);
            Context.SaveChanges();
        }

        [HttpDelete("{id}")]
        public void DeleteProducto(long id)
        {
            Context.Productos.Remove(new Producto() { ProductoId = id });
            Context.SaveChanges();
        }
    }
}
