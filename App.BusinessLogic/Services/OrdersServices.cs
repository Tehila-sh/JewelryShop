using App.BusinessLogic.Interfaces;
using App.DataAccess.Interfaces;
using App.DataAccess.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Services
{

    public class OrderServices :IOrdersServices
    {
        List<Order> orders = new List<Order>();
        private Iorders _orders;

        public OrderServices(Iorders orders)
        {
            _orders = orders;
        }
        public List<Order> GetAllOrders()
        {
            return _orders.GetAllOrders();
        }
     
        public void CreateOrder( Order order)
        {
            _orders.CreateOrder (order);
        }
       
        public void DeleteOrder(int id)
        {
            _orders.DeleteOrder(id);
        }
    }
}

