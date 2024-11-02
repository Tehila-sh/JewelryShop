using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App.DataAccess.Repository;

namespace App.DataAccess.Interfaces
{
    public interface Iusers
    {
        public User GetUserById(string id);

        public void UpdateUser(string id,  User user);
        public void CreateUser( User user);
     

    }
}
