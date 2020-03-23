using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cars
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        

        protected void SearchCars (object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand sqlCommand = new SqlCommand();

                string commandText = "select * from Cars where Year=" + Year.SelectedItem.Value;

                sqlCommand.Connection = connection;
                sqlCommand.CommandText = commandText;

                var reader = sqlCommand.ExecuteReader();

                RepeaterCards.DataSource = reader;
                RepeaterCards.DataBind();

            }

        }

    }
}