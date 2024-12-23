using App.BusinessLogic.Interfaces;
using App.DataAccess.Repository;
using App.DTO;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace App.Presentation.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class JewelriesController : ControllerBase
    {
        private IJewelriesServices _jewelriesservices;

        public JewelriesController(IJewelriesServices jewelries)
        {
            _jewelriesservices = jewelries;
        }

        [HttpGet]
        public List<JewelryDTO> GetAllJewelries()
        {
            return _jewelriesservices.GetAllJewelries();
        }

        [HttpGet("{name}")]
        public JewelryDTO GetJewelry(string name)
        {

            return _jewelriesservices.GetJewelry(name);
        }


    }
}
