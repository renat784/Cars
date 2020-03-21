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
            var styleList = new List<Style>
            {
                new Style{StyleId = 1, Name = "EX"},
                new Style{StyleId = 2, Name = "EX-L"},
                new Style{StyleId = 3, Name = "LX"},
                new Style{StyleId = 4, Name = "Touring"}
            };

            var fuelTypeList = new List<FuelType>
            {
                new FuelType{FuelTypeId = 1, Name = "Compressed Natural Gas"},
                new FuelType{FuelTypeId = 2, Name = "Diesel"},
                new FuelType{FuelTypeId = 3, Name = "E85 Flex Fuel"},
                new FuelType{FuelTypeId = 4, Name = "Electric"},
                new FuelType{FuelTypeId = 5, Name = "Gasoline"},
                new FuelType{FuelTypeId = 6, Name = "Hybrid"}
            };

            var driveTypeList = new List<DriveType>
            {
                new DriveType{DriveTypeId = 1, Name = "4x2/2 wheel drive"},
                new DriveType{DriveTypeId = 2, Name = "4x4/4 wheel drive"},
                new DriveType{DriveTypeId = 3, Name = "AWD"},
                new DriveType{DriveTypeId = 4, Name = "FWD"},
                new DriveType{DriveTypeId = 5, Name = "RWD"}
            };

            var engineCylinderList = new List<EngineCylinder>
            {
                new EngineCylinder{EngineCylinderId = 1, Name = "1-cylinder"},
                new EngineCylinder{EngineCylinderId = 2, Name = "2-cylinder"},
                new EngineCylinder{EngineCylinderId = 3, Name = "3-cylinder"},
                new EngineCylinder{EngineCylinderId = 4, Name = "4-cylinder"},
                new EngineCylinder{EngineCylinderId = 5, Name = "5-cylinder"},
                new EngineCylinder{EngineCylinderId = 6, Name = "6-cylinder"},
                new EngineCylinder{EngineCylinderId = 7, Name = "8-cylinder"},
                new EngineCylinder{EngineCylinderId = 8, Name = "10-cylinder"},
                new EngineCylinder{EngineCylinderId = 9, Name = "12-cylinder"}
            };

            var bodyStyleList = new List<BodyStyle>
            {
                new BodyStyle{BodyStyleId = 1, Name = "Cargo Van"},
                new BodyStyle{BodyStyleId = 2, Name = "Convertible"},
                new BodyStyle{BodyStyleId = 3, Name = "Coupe"},
                new BodyStyle{BodyStyleId = 4, Name = "Crew Cub Pickup"},
                new BodyStyle{BodyStyleId = 5, Name = "Extended Cub Pickup"},
                new BodyStyle{BodyStyleId = 6, Name = "Hatchback"},
                new BodyStyle{BodyStyleId = 7, Name = "Minivan"},
                new BodyStyle{BodyStyleId = 8, Name = "Passenger Van"},
                new BodyStyle{BodyStyleId = 9, Name = "Regular Cub Pickup"},
                new BodyStyle{BodyStyleId = 10, Name = "Sedan"},
                new BodyStyle{BodyStyleId = 11, Name = "SUV"},
                new BodyStyle{BodyStyleId = 12, Name = "Wagon"}
            };

            var numberOfDoorsList = new List<NumberOfDoors>
            {
                new NumberOfDoors{NumberOfDoorsId = 1, Name = "1 door"},
                new NumberOfDoors{NumberOfDoorsId = 2, Name = "2 door"},
                new NumberOfDoors{NumberOfDoorsId = 3, Name = "3 door"},
                new NumberOfDoors{NumberOfDoorsId = 4, Name = "4 door"},
                new NumberOfDoors{NumberOfDoorsId = 5, Name = "5 door"},
                new NumberOfDoors{NumberOfDoorsId = 6, Name = "6 door"}
            };

            var colorsList = new List<Color>
            {
                new Color{ColorId = 1, Name = "Beige"},
                new Color{ColorId = 2, Name = "Black"},
                new Color{ColorId = 3, Name = "Blue"},
                new Color{ColorId = 4, Name = "Brown"},
                new Color{ColorId = 5, Name = "Gold"},
                new Color{ColorId = 6, Name = "Gray"},
                new Color{ColorId = 7, Name = "Green"},
                new Color{ColorId = 8, Name = "Orange"},
                new Color{ColorId = 9, Name = "Pink"},
                new Color{ColorId = 10, Name = "Purple"},
                new Color{ColorId = 11, Name = "Red"},
                new Color{ColorId = 12, Name = "Silver"},
                new Color{ColorId = 13, Name = "White"},
                new Color{ColorId = 14, Name = "Yellow"}
            };

            var statesList = new List<State>
            {
                new State{StateId = 1, Name = "Alabama"},
                new State{StateId = 2, Name = "Alaska"},
                new State{StateId = 3, Name = "Arizona"},
                new State{StateId = 4, Name = "Arkansas"},
                new State{StateId = 5, Name = "California"},
                new State{StateId = 6, Name = "Colorado"},
                new State{StateId = 7, Name = "Connecticut"},
                new State{StateId = 8, Name = "Delaware"},
                new State{StateId = 9, Name = "Florida"},
                new State{StateId = 10, Name = "Georgia"},
                new State{StateId = 11, Name = "Hawaii"},
                new State{StateId = 12, Name = "Idaho"},
                new State{StateId = 13, Name = "Illinois"},
                new State{StateId = 14, Name = "Indiana"},
                new State{StateId = 15, Name = "Iowa"},
                new State{StateId = 16, Name = "Kansas"},
                new State{StateId = 17, Name = "Kentucky"},
                new State{StateId = 18, Name = "Louisiana"},
                new State{StateId = 19, Name = "Maine"},
                new State{StateId = 20, Name = "Maryland"},
                new State{StateId = 21, Name = "Massachusetts"},
                new State{StateId = 22, Name = "Michigan"},
                new State{StateId = 23, Name = "Minnesota"},
                new State{StateId = 24, Name = "Mississippi"},
                new State{StateId = 25, Name = "Missouri"},
                new State{StateId = 26, Name = "Montana"},
                new State{StateId = 27, Name = "Nebraska"},
                new State{StateId = 28, Name = "Nevada"},
                new State{StateId = 29, Name = "New Hampshire"},
                new State{StateId = 30, Name = "New Jersey"},
                new State{StateId = 31, Name = "New Mexico"},
                new State{StateId = 32, Name = "New York"},
                new State{StateId = 33, Name = "North Carolina"},
                new State{StateId = 34, Name = "North Dakota"},
                new State{StateId = 35, Name = "Ohio"},
                new State{StateId = 36, Name = "Oklahoma"},
                new State{StateId = 37, Name = "Oregon"},
                new State{StateId = 38, Name = "Pennsylvania"},
                new State{StateId = 39, Name = "Rhode Island"},
                new State{StateId = 40, Name = "South Carolina"},
                new State{StateId = 41, Name = "South Dakota"},
                new State{StateId = 42, Name = "Tennessee"},
                new State{StateId = 43, Name = "Texas"},
                new State{StateId = 44, Name = "Utah"},
                new State{StateId = 45, Name = "Vermont"},
                new State{StateId = 46, Name = "Virginia"},
                new State{StateId = 47, Name = "Washington"},
                new State{StateId = 48, Name = "West Virginia"},
                new State{StateId = 49, Name = "Wisconsin"},
                new State{StateId = 50, Name = "Wyoming"}

            };

            var transmissionList = new List<Transmission>
            {
                new Transmission{TransmissionId = 1, Name = "Automanual"},
                new Transmission{TransmissionId = 2, Name = "Automatic"},
                new Transmission{TransmissionId = 3, Name = "CVT"},
                new Transmission{TransmissionId = 4, Name = "Manual"}
            };


            //  Makes and cars list
            var makeList = new List<Make>
            {
                new Make{MakeId = 1, Name = "Toyota"},
                new Make{MakeId = 2, Name = "Honda"},
                new Make{MakeId = 3, Name = "Lexus"},
                new Make{MakeId = 4, Name = "Ford"},
                new Make{MakeId = 5, Name = "KIA"}
            };

            var carList = new List<Car>
            {
                // Toyota - 1
                new Car
                {
                    CarId = 1, MakeId = 1, Name = "Corolla",  Year = 2015, StyleId = 1, BodystyleId = 3,
                    TransmissionId = 2, Mileage = 15454, ExteriorColorId = 5, InteriorColorId = 3, Price = 8500
                },
                new Car
                {
                    CarId = 2, MakeId = 1, Name = "Camry",  Year = 2012, StyleId = 3, BodystyleId = 2,
                    TransmissionId = 2, Mileage = 552498, ExteriorColorId = 2, InteriorColorId = 1, Price = 4300
                },

                // Honda - 2
                new Car
                {
                    CarId = 3, MakeId = 2, Name = "Accord",  Year = 2011, StyleId = 1, BodystyleId = 2,
                    TransmissionId = 3, Mileage = 552498, ExteriorColorId = 2, InteriorColorId = 1, Price = 4900
                },
                new Car
                {
                    CarId = 4, MakeId = 2, Name = "Accord",  Year = 2019, StyleId = 2, BodystyleId = 3,
                    TransmissionId = 1, Mileage = 552498, ExteriorColorId = 2, InteriorColorId = 1, Price = 14300
                },

                // Lexus - 3
                new Car
                {
                    CarId = 5, MakeId = 3, Name = "ES",  Year = 2014, StyleId = 2, BodystyleId = 3,
                    TransmissionId = 1, Mileage = 48498, ExteriorColorId = 4, InteriorColorId = 1, Price = 17500
                },
                new Car
                {
                    CarId = 6, MakeId = 3, Name = "RX",  Year = 2018, StyleId = 2, BodystyleId = 3,
                    TransmissionId = 1, Mileage = 112498, ExteriorColorId = 2, InteriorColorId = 5, Price = 34300
                },
                // Ford  - 4 
                new Car
                {
                    CarId = 7, MakeId = 4, Name = "Focus",  Year = 2012, StyleId = 2, BodystyleId = 3,
                    TransmissionId = 1, Mileage = 56121, ExteriorColorId = 2, InteriorColorId = 1, Price = 11300
                },
                new Car
                {
                    CarId = 8, MakeId = 4, Name = "Mondeo",  Year = 2001, StyleId = 2, BodystyleId = 3,
                    TransmissionId = 4, Mileage = 199784, ExteriorColorId = 2, InteriorColorId = 1, Price = 2800
                },

                // KIA  - 5
                new Car
                {
                    CarId = 9, MakeId = 5, Name = "Rio",  Year = 2019, StyleId = 3, BodystyleId = 3,
                    TransmissionId = 1, Mileage = 4100, ExteriorColorId = 5, InteriorColorId = 4, Price = 15400
                },
                new Car
                {
                    CarId = 10, MakeId = 5, Name = "Rio 2",  Year = 2007, StyleId = 2, BodystyleId = 3,
                    TransmissionId = 1, Mileage = 785457, ExteriorColorId = 2, InteriorColorId = 1, Price = 1500
                }
            };

            // adding to context
            context.Styles.AddRange(styleList);
            context.FuelTypes.AddRange(fuelTypeList);
            context.DriveTypes.AddRange(driveTypeList);
            context.EngineCylinders.AddRange(engineCylinderList);
            context.BodyStyles.AddRange(bodyStyleList);
            context.NumberOfDoors.AddRange(numberOfDoorsList);
            context.Colors.AddRange(colorsList);
            context.States.AddRange(statesList);
            context.Transmissions.AddRange(transmissionList);
            context.Makes.AddRange(makeList);

            context.Cars.AddRange(new CarsGenerator().Generate(
                styleList.Count,
                bodyStyleList.Count,
                colorsList.Count,
                transmissionList.Count,
                makeList.Count, 
                1000));

            context.SaveChanges();
        }
    }
}
