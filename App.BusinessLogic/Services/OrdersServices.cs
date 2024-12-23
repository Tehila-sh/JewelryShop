using App.BusinessLogic.Interfaces;
using App.DataAccess.Entities;
using App.DataAccess.Interfaces;
using App.DataAccess.Repository;
using App.DTO;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Services
{

    public class OrderServices :IOrdersServices
    {
        private Iorders _orders;
        private IMapper _mapper;

        public OrderServices(Iorders orders , IMapper mapper)
        {
            _orders = orders;
            _mapper = mapper;
        }
        public List<OrderDTO> GetAllOrders()
        {
            List<Order> orderList = _orders.GetAllOrders();
            return _mapper.Map<List<OrderDTO>>(orderList);
        }

        public List<OrderDTO> getUserOrders(int id)
        {
            List<Order> orderList = _orders.getUserOrders(id);
            return _mapper.Map<List<OrderDTO>>(orderList);
        }

        public OrderDTO CreateOrder(CreateOrderDto order)
        {
           
            return _mapper.Map<OrderDTO>(_orders.CreateOrder(_mapper.Map<Order>(order)));
        }
       
        public void DeleteOrder(int id)
        {
            _orders.DeleteOrder(id);
        }
    }
}

