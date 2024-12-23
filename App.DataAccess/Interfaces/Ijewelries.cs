using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App.DataAccess.Entities;
using App.DataAccess.Repository;

namespace App.DataAccess.Interfaces
{
    public interface Ijewelries
    {
        public List<Jewelry> GetAllJewelries();
        public Jewelry GetJewelry(string name);
    }
}
