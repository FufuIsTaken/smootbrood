using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace smoothboard2
{
    public class Product
    {
        public int Id { get; set; }
        public string Afbeelding { get; set; }
        public string Naam { get; set; }
        public decimal Prijs { get; set; }
        public string Beschrijving { get; set; }
        public int Bekeken { get; set; }
    }
}