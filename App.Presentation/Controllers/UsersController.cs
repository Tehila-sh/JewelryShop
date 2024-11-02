using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using App.BusinessLogic.Interfaces;
using App.DataAccess.Repository;

namespace App.Presentation.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        List<User> users = new List<User>();
        private IUserServices _userservices;
        public UsersController (IUserServices userServices)
        {
            _userservices = userServices;
        }

        //Get api/users/1

        [HttpGet("{id}")]
        public User GetUserById(string id)
        {
            return _userservices.GetUserById(id);
        }

        // Put api/users/1
        [HttpPut("{id}")]
        public void UpdateUser(string id, [FromBody] User user)
        {
           _userservices.UpdateUser(id, user);
        }

        // Post api/users/
        [HttpPost]
        public void CreateUser([FromBody] User user)
        {
            _userservices.CreateUser(user);
        }
        
    }
}
