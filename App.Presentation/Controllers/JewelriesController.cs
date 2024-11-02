using App.BusinessLogic.Interfaces;
using App.DataAccess.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace App.Presentation.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class JewelriesController : ControllerBase
    {
        List<Jewelry> jewelries = new List<Jewelry>();
        private IJewelriesServices _jewelriesservices;

        public JewelriesController(IJewelriesServices jewelries)
        {
            _jewelriesservices = jewelries;
        }

        [HttpGet]
        public List<Jewelry> GetAllJewelries()
        {
            return _jewelriesservices.GetAllJewelries();
        }

        [HttpGet("{id}")]
        public Jewelry GetJewelry(string name)
        {
          
            return _jewelriesservices.GetJewelry(name);
        }


    }
}
