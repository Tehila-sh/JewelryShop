using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using App.DataAccess;

namespace App.Presentation.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {

        List<User> users = new List<User>();



        // Get api/users/1
        [HttpGet("{id}")]
        public User GetUserById(string id)
        {
          User user = users.SingleOrDefault(u=>u.id==id);
            return user;
        }


        // Put api/users/1
        [HttpPut("{id}")]
        public void UpdateUser(string id, [FromBody] User user)
        {
           User updateUser= users.SingleOrDefault(u => u.id == id);
            updateUser=user;
        }

        // Post api/users/
        [HttpPost]
        public void CreateUser([FromBody] User user)
        {
            users.Add(user);
        }

    }
}
