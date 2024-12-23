using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using App.BusinessLogic.Interfaces;
using App.DataAccess.Repository;
using App.DTO;
using AutoMapper;

using App.BusinessLogic.Services;
using App.DataAccess.Entities;

namespace App.Presentation.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private IUserServices _userservices;
        private IMapper _mapper;
        public UsersController (IUserServices userServices,IMapper mapper)
        {
            _userservices = userServices;
            _mapper = mapper;
        }

        //Get api/users/1

        [HttpGet("{id}")]
        public UserDTO GetUserById(int id)
        {
            return _userservices.GetUserById(id);
        }
        //Get api/users/1
        [HttpGet("{email}/{password}")]
        public UserDTO GetUserByDetails( string email, string password)
        {
            return _userservices.GetUserByDetails(email, password);
        }

        // Put api/users/1
        [HttpPut("{id}")]
        public UserDTO UpdateUser(int id, [FromBody] CreateUserDto user)
        {
            
           return _userservices.UpdateUser(id, user);
        }

        // Post api/users/
        [HttpPost]
        public UserDTO CreateUser([FromBody] CreateUserDto user)

        {
           return _userservices.CreateUser(user);
            
        }
        
    }
}
