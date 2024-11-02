using App.DataAccess.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BusinessLogic.Interfaces
{
    public interface IJewelriesServices
    {
        public List<Jewelry> GetAllJewelries();
        public Jewelry GetJewelry(string name);
    }
}
