using Microsoft.AspNetCore.Mvc;
using OrderManagementSystem.Services;
using System.Runtime.InteropServices;

namespace OrderManagementSystem.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ProductsController : ControllerBase
    {
        private readonly ProductService _productService;

        public ProductsController(ProductService productService)
        {
            _productService = productService;
        }

        // Implement actions here.
    }
}
