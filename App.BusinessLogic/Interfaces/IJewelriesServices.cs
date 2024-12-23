using App.DataAccess.Repository;
using App.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Interfaces
{
    public interface IJewelriesServices
    {
        public List<JewelryDTO> GetAllJewelries();
        public JewelryDTO GetJewelry(string name);
    }
}
