using App.BusinessLogic.Interfaces;
using App.DataAccess.Entities;
using App.DataAccess.Interfaces;
using App.DataAccess.Repository;
using App.DTO;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Services
{
    public class JewelryServices : IJewelriesServices
    {

        private Ijewelries _jewelry;

        private IMapper _mapper;

        public JewelryServices(Ijewelries jewelries, IMapper mapper)
        {
            _jewelry = jewelries;
            _mapper = mapper;
        }
        public List<JewelryDTO> GetAllJewelries()
        {
            List<Jewelry> jewelries = _jewelry.GetAllJewelries();
            return _mapper.Map<List<JewelryDTO>>(jewelries);
        }

        public JewelryDTO GetJewelry(string name)
        {
            return _mapper.Map<JewelryDTO>(  _jewelry.GetJewelry(name));
        }

    }
}
