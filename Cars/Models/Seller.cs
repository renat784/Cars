using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Cars.Models
{
    public class Seller
    {
        [ScaffoldColumn(false)]
        public int SellerId { get; set; }

        [Required]
        public string FirstName { get; set; }

        [Required]
        public string LastName { get; set; }

        [Required]
        public string EmailAdress { get; set; }

        [Required]
        public string PhoneNumber { get; set; }

        [Required]
        public string DayTime { get; set; }

        [Required]
        public string ZIP { get; set; }
        public virtual IEnumerable<Car> Cars { get; set; }
    }
}