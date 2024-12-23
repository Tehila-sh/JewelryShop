using App.DataAccess.DataContext;
using App.DataAccess.Entities;
using App.DataAccess.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.DataAccess.Repository
{
    public class JewelryRepository : Ijewelries
    {

        private JewelryContext dbContext;
        public JewelryRepository(JewelryContext JewelryContext)
        {
            dbContext = JewelryContext;
        }

        public List<Jewelry> GetAllJewelries()
        {

            return dbContext.Jewelries.ToList();

        }

        public Jewelry GetJewelry(string name)
        {
            Jewelry jew = dbContext.Jewelries.SingleOrDefault(j => j.Name == name);
            return jew;
        }

    }
}
