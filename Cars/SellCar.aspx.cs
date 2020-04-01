using System;
using System.Collections;
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
            if (!User.Identity.IsAuthenticated)
            {
                string returnUrl = Request.Url.PathAndQuery;
                Response.Redirect("~/account/Login.aspx?returnUrl=" + returnUrl);
            }
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

        protected void ChangeModels(object sender, EventArgs e)
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

                list = new List<string>(list.Distinct());

                Model.Items.Clear();
                list.ForEach(i => Model.Items.Add(i));
            }
        }

        public IEnumerable<string> YearsList()
        {
            var MIN_YEAR = 2000;
            var MAX_YEAR = DateTime.Now.Year + 1;
            var list = new List<string>();

            // backward list
            for (int i = MAX_YEAR - 1; i >= MIN_YEAR; i--)
            {
                list.Add(i.ToString());
            }

            return list;
        }

        public List<string> StatesList()
        {
            var statesList = new List<string>
            {
                "Select a State",
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
            return statesList;
        }

        protected void AddCar(object sender, EventArgs e)
        {
            if (ModelState.IsValid)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand sqlCommand = new SqlCommand();
                    // car:
                    sqlCommand.Parameters.AddWithValue("@Year", Year.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@Make", Make.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@Model", Model.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@Style", Style.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@BodyStyle", BodyStyle.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@Transmission", Transmission.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@Mileage", Mileage.Text);
                    sqlCommand.Parameters.AddWithValue("@ExteriorColor", ExteriorColor.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@InteriorColor", InteriorColor.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@Price", Price.Text);
                    // seller:
                    sqlCommand.Parameters.AddWithValue("@FirstName", FirstName.Text);
                    sqlCommand.Parameters.AddWithValue("@LastName", LastName.Text);
                    sqlCommand.Parameters.AddWithValue("@EmailAdress", EmailAdress.Text);
                    sqlCommand.Parameters.AddWithValue("@PhoneNumber", PhoneNumber.Text);
                    sqlCommand.Parameters.AddWithValue("@DayTime", DayTime.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@ZIP", ZIP.Text);

                    sqlCommand.Connection = connection;

                    string addSeller = "insert into Sellers values(@FirstName, @LastName, @EmailAdress, @PhoneNumber," +
                                       " @DayTime, @ZIP)";

                    sqlCommand.CommandText = addSeller;
                    sqlCommand.ExecuteNonQuery();

                    string getSellerId = "select SellerId from Sellers where FirstName = @FirstName and" +
                                         " LastName = @LastName and PhoneNumber = @PhoneNumber";

                    sqlCommand.CommandText = getSellerId;
                    int sellerId = (int)sqlCommand.ExecuteScalar();

                    sqlCommand.Parameters.AddWithValue("@SellerId", sellerId);

                    string commandText = "insert into Cars values (@Make, @Model, @Year, @Style, @BodyStyle," +
                                         " @Transmission, @Mileage, @ExteriorColor, @InteriorColor, @Price, @SellerId)";

                    sqlCommand.CommandText = commandText;
                    sqlCommand.ExecuteNonQuery();

                    string query = "owner=" + sellerId;

                    Response.Redirect("/caradded?" + query);
                }

            }
        }
    }
}