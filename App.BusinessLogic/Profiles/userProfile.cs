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
    public class userProfile : Profile
    {

        public userProfile()
        {
            CreateMap<User,UserDTO>().ReverseMap();
            CreateMap<CreateUserDto, User>().ReverseMap();
        }
    }
}
