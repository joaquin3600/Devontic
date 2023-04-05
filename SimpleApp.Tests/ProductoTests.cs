using SimpleApp.Models;
using Xunit;
namespace SimpleApp.Tests
{
    public class ProductoTests
    {
        [Fact]
        public void CanChangeProductName()
        {
            // Arrange
            var p = new Producto { Nombre = "Test", Precio = 100M };
            // Act
            p.Nombre = "New Name";
            //Assert
            Assert.Equal("New Name", p.Nombre);
        }
        [Fact]
        public void CanChangeProductPrice()
        {
            // Arrange
            var p = new Producto { Nombre = "Test", Precio = 100M };
            // Act
            p.Precio = 200M;
            //Assert
            Assert.Equal(200M, p.Precio);
        }
    }
}