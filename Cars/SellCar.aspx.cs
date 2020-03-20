using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
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


            // one time init
            if (!Page.IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand sqlCommand = new SqlCommand();


                    string commandText = "select * from States;" +
                                         "select * from Makes;" +
                                         "select CarId, Name from Cars where MakeId = 1;" +
                                         "select * from Styles;" +
                                         "select * from BodyStyles;" +
                                         "select * from Transmissions;" +
                                         "select * from Colors;" +
                                         "select * from Colors;" +
                                         "select * from NumberOfDoors;" +
                                          "select * from EngineCylinders;" +
                                          "select * from DriveTypes;" +
                                         "select * from FuelTypes;";

                    sqlCommand.Connection = connection;
                    sqlCommand.CommandText = commandText;

                    var reader = sqlCommand.ExecuteReader();
                    State.DataSource = reader;
                    State.DataTextField = "Name";
                    State.DataValueField = "StateId";
                    State.DataBind();

                    reader.NextResult();

                    Make.DataSource = reader;
                    Make.DataTextField = "Name";
                    Make.DataValueField = "MakeId";
                    Make.DataBind();

                    reader.NextResult();

                    Model.DataSource = reader;
                    Model.DataTextField = "Name";
                    Model.DataValueField = "CarId";
                    Model.DataBind();

                    reader.NextResult();

                    Style.DataSource = reader;
                    Style.DataTextField = "Name";
                    Style.DataValueField = "StyleId";
                    Style.DataBind();

                    reader.NextResult();

                    BodyStyle.DataSource = reader;
                    BodyStyle.DataTextField = "Name";
                    BodyStyle.DataValueField = "BodyStyleId";
                    BodyStyle.DataBind();

                    reader.NextResult();

                    Transmission.DataSource = reader;
                    Transmission.DataTextField = "Name";
                    Transmission.DataValueField = "TransmissionId";
                    Transmission.DataBind();

                    reader.NextResult();

                    ExteriorColor.DataSource = reader;
                    ExteriorColor.DataTextField = "Name";
                    ExteriorColor.DataValueField = "ColorId";
                    ExteriorColor.DataBind();

                    reader.NextResult();

                    InteriorColor.DataSource = reader;
                    InteriorColor.DataTextField = "Name";
                    InteriorColor.DataValueField = "ColorId";
                    InteriorColor.DataBind();

                    reader.NextResult();

                    NumberOfDoors.DataSource = reader;
                    NumberOfDoors.DataTextField = "Name";
                    NumberOfDoors.DataValueField = "NumberOfDoorsId";
                    NumberOfDoors.DataBind();

                    reader.NextResult();

                    EngineCylinder.DataSource = reader;
                    EngineCylinder.DataTextField = "Name";
                    EngineCylinder.DataValueField = "EngineCylinderId";
                    EngineCylinder.DataBind();

                    reader.NextResult();

                    DriveType.DataSource = reader;
                    DriveType.DataTextField = "Name";
                    DriveType.DataValueField = "DriveTypeId";
                    DriveType.DataBind();

                    reader.NextResult();

                    Fueltype.DataSource = reader;
                    Fueltype.DataTextField = "Name";
                    Fueltype.DataValueField = "FueltypeId";
                    Fueltype.DataBind();
                    reader.Close();
                    connection.Close();
                }


            }





            //var makesItems = Make.Items;
            //if (!makesItems.Contains(new ListItem(MakesList().First())))
            //{
            //    makesItems.Add("Select a Make");
            //    MakesList().ForEach(i => makesItems.Add(i.ToString()));
            //}


            //    var statesItems = State.Items;
            //if (!statesItems.Contains(new ListItem(StatesList().First())))
            //{
            //    statesItems.Add("Select a State");
            //    StatesList().ForEach(i => statesItems.Add(i.ToString()));
            //}

            //var yearsItems = Year.Items;
            //if (!yearsItems.Contains(new ListItem(YearsList().First())))
            //{
            //    yearsItems.Add("Select a Year");
            //    YearsList().ForEach(i => yearsItems.Add(i.ToString()));
            //}


            //var transmissionItems = Transmission.Items;
            //if (! transmissionItems.Contains(new ListItem(TransmissionList().First())))
            //{
            //    transmissionItems.Add("Select a Transmission");
            //    TransmissionList().ForEach(i => transmissionItems.Add(i));
            //}


            //var bodyStyleItems = BodyStyle.Items;
            //if (!bodyStyleItems.Contains(new ListItem(BodyStyleList().First())))
            //{
            //    bodyStyleItems.Add("Select a Body Style");
            //    BodyStyleList().ForEach(i => bodyStyleItems.Add(i));
            //}


            //var stylesItems = Style.Items;
            //if (!stylesItems.Contains(new ListItem(StylesList().First())))
            //{
            //    stylesItems.Add("Select a Style");
            //    StylesList().ForEach(i => stylesItems.Add(i));
            //}


            //var colorInteriorItems = InteriorColor.Items;
            //if (!colorInteriorItems.Contains(new ListItem(ColorsList().First())))
            //{
            //    colorInteriorItems.Add("Select an Interior Color");
            //    ColorsList().ForEach(i => colorInteriorItems.Add(i));
            //}


            //var exteriorColorItems = ExteriorColor.Items;
            //if (!exteriorColorItems.Contains(new ListItem(ColorsList().First())))
            //{
            //    exteriorColorItems.Add("Select an Exterior Color");
            //    ColorsList().ForEach(i => exteriorColorItems.Add(i));
            //}


            //var numberOfDoorsItems = NumberOfDoors.Items;
            //if (!numberOfDoorsItems.Contains(new ListItem(NumberOfDoorsList().First())))
            //{
            //    numberOfDoorsItems.Add("Select a Number Of Doors");
            //    NumberOfDoorsList().ForEach(i => numberOfDoorsItems.Add(i));
            //}


            //var engineCylinderItems = EngineCylinder.Items;
            //if (!engineCylinderItems.Contains(new ListItem(EngineCylinderList().First())))
            //{
            //    engineCylinderItems.Add("Select an Engine Cylinder");
            //    EngineCylinderList().ForEach(i => engineCylinderItems.Add(i));
            //}


            //var driveTypeItems = DriveType.Items;
            //if (!driveTypeItems.Contains(new ListItem(DriveTypeList().First())))
            //{
            //    driveTypeItems.Add("Select a Drive Type");
            //    DriveTypeList().ForEach(i => driveTypeItems.Add(i));
            //}


            //var fuelTypeItems = Fueltype.Items;
            //if (!fuelTypeItems.Contains(new ListItem(FuelTypeList().First())))
            //{
            //    fuelTypeItems.Add("Select a Fuel Type");
            //    FuelTypeList().ForEach(i => fuelTypeItems.Add(i));
            //}

        }

        protected  void ChangeModels(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand sqlCommand = new SqlCommand();



                string commandText = "select CarId, Name from Cars where MakeId=" + Make.SelectedItem.Value;

                sqlCommand.Connection = connection;
                sqlCommand.CommandText = commandText;

                var reader = sqlCommand.ExecuteReader();



                Model.DataSource = reader;
                Model.DataTextField = "Name";
                Model.DataValueField = "CarId";
                Model.DataBind();

            }

            

            
        }

        public IEnumerable<string> MakesList()
        {
            var list = new List<string>
            {
                "Honda",
                "Toyota",
                "Lexus",
                "Ford",
                "KIA"
            };
            return list;
        }

        public IEnumerable<string> ModelsList(string make)
        {
            var d = new Dictionary<string, List<string>>();
            d.Add("Toyota", new List<string> { "Corolla", "Camry", "RAV4", "Highlander", "Land Cruser" });
            d.Add("Honda", new List<string> { "Civic", "Accord", "CRV", "Pilot" });
            d.Add("Lexus", new List<string> { "ES", "EX", "XD" });
            d.Add("KIA", new List<string> { "Rio", "Cerato", "Spartage", "Soul" });
            d.Add("Ford", new List<string> { "Mondeo", "Focus", "F-150", "Explorer" });
            return d[make];
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

        public IEnumerable<int> YearsList()
        {
            var MIN_YEAR = 1900;
            var MAX_YEAR = DateTime.Now.Year + 1;
            var list = new List<int>();

            // backward list
            for (int i = MAX_YEAR - 1; i >= MIN_YEAR; i--)
            {
                list.Add(i);
            }

            return list;
        }


        protected void MakeChanged(object sender, EventArgs e)
        {
            var modelsItems = Model.Items;
            modelsItems.Clear();
            modelsItems.Add(new ListItem("Select a Model"));
            ModelsList(Make.SelectedValue).ForEach(i => modelsItems.Add(i.ToString()));

        }


    }
}