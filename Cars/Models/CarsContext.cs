﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Cars.Models
{
    public class CarsContext: DbContext
    {
        public CarsContext(): base("CarsConnection")
        {
            
        }

        
        public DbSet<Car> Cars { get; set; }
        public DbSet<Seller> Sellers { get; set; }
    }
}