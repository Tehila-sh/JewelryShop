using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.DTO
{
    public class JewelryDTO
    {
        public int Id { get; set; }

        public string? Type { get; set; }

        public string? Name { get; set; }

        public string? Degem { get; set; }

        public string? Color { get; set; }

        public decimal? Price { get; set; }

        public string? Img { get; set; }
    }
}
