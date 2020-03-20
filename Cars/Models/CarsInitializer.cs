using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Cars.Models
{
    public class CarsInitializer : DropCreateDatabaseIfModelChanges<CarsContext>
    {
        protected override void Seed(CarsContext context)
        {
        }
    }
}