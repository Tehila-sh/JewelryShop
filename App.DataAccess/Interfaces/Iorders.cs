using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App.DataAccess.Entities;
using App.DataAccess.Repository;

namespace App.DataAccess.Interfaces
{
    public interface Iorders
    {
        public List<Order> GetAllOrders();
        public Order CreateOrder( Order order);
        public void DeleteOrder(int id);

        public List<Order> getUserOrders(int id);
    }
}
