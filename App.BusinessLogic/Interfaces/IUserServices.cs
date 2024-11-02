using App.DataAccess.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Interfaces
{
    public interface IUserServices
    {
        public User GetUserById(string id);

       public void UpdateUser(string id,  User user);
        public void CreateUser(User user);

    }
}
