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

                    SearchFromQuery();
                   
                    return;
                }

                //string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;
                //using (SqlConnection connection = new SqlConnection(connectionString))
                //{
                //    connection.Open();
                //    SqlCommand sqlCommand = new SqlCommand();

                //    string commandText = "select Make from Cars"; 

                //    sqlCommand.Connection = connection;
                //    sqlCommand.CommandText = commandText;

                //    var reader = sqlCommand.ExecuteReader();

                //    SeedDropDownList("Make", Make, reader);
                //}

                //Model.Items.Clear();
                //Model.Items.Add("Select a Make First");

                
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
            string minPrice = Request.QueryString["minPrice"];
            string maxPrice = Request.QueryString["maxPrice"];
            string bodystyle = Request.QueryString["bodystyle"];
            string year = Request.QueryString["year"];
            string minYear = Request.QueryString["minYear"];
            string maxYear = Request.QueryString["maxYear"];

            SqlCommand sqlCommand = new SqlCommand();

            List<string> cmdList = new List<string>();

            if (!string.IsNullOrEmpty(minYear))
            {
                sqlCommand.Parameters.AddWithValue("@MinYear", minYear);
                cmdList.Add(" Year >= @MinYear and ");
            }
            if (!string.IsNullOrEmpty(maxYear))
            {
                sqlCommand.Parameters.AddWithValue("@MaxYear", maxYear);
                cmdList.Add(" Year <= @MaxYear and ");
            }


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


            if (!string.IsNullOrEmpty(minPrice))
            {
                sqlCommand.Parameters.AddWithValue("@MinPrice", minPrice);
                cmdList.Add(" Price >= @MinPrice and ");
            }
            if (!string.IsNullOrEmpty(maxPrice))
            {
                sqlCommand.Parameters.AddWithValue("@MaxPrice", maxPrice);
                cmdList.Add(" Price <= @MaxPrice and ");
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


        private void SearchFromQuery(string orderBy = "")
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





        protected void SearchFromNewSearch(object sender, EventArgs e)
        {
            string query = "";

            List<string> list = new List<string>();

            if (!Make.SelectedValue.Contains("Select"))
            {
                 list.Add("make=" + Make.SelectedValue + "&"); 
            }
            if (!Model.SelectedValue.Contains("Select"))
            {
                list.Add("model=" + Model.SelectedValue + "&");
            }
            if (!MaxPrice.SelectedValue.Contains("Max"))
            {
                list.Add("maxPrice=" + MaxPrice.SelectedValue + "&");
            }

            list[list.Count - 1] = list[list.Count - 1].Replace("&", "");
            list.ForEach(i => query += i);

            Response.Redirect("/searchresult?" + query);

            

        }

        //protected void Make_SelectedIndexChanged(object sender, EventArgs e)
        //{
            
        //    if (Make.SelectedValue.Contains("Select"))
        //    {
        //        Model.Items.Clear();
        //        Model.Items.Add("Select A Make first");
        //        return;
        //    }
          
        //    string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;

        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        connection.Open();
        //        SqlCommand sqlCommand = new SqlCommand();
        //        sqlCommand.Parameters.AddWithValue("@Make", Make.SelectedValue);
        //        string commandText = "select Model from Cars where Make = @Make";

        //        sqlCommand.Connection = connection;
        //        sqlCommand.CommandText = commandText;

        //        var reader = sqlCommand.ExecuteReader();

        //        var list = new List<string>();
        //        while (reader.Read())
        //        {
        //            list.Add(reader["Model"].ToString());
        //        }

        //        list = new List<string>(list.Distinct());

        //        Model.Items.Clear();
        //        list.ForEach(i => Model.Items.Add(i));
        //    }

        //}

        public List<string> MaxPriceList()
        {
            List<string> prices = new List<string>();
            prices.Add("No Max Price");
            for (int i = 2000; i <= 20000; i += 2000)
            {
                prices.Add(i.ToString());
                
            }

            return prices;
        }

        public List<string> MinPrices()
        {
            List<string> list = new List<string>();
            for (int i = 2000; i < 32000; i+= 2000)
            {
                list.Add(i.ToString());
            }

            return list;
        }

        public List<string> MaxPrices()
        {
            List<string> list = new List<string>();
            for (int i = 32000 - 2000; i >= 2000; i-= 2000)
            {
                list.Add(i.ToString());
            }

            return list;
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

          

            SearchFromQuery(text);

        }

        protected void SearchFromFilterResults(object sender, EventArgs e)
        {
            string query = "";

            List<string> list = new List<string>();


            list.Add("minYear=" + MinYear.SelectedValue + "&");
            list.Add("maxYear=" + MaxYear.SelectedValue + "&");
            list.Add("make=" + Make_RadioList.SelectedValue + "&");
            list.Add("model=" + Model_RadioList.SelectedValue + "&");
            list.Add("minPrice=" + MinPrice_FilterResults.SelectedValue + "&");
            list.Add("maxPrice=" + MaxPrice_FilterResults.SelectedValue + "&");


            list[list.Count - 1] = list[list.Count - 1].Replace("&", "");
            list.ForEach(i => query += i);

            Response.Redirect("/searchresult?" + query);
        }

        protected void OnDataBound(object sender, EventArgs e)
        {
            (sender as RadioButtonList).Items[0].Selected = true;
        }
    }
}