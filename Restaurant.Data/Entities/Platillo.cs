using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Restaurant.Data.Entities
{
    public class Platillo
    {
        public Guid Id { get; set; }
        public string Nombre { get; set; }
        public int Tipo { get; set; }
        public string Ingredientes { get; set; }
        public int Peso { get; set; }
        public int Calorias { get; set; }
        public decimal Precio { get; set; }
    }
}
