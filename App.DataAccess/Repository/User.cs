using App.DataAccess.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.DataAccess.Repository
{
    public class User : Iusers

    {

        private List<User> users = new List<User>()
                   {
     
          };
        //public User GetUserById(string id)
        //{
        //    User user = users.SingleOrDefault(u => u.id == id);
        //    return user;
        //}

        //public void UpdateUser(string id, User user)
        //{
        //    User updateUser = users.SingleOrDefault(u => u.id == id);
        //    updateUser = user;
        //}


        public void CreateUser(User user)
        {
            users.Add(user);
        }

        public User GetUserById(string id)
        {
            throw new NotImplementedException();
        }

        public void UpdateUser(string id, User user)
        {
            throw new NotImplementedException();
        }
    }
}
