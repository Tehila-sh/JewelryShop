using App.DataAccess.Entities;
using App.DataAccess.Repository;
using App.DTO;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Profiles
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Jewelry, JewelryDTO>().ReverseMap();
           
        }
    }
}
