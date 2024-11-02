using App.BusinessLogic.Interfaces;
using App.DataAccess.Interfaces;
using App.DataAccess.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Services
{
    public class JewelryServices:IJewelriesServices
    {
        List<Jewelry> jewelries = new List<Jewelry>();

        private Ijewelries _jewelry;

        public JewelryServices(Ijewelries jewelries)
        {
            _jewelry = jewelries;
        }
        public List<Jewelry> GetAllJewelries()
        {
            return _jewelry.GetAllJewelries();
        }

        public Jewelry GetJewelry(string name)
        {
            
            return _jewelry.GetJewelry(name);
        }

    }
}
