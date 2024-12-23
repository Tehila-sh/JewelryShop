using App.DataAccess.Entities;
using App.DTO;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Profiles
{
    public class OrderProfile : Profile
    {
        public OrderProfile()
        {
            CreateMap<Order, OrderDTO>().ReverseMap();
            CreateMap<CreateOrderDto, Order>().ReverseMap();

        }

    }
}
