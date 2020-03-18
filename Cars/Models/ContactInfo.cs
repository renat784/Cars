using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Cars.Models
{
    public class ContactInfo
    {
        [ScaffoldColumn(false)]
        public int ContactInfoId { get; set; }

        [Required]
        public string FirstName { get; set; }

        [Required]
        public string LastName { get; set; }

        [Required]
        public string EmailAddress { get; set; }

        [Required]
        public string PhoneNumber { get; set; }

        [Required]
        public PhoneType PhoneType { get; set; }

        [Required]
        public string ZIP { get; set; }

    }
}