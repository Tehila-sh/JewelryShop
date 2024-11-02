using App.BusinessLogic.Interfaces;
using App.DataAccess.Interfaces;
using App.DataAccess.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace App.Presentation.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrderController : ControllerBase
    {
       
            private IOrdersServices _ordersservices;

            public OrderController(IOrdersServices order)
            {
                _ordersservices = order;
            }
            List<Order> orders = new List<Order>();

        // Get api/order
        [HttpGet]
        public List<Order> GetAllOrders()
        {
            return _ordersservices.GetAllOrders();
        }
        // Post api/order/
        [HttpPost]
        public void CreateOrder([FromBody] Order order)
        {
            _ordersservices.CreateOrder(order);
        }
        //Delete api/order
        [HttpDelete]
        public void DeleteOrder(int id)
        {

            _ordersservices.DeleteOrder(id );
        }
    }
}
