using App.BusinessLogic.Interfaces;
using App.DataAccess.Interfaces;
using App.DataAccess.Repository;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
// Update with the actual namespace of the User class


namespace App.BusinessLogic.Services
{
    public class UserServices: IUserServices
    {
        private Iusers _iuser;

        public UserServices (Iusers iusers)
        {
            _iuser = iusers;
        }

        public User GetUserById(string id)
        {
            return _iuser.GetUserById(id);
        }

        public void UpdateUser(string id, User user)
        {
             _iuser.UpdateUser(id, user);
        }
        public void CreateUser( User user)
        {
           
                _iuser.CreateUser(user);
        }

    }
}
