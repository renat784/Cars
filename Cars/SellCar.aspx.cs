using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Extensions;

namespace Cars
{
    public partial class SellCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!User.Identity.IsAuthenticated) 
            //{
            //    Response.Redirect("~/account/Login.aspx");
            //}




            // adding data to dropdownlists
            
            var statesItems = state.Items;
            if (!statesItems.Contains(new ListItem(StatesList().First())))
            {
                statesItems.Add("Select a State");
                StatesList().ForEach(i => statesItems.Add(i.ToString()));
            }

            var yearsItems = year.Items;
            if (!yearsItems.Contains(new ListItem(YearsList().First())))
            {
                yearsItems.Add("Select a Year");
                YearsList().ForEach(i => yearsItems.Add(i.ToString()));
            }
                

            var transmissionItems = transmission.Items;
            if (! transmissionItems.Contains(new ListItem(TransmissionList().First())))
            {
                transmissionItems.Add("Select a Transmission");
                TransmissionList().ForEach(i => transmissionItems.Add(i));
            }


            var bodyStyleItems = bodyStyle.Items;
            if (!bodyStyleItems.Contains(new ListItem(BodyStyleList().First())))
            {
                bodyStyleItems.Add("Select a Body Style");
                BodyStyleList().ForEach(i => bodyStyleItems.Add(i));
            }
                

            var stylesItems = style.Items;
            if (!stylesItems.Contains(new ListItem(StylesList().First())))
            {
                stylesItems.Add("Select a Style");
                StylesList().ForEach(i => stylesItems.Add(i));
            }
                

            var colorInteriorItems = interiorColor.Items;
            if (!colorInteriorItems.Contains(new ListItem(ColorsList().First())))
            {
                colorInteriorItems.Add("Select an Interior Color");
                ColorsList().ForEach(i => colorInteriorItems.Add(i));
            }
                

            var exteriorColorItems = exteriorColor.Items;
            if (!exteriorColorItems.Contains(new ListItem(ColorsList().First())))
            {
                exteriorColorItems.Add("Select an Exterior Color");
                ColorsList().ForEach(i => exteriorColorItems.Add(i));
            }
                

            var numberOfDoorsItems = numberOfDoors.Items;
            if (!numberOfDoorsItems.Contains(new ListItem(NumberOfDoorsList().First())))
            {
                numberOfDoorsItems.Add("Select a Number Of Doors");
                NumberOfDoorsList().ForEach(i => numberOfDoorsItems.Add(i));
            }
                

            var engineCylinderItems = engineCylinder.Items;
            if (!engineCylinderItems.Contains(new ListItem(EngineCylinderList().First())))
            {
                engineCylinderItems.Add("Select an Engine Cylinder");
                EngineCylinderList().ForEach(i => engineCylinderItems.Add(i));
            }
                

            var driveTypeItems = driveType.Items;
            if (!driveTypeItems.Contains(new ListItem(DriveTypeList().First())))
            {
                driveTypeItems.Add("Select a Drive Type");
                DriveTypeList().ForEach(i => driveTypeItems.Add(i));
            }
                

            var fuelTypeItems = fuelType.Items;
            if (!fuelTypeItems.Contains(new ListItem(FuelTypeList().First())))
            {
                fuelTypeItems.Add("Select a Fuel Type");
                FuelTypeList().ForEach(i => fuelTypeItems.Add(i));
            }
                
        }

        

        public IEnumerable<string> FuelTypeList()
        {
            var list = new List<string>
            {
                "Compressed Natural Gas",
                "Diesel",
                "E85 Flex Fuel",
                "Electric",
                "Gasoline",
                "Hybrid"
            };
            return list;
        }

        public IEnumerable<string> DriveTypeList()
        {
            var list = new List<string>
            {
                "4x2/2 wheel drive",
                "4x4/4 wheel drive",
                "AWD",
                "FWD",
                "RWD"
            };
            return list;
        }

        public IEnumerable<string> EngineCylinderList()
        {
            var list = new List<string>
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
            return list;
        }

        public IEnumerable<string> BodyStyleList()
        {
            var list = new List<string>
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
            return list;

        }

        public IEnumerable<string> NumberOfDoorsList()
        {
            var list = new List<string>
            {
                "1 door",
                "2 doors",
                "3 doors",
                "4 doors",
                "5 doors",
                "6 doors"
            };
            return list;
        }



        public IEnumerable<string> ColorsList()
        {
            var list = new List<string>
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
            return list;
        }
        public IEnumerable<string> StylesList()
        {
            var list = new List<string>
            {
                "EX",
                "EX-L",
                "LX",
                "Touring"
            };
            return list;
        }

        public IEnumerable<string> StatesList()
        {
            IEnumerable<string> list = new List<string>
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
            return list;
        }

        public IEnumerable<string> TransmissionList()
        {
            var list = new List<string>
            {
                "Automanual",
                "Automatic",
                "CVT",
                "Manual"
            };
            return list;

        }

        public IEnumerable<string> YearsList()
        {
            var MIN_YEAR = 1900;
            var MAX_YEAR = DateTime.Now.Year + 1;
            var list = new List<string>();

            // backward list
            for (int i = MAX_YEAR - 1; i >= MIN_YEAR; i--)
            {
                list.Add(i.ToString());
            }

            return list;
        }

       
    }
}