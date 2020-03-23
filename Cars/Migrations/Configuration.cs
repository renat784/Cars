using System.Collections.Generic;
using Cars.Models;

namespace Cars.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Cars.Models.CarsContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(Cars.Models.CarsContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data.
            var styleList = new List<string>
            {
                "EX",
                "EX-L",
                "LX",
                "Touring"
            };

            var fuelTypeList = new List<string>
            {
                "Compressed Natural Gas",
                "Diesel",
                "E85 Flex Fuel",
                "Electric",
                "Gasoline",
                "Hybrid"
            };

            var driveTypeList = new List<string>
            {
               "4x2/2 wheel drive",
               "4x4/4 wheel drive",
               "AWD",
               "FWD",
               "RWD"
            };

            var engineCylinderList = new List<string>
            {
               "1-cylinder",
               "2-cylinder",
               "3-cylinder",
               "4-cylinder",
               "5-cylinder",
               "6-cylinder",
               "8-cylinder",
               "10-cylinder",
               "12-cylinder"
            };

            var bodyStyleList = new List<string>
            {
               "Cargo Van",
               "Convertible",
               "Coupe",
               "Crew Cub Pickup",
               "Extended Cub Pickup",
               "Hatchback",
               "Minivan",
               "Passenger Van",
               "Regular Cub Pickup",
                "Sedan",
                "SUV",
                "Wagon"
            };

            var numberOfDoorsList = new List<string>
            {
                 "1 door",
                 "2 door",
                 "3 door",
                 "4 door",
                 "5 door",
                 "6 door"
            };

            var colorsList = new List<string>
            {
               "Beige",
               "Black",
               "Blue",
               "Brown",
               "Gold",
               "Gray",
               "Green",
               "Orange",
               "Pink",
                "Purple",
                "Red",
                "Silver",
                "White",
                "Yellow"
            };

            var statesList = new List<string>
            {
                "Alabama",
                "Alaska",
                "Arizona",
                "Arkansas",
                "California",
                "Colorado",
                "Connecticut",
                "Delaware",
                "Florida",
                 "Georgia",
                 "Hawaii",
                 "Idaho",
                 "Illinois",
                 "Indiana",
                 "Iowa",
                 "Kansas",
                 "Kentucky",
                 "Louisiana",
                 "Maine",
                 "Maryland",
                 "Massachusetts",
                 "Michigan",
                 "Minnesota",
                "Mississippi",
                "Missouri",
                "Montana",
                "Nebraska",
                "Nevada",
                "New Hampshire",
                "New Jersey",
                "New Mexico",
                "New York",
                "North Carolina",
                "North Dakota",
                "Ohio",
                "Oklahoma",
                "Oregon",
                "Pennsylvania",
                "Rhode Island",
                "South Carolina",
                "South Dakota",
                "Tennessee",
                "Texas",
                "Utah",
                "Vermont",
                "Virginia",
                "Washington",
                "West Virginia",
                "Wisconsin",
                "Wyoming"

            };

            var transmissionList = new List<string>
            {
                "Automanual",
                "Automatic",
                "CVT",
                "Manual"
            };

            var makeList = new List<string>
            {
                "Toyota",
                "Honda",
                "Lexus",
                "Ford",
                "Kia"
            };

            List<string> toyota = new List<string>
        {
            "Corolla",
            "Camry",
            "Land Cruser",
            "Highlander",
            "RAV4",
            "CH-6",
            "FJ Cruser",
            "Hilux",
            "Prius",
            "Yaris"
        };

            List<string> honda = new List<string>
        {
            "Civic",
            "Accord",
            "Pilot",
            "CR-V",
            "Odyssei",
            "Passport",
            "Clarity",
            "Acty"
        };

            List<string> lexus = new List<string>
        {
            "IS",
            "HS",
            "UX",
            "LC",
            "RC",
            "NX",
            "RX"
        };

            List<string> ford = new List<string>
        {
            "Fiesta",
            "Focus",
            "Mondeo",
            "Mustang",
            "F-150",
            "Puma",
            "Edge",
            "Explorer",
            "Expedition"
        };

            List<string> kia = new List<string>
        {
            "Rio",
            "Stinger",
            "Forte",
            "Seed",
            "Optima",
            "Picanto",
            "Cadenza",
            "Sportage"
        };

            // adding to context
           

            context.Cars.AddOrUpdate(new CarsGenerator().Generate(
                styleList,
                bodyStyleList,
                colorsList,
                transmissionList,
                makeList,
                toyota,
                honda,
                lexus,
                ford,
                kia,
                5000).ToArray());

            context.SaveChanges();
        }
    }
}
