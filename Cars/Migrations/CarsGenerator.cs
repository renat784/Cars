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
            int stylesCount,
            int bodystyleCount,
            int colorlistCount,
            int transmissiaonlistCount,
            int makelistCount,
            List<string> toyota,
            List<string> honda,
            List<string> lexus,
            List<string> ford,
            List<string> kia,
            int TotalCountToGenerate = 20)
        {
            var list = new List<Car>();
            var caruselForMake = new Carusel(1, makelistCount, true);
            var caruselForToyota = new Carusel(0, toyota.Count - 1, true);
            var caruselForHonda = new Carusel(0, honda.Count - 1, true);
            var caruselForLexus = new Carusel(0, lexus.Count - 1, true);
            var caruselForFord = new Carusel(0, ford.Count - 1, true);
            var caruselForKia = new Carusel(0, kia.Count - 1, true);

            var caruselForYear = new Carusel(1985, 2020, true);
            var caruselForStyleId = new Carusel(1, stylesCount, true);
            var caruselForBodystyleId = new Carusel(1, bodystyleCount, true);
            var caruselForTransmissionId = new Carusel(1, transmissiaonlistCount, true);
            var caruselForMillieage = new Carusel(50000, 100000, true);
            var caruselForColorId = new Carusel(1, colorlistCount, true);
            var caruselForPrice = new Carusel(5000, 25000, true);


            for (int i = 1; i <= TotalCountToGenerate; i++)
            {
                var makeId = caruselForMake.Next();

                var name = "";

                switch (makeId)
                {
                    case 1:
                        name = toyota[caruselForToyota.Next()];
                        break;
                    case 2:
                        name = honda[caruselForHonda.Next()];
                        break;
                    case 3:
                        name = lexus[caruselForLexus.Next()];
                        break;
                    case 4:
                        name = ford[caruselForFord.Next()];
                        break;
                    case 5:
                        name = kia[caruselForKia.Next()];
                        break;
                }

                list.Add(new Car
                {
                    CarId = i,
                    MakeId = makeId,
                    Name = name,
                    Year = caruselForYear.Next(),
                    StyleId = caruselForStyleId.Next(),
                    BodystyleId = caruselForBodystyleId.Next(),
                    TransmissionId = caruselForTransmissionId.Next(),
                    Mileage = caruselForMillieage.Next(),
                    ExteriorColorId = caruselForColorId.Next(),
                    InteriorColorId = caruselForColorId.Next(),
                    Price = caruselForPrice.Next()
                });
            }

            return list;
        }
    }
}