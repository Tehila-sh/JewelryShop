using App.DataAccess;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace App.Presentation.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class JewelrysController : ControllerBase
    {
        List<Jewelry> jewelries = new List<Jewelry>();

        [HttpGet]
        public List<Jewelry> GetAllJewelries()
        {
            return jewelries;
        }

        [HttpGet("{id}")]
        public Jewelry GetJewelry(string name)
        {
            Jewelry jewelry = jewelries.SingleOrDefault(j => j.name == name);
            return jewelry;
        }


    }
}
