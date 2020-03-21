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
                }

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
                
                Model.DataSource = reader;
                Model.DataTextField = "Name";
                Model.DataValueField = "CarId";
                Model.DataBind();
            }
            
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

       

       

        


        


    }
}