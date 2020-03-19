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
        public int MakeId { get; set; } //   Honda

        [Required]
        public string Name { get; set; } //  Accord

        [Required]
        public int Year { get; set; }

        [Required]
        public int StyleId { get; set; } // standard, luxe

        [Required]
        public int BodystyleId { get; set; } // sedan

        [Required]
        public int TransmissionId { get; set; }

        [Required]
        public int Mileage { get; set; } // user can write it, only this field

        [Required]
        public int ExteriorColorId { get; set; }

        [Required]
        public int InteriorColorId { get; set; }

        [Required] 
        public decimal Price { get; set; }

        
        public string[] CarImage { get; set; }

        public string Description { get; set; }

       

        public int? NumberOfDoors { get; set; }

        public int? EngineCylinder { get; set; }

        public int? DriveType { get; set; }

        public int? FuelType { get; set; }

        public int? ComfortFeatures { get; set; }

        public int? SeatsFeatures { get; set; }

        public int? SafetyFeatures { get; set; }

        public int? WindowsFeatures { get; set; }

        public int? EntertainmentFeatures { get; set; }

        public int? OtherFeatures { get; set; }
    }
}