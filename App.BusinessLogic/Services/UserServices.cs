using App.BusinessLogic.Interfaces;
using App.DataAccess.Entities;
using App.DataAccess.Interfaces;
using App.DataAccess.Repository;
using App.DTO;
using AutoMapper;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
// Update with the actual namespace of the User class


namespace App.BusinessLogic.Services
{
    public class UserServices : IUserServices
    {
        private Iusers _iuser;
        private IMapper _mapper;
        public UserServices (Iusers iusers, IMapper mapper )
        {
            _iuser = iusers;
            _mapper = mapper; 
        }

        public UserDTO GetUserById(int id)
        {
            User u = _iuser.GetUserById(id);
            return _mapper.Map<UserDTO>(u);   
        }

        public UserDTO UpdateUser(int id,CreateUserDto user)
        {
            return _mapper.Map<UserDTO>(_iuser.UpdateUser(id, _mapper.Map<User>(user)));
           
              
        }

        public UserDTO GetUserByDetails(string email, string password)
        {
            // Pass the email and password to the data access layer to find the user.
            var user = _iuser.GetUserByDetails(email, password);

            if (user == null)
                throw new UnauthorizedAccessException("Invalid email or password.");

            return _mapper.Map< UserDTO > (user);
        }

        public UserDTO CreateUser( CreateUserDto user)
        {
            return _mapper.Map<UserDTO>(_iuser.CreateUser(_mapper.Map<User>(user)));
            
        }

       
    }
}
