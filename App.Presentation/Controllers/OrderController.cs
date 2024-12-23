using App.BusinessLogic.Interfaces;
using App.DataAccess.Interfaces;
using App.DataAccess.Repository;
using App.DTO;
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
            

        // Get api/order
        [HttpGet]
        public List<OrderDTO> GetAllOrders()
        {
            return _ordersservices.GetAllOrders();
        }


        // Get api/order/id
        [HttpGet("{id}")]
        public List<OrderDTO> getUserOrders(int id)
        {

          return  _ordersservices.getUserOrders(id);
        }

        // Post api/order/
        [HttpPost ]
        public void CreateOrder([FromBody] CreateOrderDto order)
        {
            _ordersservices.CreateOrder(order);
        }
        //Delete api/order
        [HttpDelete("{id}")]
        public void DeleteOrder(int id)
        {

            _ordersservices.DeleteOrder(id );
        }
    }
}
