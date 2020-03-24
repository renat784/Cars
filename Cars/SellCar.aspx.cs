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
using Cars.Models;
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
            //if (!Page.IsPostBack)
            //{
                

            //    string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;
            //    using (SqlConnection connection = new SqlConnection(connectionString))
            //    {
            //        connection.Open();
            //        SqlCommand sqlCommand = new SqlCommand();

            //        string commandText = "select * from States;" +
            //                             "select * from Makes;" +
            //                             "select * from Styles;" +
            //                             "select * from BodyStyles;" +
            //                             "select * from Transmissions;" +
            //                             "select * from Colors;" +
            //                             "select * from Colors;" +
            //                             "select * from NumberOfDoors;" +
            //                             "select * from EngineCylinders;" +
            //                             "select * from DriveTypes;" +
            //                             "select * from FuelTypes;";

            //        sqlCommand.Connection = connection;
            //        sqlCommand.CommandText = commandText;

            //        var reader = sqlCommand.ExecuteReader();

            //        SeedDropDownList("State", State, reader);
            //        //State.DataSource = reader;
            //        //State.DataTextField = "Name";
            //        //State.DataValueField = "StateId";
            //        //State.DataBind();

            //        reader.NextResult();

            //        SeedDropDownList("Make", Make, reader);

            //        //Make.DataSource = reader;
            //        //Make.DataTextField = "Name";
            //        //Make.DataValueField = "MakeId";
            //        //Make.DataBind();

            //        //reader.NextResult();

            //        //Model.DataSource = reader;
            //        //Model.DataTextField = "Name";
            //        //Model.DataValueField = "CarId";
            //        //Model.DataBind();

            //        reader.NextResult();

            //        SeedDropDownList("Style", Style, reader);
            //        //Style.DataSource = reader;
            //        //Style.DataTextField = "Name";
            //        //Style.DataValueField = "StyleId";
            //        //Style.DataBind();

            //        reader.NextResult();

            //        SeedDropDownList("Body Style", BodyStyle, reader);
            //        //BodyStyle.DataSource = reader;
            //        //BodyStyle.DataTextField = "Name";
            //        //BodyStyle.DataValueField = "BodyStyleId";
            //        //BodyStyle.DataBind();

            //        reader.NextResult();

            //        SeedDropDownList("Transmission", Transmission, reader);
            //        //Transmission.DataSource = reader;
            //        //Transmission.DataTextField = "Name";
            //        //Transmission.DataValueField = "TransmissionId";
            //        //Transmission.DataBind();

            //        reader.NextResult();

            //        SeedDropDownList("Exterior Color", ExteriorColor, reader);
            //        //ExteriorColor.DataSource = reader;
            //        //ExteriorColor.DataTextField = "Name";
            //        //ExteriorColor.DataValueField = "ColorId";
            //        //ExteriorColor.DataBind();

            //        reader.NextResult();

            //        SeedDropDownList("Interior Color", InteriorColor, reader);
            //        //InteriorColor.DataSource = reader;
            //        //InteriorColor.DataTextField = "Name";
            //        //InteriorColor.DataValueField = "ColorId";
            //        //InteriorColor.DataBind();

            //        reader.NextResult();

            //        SeedDropDownList("Number of doors", NumberOfDoors, reader);
            //        //NumberOfDoors.DataSource = reader;
            //        //NumberOfDoors.DataTextField = "Name";
            //        //NumberOfDoors.DataValueField = "NumberOfDoorsId";
            //        //NumberOfDoors.DataBind();

            //        reader.NextResult();

            //        SeedDropDownList("Engine Cylinder", EngineCylinder, reader);
            //        //EngineCylinder.DataSource = reader;
            //        //EngineCylinder.DataTextField = "Name";
            //        //EngineCylinder.DataValueField = "EngineCylinderId";
            //        //EngineCylinder.DataBind();

            //        reader.NextResult();

            //        SeedDropDownList("Drive Type", DriveType, reader);
            //        //DriveType.DataSource = reader;
            //        //DriveType.DataTextField = "Name";
            //        //DriveType.DataValueField = "DriveTypeId";
            //        //DriveType.DataBind();

            //        reader.NextResult();

            //        SeedDropDownList("Fuel Type", Fueltype, reader);
            //        //Fueltype.DataSource = reader;
            //        //Fueltype.DataTextField = "Name";
            //        //Fueltype.DataValueField = "FueltypeId";
            //        //Fueltype.DataBind();


            //    }

            //}

        }

        private void SeedDropDownList(string name, DropDownList dropDownList, SqlDataReader reader)
        {
            dropDownList.Items.Clear();
            dropDownList.Items.Add(new ListItem("Select a " + name));

            while (reader.Read())
            {
                dropDownList.Items.Add(new ListItem(reader[1].ToString(), reader[0].ToString()));
            }

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

                var list = new List<string>();
                while (reader.Read())
                {
                    list.Add(reader["Name"].ToString());
                }

                list =  new List<string>(list.Distinct());
                
               Model.Items.Clear();
               list.ForEach(i => Model.Items.Add(i));
            }
            
        }

        public IEnumerable<string> YearsList()
        {
            var MIN_YEAR = 1900;
            var MAX_YEAR = DateTime.Now.Year + 1;
            var list = new List<string>();
            list.Add("Select a Year");

            // backward list
            for (int i = MAX_YEAR - 1; i >= MIN_YEAR; i--)
            {
                list.Add(i.ToString());
            }

            return list;
        }

       

       

        


        


    }
}