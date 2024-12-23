using App.DataAccess.DataContext;
using App.DataAccess.Entities;
using App.DataAccess.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.DataAccess.Repository
{
    public class UserRepository : Iusers

    {
        private JewelryContext dbContext;
        public UserRepository(JewelryContext JewelryContext)
        {
            dbContext = JewelryContext;
        }
        public User GetUserById(int id)
        {
            User user = dbContext.Users.SingleOrDefault(u => u.UserId == id);  
            return user;
        }

        public User GetUserByDetails(string email, string password)
        {
            return dbContext.Users.SingleOrDefault(u => u.Email == email && u.Password == password);
        }


        public User UpdateUser(int id, User user)
        {
            User updateUser = dbContext.Users.SingleOrDefault(u => u.UserId == id);
            if(UpdateUser != null) { 
            updateUser.Username = user.Username;
            updateUser.Password = user.Password;
            updateUser.Email = user.Email;

            dbContext.SaveChanges();
            } 
            return updateUser;
        }
        public User CreateUser(User user)
        {
            dbContext.Users.Add(user);
            dbContext.SaveChanges();
            return user;
        }

       
    }
}
