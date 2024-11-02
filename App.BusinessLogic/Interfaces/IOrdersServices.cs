using App.DataAccess.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Interfaces
{
    public interface IOrdersServices

    {
        public List<Order> GetAllOrders();
        public void CreateOrder( Order order);
        public void DeleteOrder(int id);
    }
}
