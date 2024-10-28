using App.DataAccess;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace App.Presentation.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrderController : ControllerBase
    {

        List<Order> orders = new List<Order>();

        // Get api/order
        [HttpGet]
        public List<Order> GetAllOrders()
        {
            return orders;
        }

        // Post api/order/
        [HttpPost]
        public void CreateOrder([FromBody] Order order)
        {
            orders.Add(order);
        }


        //Delete api/order
        [HttpDelete]
        public void DeleteOrder(int id)
        {
            Order DeleteOrder = orders.SingleOrDefault(o => o.id == id);

            orders.Remove(DeleteOrder);
        }
    }
}
