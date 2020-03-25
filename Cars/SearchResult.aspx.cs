using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Extensions;

namespace Cars
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                {
                    OrderBySeeding();

                    SearchNow();
                   
                    return;
                }

                string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand sqlCommand = new SqlCommand();

                    string commandText = "select Make from Cars"; 

                    sqlCommand.Connection = connection;
                    sqlCommand.CommandText = commandText;

                    var reader = sqlCommand.ExecuteReader();

                    SeedDropDownList("Make", Make, reader);
                }

                Model.Items.Clear();
                Model.Items.Add("Select a Make First");

                
            }

        }

        private void OrderBySeeding()
        {
            SortBy.Items.Clear();
            SortBy.Items.Add("Not Sorted");
            SortBy.Items.Add("Price: Lowest");
            SortBy.Items.Add("Price: Highest");
            SortBy.Items.Add("Mileage: Lowest");
            SortBy.Items.Add("Mileage: Highest");
            SortBy.Items.Add("Year: Newest");
            SortBy.Items.Add("Year: Oldest");


        }

        public SqlCommand ParseUrl()
        {
            string make = Request.QueryString["make"];
            string model = Request.QueryString["model"];
            string maxPrice = Request.QueryString["maxPrice"];
            string bodystyle = Request.QueryString["bodystyle"];
            string year = Request.QueryString["year"];

            SqlCommand sqlCommand = new SqlCommand();

            List<string> cmdList = new List<string>();

            if (!string.IsNullOrEmpty(make))
            {
                sqlCommand.Parameters.AddWithValue("@Make", make);
                cmdList.Add(" Make = @Make and ");
            }
            if (!string.IsNullOrEmpty(model))
            {
                sqlCommand.Parameters.AddWithValue("@Model", model);
                cmdList.Add(" Model = @Model and ");
            }
            if (!string.IsNullOrEmpty(maxPrice))
            {
                sqlCommand.Parameters.AddWithValue("@MaxPrice", maxPrice);
                cmdList.Add(" Price < @MaxPrice and ");
            }
            if (!string.IsNullOrEmpty(bodystyle))
            {
                sqlCommand.Parameters.AddWithValue("@BodyStyle", bodystyle);
                cmdList.Add(" Bodystyle = @BodyStyle and ");
            }
            if (!string.IsNullOrEmpty(year))
            {
                sqlCommand.Parameters.AddWithValue("@Year", year);
                cmdList.Add(" Year = @Year and ");
            }


            cmdList[cmdList.Count - 1] = cmdList[cmdList.Count - 1].Replace("and", ";");

            string search = "";

            cmdList.ForEach(i => search += i);

            string commandText = " select * from Cars where " + search;


           
            sqlCommand.CommandText = commandText;
            return sqlCommand;
        }


        private void SearchNow(string orderBy = "")
        {
            string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand sqlCommand = ParseUrl();

                if (!string.IsNullOrEmpty(orderBy))
                {
                    sqlCommand.CommandText = sqlCommand.CommandText.Replace(";", "");
                    sqlCommand.CommandText += orderBy;
                }

                Debug.WriteLine(sqlCommand.CommandText);

                sqlCommand.Connection = connection;

                var reader = sqlCommand.ExecuteReader();

                RepeaterCards.DataSource = reader;
                RepeaterCards.DataBind();
            }
        }


        private void SeedDropDownList(string name, DropDownList dropDownList, SqlDataReader reader)
        {
            dropDownList.Items.Clear();
            dropDownList.Items.Add(new ListItem("Select a " + name));

            var list = new List<string>();
            while (reader.Read())
            {
                list.Add(reader[0].ToString());
            }

            list = new List<string>(list.Distinct());
            list.ForEach(i => dropDownList.Items.Add(i));
        }

       

       

        protected void SearchCars (object sender, EventArgs e) 
        {
            string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand sqlCommand = new SqlCommand();

                
                
                //sqlCommand.Parameters.AddWithValue("@Year", Year.SelectedValue);
               

                List<string> cmdList = new List<string>();

                //if (!Year.SelectedValue.Contains("Select"))
                //{
                //    cmdList.Add(" Year=@Year and ");
                //}
                if (!Make.SelectedValue.Contains("Select"))
                {
                    sqlCommand.Parameters.AddWithValue("@Make", Make.SelectedValue);
                    cmdList.Add(" Make=@Make and ");
                }
                if (!Model.SelectedValue.Contains("Select"))
                {
                    sqlCommand.Parameters.AddWithValue("@Model", Model.SelectedValue);
                    cmdList.Add(" Model=@Model and ");
                }
                if (!Price.SelectedValue.Contains("Max"))
                {
                    sqlCommand.Parameters.AddWithValue("@Price", Price.SelectedValue);
                    cmdList.Add(" Price < @Price and ");
                }

                cmdList[cmdList.Count - 1] = cmdList[cmdList.Count - 1].Replace("and", ";");

                string search = "";
                
                cmdList.ForEach(i => search += i);

                string commandText = " select * from Cars where " + search +
                                     " select count(*) from Cars where " + search;

                sqlCommand.Connection = connection;
                sqlCommand.CommandText = commandText;

                var reader = sqlCommand.ExecuteReader();

                RepeaterCards.DataSource = reader;
                RepeaterCards.DataBind();

                reader.NextResult();
                while (reader.Read())
                {
                    ResultCount.Text = reader[0].ToString();
                }

            }

        }

        protected void Make_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if (Make.SelectedValue.Contains("Select"))
            {
                Model.Items.Clear();
                Model.Items.Add("Select A Make first");
                return;
            }
          
            string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand sqlCommand = new SqlCommand();
                sqlCommand.Parameters.AddWithValue("@Make", Make.SelectedValue);
                string commandText = "select Model from Cars where Make = @Make";

                sqlCommand.Connection = connection;
                sqlCommand.CommandText = commandText;

                var reader = sqlCommand.ExecuteReader();

                var list = new List<string>();
                while (reader.Read())
                {
                    list.Add(reader["Model"].ToString());
                }

                list = new List<string>(list.Distinct());

                Model.Items.Clear();
                list.ForEach(i => Model.Items.Add(i));
            }

        }

        public IEnumerable<string> MaxPriceList()
        {
            List<string> prices = new List<string>();
            prices.Add("No Max Price");
            for (int i = 1000; i <= 20000;)
            {
                prices.Add(i.ToString());
                i += 1000;
            }

            return prices;
        }

        public List<int> YearsList()
        {
            var MIN_YEAR = 2000;
            var MAX_YEAR = DateTime.Now.Year + 1;
            var list = new List<int>();
            

            //backward list
            for (int i = MAX_YEAR - 1; i >= MIN_YEAR; i--)
            {
                list.Add(i);
            }

            return list;
        }

        public List<string> MinYearList()
        {
            var list = YearsList();
            list.Sort();
            
            var str_list = new List<string>();
            list.ForEach(i => str_list.Add(i.ToString()));
            return str_list;
        }

        

        public List<string> MaxYearList()
        {
            var list = YearsList();
            var str_list = new List<string>();
            list.ForEach(i => str_list.Add(i.ToString()));
            return str_list;
        }

        protected void SortBy_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string value = SortBy.SelectedValue;
            string text = " ";

            if (value.Contains("Price") & value.Contains("Lowest"))
            {
                text += "order by Price asc";
            }
            if (value.Contains("Price") & value.Contains("Highest"))
            {
                text += "order by Price desc";
            }
            

            if (value.Contains("Mileage") & value.Contains("Lowest"))
            {
                text += "order by Mileage asc";
            }
            if (value.Contains("Mileage") & value.Contains("Highest"))
            {
                text += "order by Mileage desc";
            }


            if (value.Contains("Year") & value.Contains("Oldest"))
            {
                text += "order by Year asc";
            }
            if (value.Contains("Year") & value.Contains("Newest"))
            {
                text += "order by Year desc";
            }

          

            SearchNow(text);

        }
    }
}