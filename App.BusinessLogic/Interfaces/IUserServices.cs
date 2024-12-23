using App.DataAccess.Repository;
using App.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Interfaces
{
    public interface IUserServices
    {
        public UserDTO GetUserById(int id);

       public UserDTO UpdateUser(int id,  CreateUserDto user);

        public UserDTO CreateUser(CreateUserDto user);
        public UserDTO GetUserByDetails(string email, string password);

    }
}
