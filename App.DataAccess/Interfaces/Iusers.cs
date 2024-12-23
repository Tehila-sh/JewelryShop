using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App.DataAccess.Entities;
using App.DataAccess.Repository;

namespace App.DataAccess.Interfaces
{
    public interface Iusers
    {
        public User GetUserById(int id);

        public User UpdateUser(int id,  User user);
        public User CreateUser( User user);
        public User GetUserByDetails(string email, string password);



    }
}
