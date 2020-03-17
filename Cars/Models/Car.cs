using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cars.Models
{
    public class Car
    {
        public int CarId { get; set; }
        public string Model { get; set; } //  Accord
        public string Make { get; set; } // manufacturer,  Honda
        public string Image { get; set; }
        public int Condition { get; set; } // new or used
        public string Bodystyle { get; set; } // sedan
        public decimal Price { get; set; }
        public int Year { get; set; }
        public int Mileage { get; set; }
        public string ExteriorColor { get; set; }
        public string InteriorColor { get; set; }
        public string Transmission { get; set; }
        public string Drivetrain { get; set; }
        public int CylinderCount { get; set; }
        public string SellerType { get; set; }
        public DateTime ListingDate { get; set; }
        public int FuelType { get; set; }


        public string City { get; set; }

    }
}