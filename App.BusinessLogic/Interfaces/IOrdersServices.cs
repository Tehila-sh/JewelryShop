using App.DataAccess.Entities;
using App.DataAccess.Repository;
using App.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Interfaces
{
    public interface IOrdersServices

    {
        public List<OrderDTO> GetAllOrders();
        public OrderDTO CreateOrder( CreateOrderDto order);
        public void DeleteOrder(int id);
        public List<OrderDTO> getUserOrders(int id);
    }
}
