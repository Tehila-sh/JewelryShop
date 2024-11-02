using App.DataAccess.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.DataAccess.Repository
{
    public class Order : Iorders
    {
        List<Order> orders = new List<Order>();
        public List<Order> GetAllOrders()
        {
            return orders;
        }

        public void CreateOrder(Order order)
        {
            orders.Add(order);
        }

        public void DeleteOrder(int id)
        {
            throw new NotImplementedException();
        }

        //public void DeleteOrder(int id)
        //{
        //    Order DeleteOrder = orders.SingleOrDefault(o => o.id == id);

        //    orders.Remove(DeleteOrder);
        //}
    }
}

