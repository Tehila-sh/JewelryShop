using App.DataAccess.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.DataAccess.Repository
{
    public class Jewelry : Ijewelries
    {
        List<Jewelry> jewelries = new List<Jewelry>();
        public List<Jewelry> GetAllJewelries()
        {
            return jewelries;
        }

        public Jewelry GetJewelry(string name)
        {
            throw new NotImplementedException();
        }


        // public Jewelry GetJewelry(string name)
        // {
        //    Jewelry jewelry = jewelries.SingleOrDefault(j => j.name == name);
        //    return jewelry;
        // }

    }
}
