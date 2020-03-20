using System;
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

        public DbSet<Make> Makes { get; set; }
        public DbSet<Car> Cars { get; set; }
        public DbSet<Transmission> Transmissions { get; set; }
        public DbSet<State> States  { get; set; }
        public DbSet<Color> Colors { get; set; }
        public DbSet<NumberOfDoors> NumberOfDoors { get; set; }
        public DbSet<BodyStyle> BodyStyles { get; set; }
        public DbSet<EngineCylinder> EngineCylinders { get; set; }
        public DbSet<DriveType> DriveTypes { get; set; }
        public DbSet<FuelType> FuelTypes { get; set; }
        public DbSet<Style> Styles { get; set; }
    }
}