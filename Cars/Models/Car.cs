using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Cars.Models
{
    public class Car
    {
        [ScaffoldColumn(false)]
        public int CarId { get; set; }

        [Required]
        public string Make { get; set; } 

        [Required]
        public string Model { get; set; } 

        [Required]
        public int Year { get; set; }

        [Required]
        public string Style { get; set; }

        [Required]
        public string Bodystyle { get; set; } 
        [Required]
        public string Transmission { get; set; }

        [Required]
        public int Mileage { get; set; } 

        [Required]
        public string ExteriorColor { get; set; }

        [Required]
        public string InteriorColor { get; set; }

        [Required] 
        public int Price { get; set; }

        public int SellerId { get; set; }
        
        //public string[] CarImage { get; set; }

        //public string Description { get; set; }

       

        //public int? NumberOfDoors { get; set; }

        //public int? EngineCylinder { get; set; }

        //public int? DriveType { get; set; }

        //public int? FuelType { get; set; }

        //public int? ComfortFeatures { get; set; }

        //public int? SeatsFeatures { get; set; }

        //public int? SafetyFeatures { get; set; }

        //public int? WindowsFeatures { get; set; }

        //public int? EntertainmentFeatures { get; set; }

        //public int? OtherFeatures { get; set; }
    }
}