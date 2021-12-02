using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Restaurant.Data.Entities
{
    public class Platillo
    {
        [Required]
        public Guid Id { get; set; }
        [Required]
        public string Nombre { get; set; }
        [Required]
        [Range(1, 10)]
        public int Tipo { get; set; }
        [Required]
        [StringLength(256)]
        public string Ingredientes { get; set; }
        [Required]
        [Range(1, int.MaxValue)]
        public int Peso { get; set; }
        [Required]
        [Range(1, int.MaxValue)]
        public int Calorias { get; set; }
        [Required]
        [Range(1, 1000)]
        public decimal Precio { get; set; }
    }
}
