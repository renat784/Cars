using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Cars.Models;
using ConsoleApp1;
using Microsoft.Ajax.Utilities;

namespace Cars.Migrations
{
    public class CarsGenerator
    {
        public IEnumerable<Car> Generate(
            List<string> styles,
            List<string> bodystyle,
            List<string> colorlist,
            List<string> transmissiaonlist,
            List<string> makelist,
            List<string> toyota,
            List<string> honda,
            List<string> lexus,
            List<string> ford,
            List<string> kia,
            int TotalCountToGenerate = 20)
        {
            var list = new List<Car>();
            var caruselForMake = new Carusel(0, makelist.Count - 1, true);
            var caruselForToyota = new Carusel(0, toyota.Count - 1, true);
            var caruselForHonda = new Carusel(0, honda.Count - 1, true);
            var caruselForLexus = new Carusel(0, lexus.Count - 1, true);
            var caruselForFord = new Carusel(0, ford.Count - 1, true);
            var caruselForKia = new Carusel(0, kia.Count - 1, true);

            var caruselForYear = new Carusel(2000, 2020, true);
            var caruselForStyleId = new Carusel(0, styles.Count - 1, true);
            var caruselForBodystyleId = new Carusel(0, bodystyle.Count - 1, true);
            var caruselForTransmissionId = new Carusel(0, transmissiaonlist.Count - 1, true);
            var caruselForMillieage = new Carusel(50000, 100000, true);
            var caruselForColorId = new Carusel(0, colorlist.Count - 1, true);
            var caruselForPrice = new Carusel(5000, 25000, true);


            for (int i = 1; i <= TotalCountToGenerate; i++)
            {
                var make = makelist[caruselForMake.Next()];

                var name = "";

                switch (make)
                {
                    case "Toyota":
                        name = toyota[caruselForToyota.Next()];
                        break;
                    case "Honda":
                        name = honda[caruselForHonda.Next()];
                        break;
                    case "Lexus":
                        name = lexus[caruselForLexus.Next()];
                        break;
                    case "Ford":
                        name = ford[caruselForFord.Next()];
                        break;
                    case "Kia":
                        name = kia[caruselForKia.Next()];
                        break;
                }

                list.Add(new Car
                {
                    CarId = i,
                    Make = make,
                    Model = name,
                    Year = caruselForYear.Next(),
                    Style = styles[caruselForStyleId.Next()],
                    Bodystyle = bodystyle[caruselForBodystyleId.Next()],
                    Transmission = transmissiaonlist[caruselForTransmissionId.Next()],
                    Mileage = caruselForMillieage.Next(),
                    ExteriorColor = colorlist[caruselForColorId.Next()],
                    InteriorColor = colorlist[caruselForColorId.Next()],
                    Price = caruselForPrice.Next()
                });
            }

            return list;
        }
    }
}