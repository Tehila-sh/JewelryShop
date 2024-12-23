using App.DataAccess.DataContext;
using App.DataAccess.Entities;
using App.DataAccess.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.DataAccess.Repository
{
    public class OrderRepository : Iorders
    {

        private JewelryContext dbContext;
        public OrderRepository(JewelryContext JewelryContext)
        {
            dbContext = JewelryContext;
        }

        public List<Order> getUserOrders(int id)
        {

            return dbContext.Orders.Where(order => order.UserId==id).ToList();
        }
       

        public List<Order> GetAllOrders()
        {
            return  dbContext.Orders.ToList();  
        }

        public Order CreateOrder(Order order)
        {
            dbContext.Orders.Add(order);
            dbContext.SaveChanges();
            return order;
        }


        public void DeleteOrder(int id)
        {
            Order DeleteOrder = dbContext.Orders.SingleOrDefault(o => o.OrderId == id);

            dbContext.Orders.Remove(DeleteOrder);
            dbContext.SaveChanges();
        }
    }
}

