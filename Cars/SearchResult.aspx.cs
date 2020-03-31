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
using Newtonsoft.Json.Linq;
using WebGrease.Css.Extensions;

namespace Cars
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString.Count == 0)
            {
                SortBy.Enabled = false;
                ResultsPerPage.Enabled = false;
            }
            else
            {
                SortBy.Enabled = true;
                ResultsPerPage.Enabled = true;
            }

            if (!Page.IsPostBack)
            {
               

                if (Request.QueryString.Count > 0 && string.IsNullOrEmpty(Request.QueryString.Get("orderby")))
                {
                    Response.Redirect(HttpContext.Current.Request.Url.PathAndQuery + 
                                      "&orderby=Price-asc&offset=0&next=10" );
                    return;
                }

                if (Request.QueryString.Count > 0)
                {
                    SetFilterResultsSelectedValues();

                    


                    SearchFromQuery();

                    return;
                }




            }

        }

        private void SetFilterResultsSelectedValues()
        {
            if (Request.QueryString["minYear"] != null)
            {
                MinYear.SelectedIndex = MinYearList().IndexOf(Request.QueryString["minYear"]);
            }
            if (Request.QueryString["maxYear"] != null)
            {
                MaxYear.SelectedIndex = MaxYearList().IndexOf(Request.QueryString["maxYear"]);
            }

            if (Request.QueryString["minPrice"] != null)
            {
                MinPrice_FilterResults.SelectedIndex = MinPrices().IndexOf(Request.QueryString["minPrice"]);
            }
            if (Request.QueryString["maxPrice"] != null)
            {
                MaxPrice_FilterResults.SelectedIndex = MaxPrices().IndexOf(Request.QueryString["maxPrice"]);
            }

        }


        private void ChangeSortDropDownFromQuery()
        {
           
        }

        private void OrderBySeeding()
        {
            


        }

        public SqlCommand ParseUrl()
        {
            

            string make = Request.QueryString["make"];
            string model = Request.QueryString["model"];
            string minPrice = Request.QueryString["minPrice"];
            string maxPrice = Request.QueryString["maxPrice"];
            
            string maxMiles = Request.QueryString["maxMiles"];
            string bodystyle = Request.QueryString["bodystyle"];
            string year = Request.QueryString["year"];
            string minYear = Request.QueryString["minYear"];
            string maxYear = Request.QueryString["maxYear"];
            string owner = Request.QueryString["owner"];
            string orderby = Request.QueryString["orderby"];
            string offset = Request.QueryString["offset"];
            string next = Request.QueryString["next"];

            


            SqlCommand sqlCommand = new SqlCommand();

            List<string> cmdList = new List<string>();

           

            if (!string.IsNullOrEmpty(owner))
            {
                sqlCommand.Parameters.AddWithValue("@SellerId", owner);
                cmdList.Add("  SellerId = @SellerId and ");
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

            if (!string.IsNullOrEmpty(maxMiles))
            {
                sqlCommand.Parameters.AddWithValue("@MaxMiles", maxMiles);
                cmdList.Add(" Mileage <= @MaxMiles and ");
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

            

            cmdList[cmdList.Count - 1] = cmdList[cmdList.Count - 1].Replace("and", " ");

            if (!string.IsNullOrEmpty(orderby))
            {
                string[] str = orderby.Split('-');
               
                cmdList.Add(" order by " + str[0] + " " + str[1]);
            }
            if (!string.IsNullOrEmpty(offset))
            {
                cmdList.Add(" offset " + offset + " rows ");
            }
            if (!string.IsNullOrEmpty(next))
            {
                cmdList.Add(" FETCH NEXT " + next + " ROWS only ");
            }

            string search = "";

            cmdList.ForEach(i => search += i);

            string commandText = " select * from Cars where " + search;



            string cmd2Text = commandText;
            cmd2Text = (cmd2Text.Remove(cmd2Text.IndexOf("order by"))).Replace("*", " COUNT(*) as Total ");

            



            sqlCommand.CommandText = commandText + ";" + cmd2Text;

            
          
            return sqlCommand;
        }

        


        private void SearchFromQuery()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["CarsConnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand sqlCommand = ParseUrl();
                sqlCommand.Connection = connection;









                //string cmd2Text = ParseUrl().CommandText;
                //cmd2Text = (cmd2Text.Remove(cmd2Text.IndexOf("order by"))).Replace("*", " COUNT(Make) as Total ");
                
                //sqlCommand.CommandText = ParseUrl().CommandText + ";" + cmd2Text;
                

                var reader = sqlCommand.ExecuteReader();

                // clear all items from last query
                RepeaterCards.DataSource = null;
                RepeaterCards.DataBind();

                // set new items
                RepeaterCards.DataSource = reader;
                RepeaterCards.DataBind();

                reader.NextResult();


                var results = 0;
                while (reader.Read())
                {
                    results = (int) reader[0];
                }

               
                SetPagination(results);



            }
        }

        public class Paginator
        {
            public string Url { get; set; }
            public int OrderId { get; set; }
        }
        private void SetPagination(int results)
        {
            int totalItems = results;

            TotalResults.Text =   results + " results found";

            int resultsPerPage = int.Parse(Request.QueryString["next"]);
            int pages = 0;

            if (totalItems % resultsPerPage == 0)
            {
                pages = totalItems / resultsPerPage;
            }
            else
            {
                pages = (totalItems / resultsPerPage) + 1;
            }

            List<Paginator> list = new List<Paginator>();

           
            for (int i = 1,  j = 0; i <= pages; i++, j+= resultsPerPage)
            {
                list.Add(new Paginator{OrderId = i, Url = SetOffset(j) });
                
            }

            Pagination.DataSource = list;
            Pagination.DataBind();
        }

        private string SetOffset(int value)
        {
            string url = HttpContext.Current.Request.Url.ToString();

            var array = url.Split('&');
            for (int i = 0; i < array.Length; i++)
            {
                if (array[i].Contains("offset"))
                {
                    array[i] = "offset=" + value;
                }
            }

            string newUrl = "";
            array.ForEach(i => newUrl += (i + '&'));
            newUrl = newUrl.Remove(newUrl.LastIndexOf('&'), 1);


            return newUrl;
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

            query += "&orderby=Price-asc&offset=0&next=" + ResultsPerPage.SelectedValue.Split(' ')[0];

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
           
            int index = SortBy.SelectedIndex;
            
          

            if (index == 1)
            {
                AddOrReplaceOrder("Price", "asc");
               
                //text += "order by Price asc";
            }
            if (index == 2)
            {
                AddOrReplaceOrder("Price", "desc");
                //Response.Redirect(HttpContext.Current.Request.Url.PathAndQuery + "&orderby=Price-desc");
                //text += "order by Price desc";
            }
            

            if (index == 3)
            {
                AddOrReplaceOrder("Mileage", "asc");
                //Response.Redirect(HttpContext.Current.Request.Url.PathAndQuery + "&orderby=Mileage-asc");
                //text += "order by Mileage asc";
            }
            if (index == 4)
            {
                AddOrReplaceOrder("Mileage", "desc");
                //Response.Redirect(HttpContext.Current.Request.Url.PathAndQuery + "&orderby=Mileage-desc");
                //text += "order by Mileage desc";
            }

            if (index == 5)
            {
                AddOrReplaceOrder("Year", "desc");
                //Response.Redirect(HttpContext.Current.Request.Url.PathAndQuery + "&orderby=Year-desc");
                //text += "order by Year desc";
            }

            if (index == 6)
            {
                AddOrReplaceOrder("Year", "asc");
                //Response.Redirect(HttpContext.Current.Request.Url.PathAndQuery + "&orderby=Year-asc");
                //text += "order by Year asc";
            }
            
            

            Session["SearchResults_SortByIndex"] = index;
          

        }

        private void AddOrReplaceOrder(string category, string order)
        {
            string url = HttpContext.Current.Request.Url.PathAndQuery;
            if (!url.Contains("&orderby="))
            {
                
                Response.Redirect(HttpContext.Current.Request.Url.PathAndQuery + "&orderby=" 
                                                                               + category + "-" + order);
            }
            else
            {
                var array = url.Split('&');
                for (int i = 0; i < array.Length; i++)
                {
                    if (array[i].Contains("asc") || array[i].Contains("desc"))
                    {
                        array[i] = "orderby=" + category + "-" + order;
                    }
                }

                string newUrl = "";
                array.ForEach(i => newUrl += (i + '&'));
                newUrl = newUrl.Remove(newUrl.LastIndexOf('&'), 1); 
                
                    
                

               
               
                Response.Redirect(newUrl);
            }

            
        }

        protected void SearchFromFilterResults(object sender, EventArgs e)
        {
            string query = "";

            List<string> list = new List<string>();


            list.Add("minYear=" + MinYear.SelectedValue + "&");
            list.Add("maxYear=" + MaxYear.SelectedValue + "&");
            
            list.Add("make=" + Make_RadioList.SelectedValue + "&");
            list.Add("model=" + Model_RadioList.SelectedValue + "&");
            list.Add("style=" + Style_RadioList.SelectedValue + "&");
            list.Add("minPrice=" + MinPrice_FilterResults.SelectedValue + "&");
            list.Add("maxPrice=" + MaxPrice_FilterResults.SelectedValue + "&");
            
            list.Add("maxMiles=" + Mileage_RadioList.SelectedValue.Split(' ')[0] + "&");


            list[list.Count - 1] = list[list.Count - 1].Replace("&", "");
            list.ForEach(i => query += i);
            query += "&orderby=Price-asc&offset=0&next=" + ResultsPerPage.SelectedValue.Split(' ')[0];
            Response.Redirect("/searchresult?" + query);
        }

        protected void MakeRadioList_OnDataBound(object sender, EventArgs e)
        {
            if (Request.QueryString["make"] != null)
            {
                var make = Request.QueryString["make"];

                int index = Make_RadioList.Items.IndexOf(new ListItem(make));
                Make_RadioList.SelectedIndex = index;
            }
            else
            {
                Make_RadioList.Items[0].Selected = true;
            }
            
                
            
        }


        protected void ResultsForPage(object sender, EventArgs e)
        {
            string url = HttpContext.Current.Request.Url.PathAndQuery;

            //url = url.Remove(url.IndexOf("next")) + "next=" + ResultsPerPage.SelectedValue.Split(' ')[0];
            url = url.Remove(url.IndexOf("offset")) + "offset=0&next=" + ResultsPerPage.SelectedValue.Split(' ')[0];
            Response.Redirect(url);
        }


        

        public IEnumerable SortByList()
        {
            var list = new List<string>();
            list.Add("Not Sorted");
            list.Add("Price: Lowest");
            list.Add("Price: Highest");
            list.Add("Mileage: Lowest");
            list.Add("Mileage: Highest");
            list.Add("Year: Newest");
            list.Add("Year: Oldest");

            return list;
        }

        protected void Model_RadioList_OnDataBound(object sender, EventArgs e)
        {
            if (Request.QueryString["model"] != null)
            {
                var model = Request.QueryString["model"];

                int index = Model_RadioList.Items.IndexOf(new ListItem(model));
                Model_RadioList.SelectedIndex = index;
            }
            else
            {
                Model_RadioList.Items[0].Selected = true;
            }
        }

        protected void Style_RadioList_OnDataBound(object sender, EventArgs e)
        {
            if (Request.QueryString["style"] != null)
            {
                var style = Request.QueryString["style"];

                int index = Style_RadioList.Items.IndexOf(new ListItem(style));
                Style_RadioList.SelectedIndex = index;
            }
            else
            {
                Style_RadioList.Items[0].Selected = true;
            }
        }

        public List<string> Mileage_List()
        {
            var list = new List<string>();
            for (int i = 10000; i <= 100000; i+= 10000)
            {
                list.Add(i + " or less");
            }

            list.Add("150000 or less");
            list.Add("200000 or less");
            list.Add("250000 or less");
            list.Add("300000 or less");

            return list;
        }

        protected void Mileage_RadioList_OnDataBound(object sender, EventArgs e)
        {
            if (Request.QueryString["maxMiles"] != null)
            {
                var miles = Request.QueryString["maxMiles"];

                int index = Mileage_RadioList.Items.IndexOf(new ListItem(miles + " or less"));
                Mileage_RadioList.SelectedIndex = index;
            }
            else
            {
                int index = Mileage_RadioList.Items.IndexOf(new ListItem("300000 or less"));
                Mileage_RadioList.SelectedIndex = index;

                
            }
        }

        protected void SortBy_OnDataBound(object sender, EventArgs e)
        {
            int index = 0;
            var str = Request.QueryString["orderby"];
            if (str == null)
            {
                SortBy.SelectedIndex = index;
                return;
            }

            switch (str)
            {
                case "Price-asc":
                    index = 1;
                    break;
                case "Price-desc":
                    index = 2;
                    break;
                case "Mileage-asc":
                    index = 3;
                    break;
                case "Mileage-desc":
                    index = 4;
                    break;
                case "Year-desc":
                    index = 5;
                    break;
                case "Year-asc":
                    index = 6;
                    break;
            }

            SortBy.SelectedIndex = index;

        }


        protected void RepeaterCards_OnItemCreated(object sender, RepeaterItemEventArgs e)
        {
            if (NoResults.Visible)
            {
                NoResults.Visible = false;
            }
            
           
        }

        public IEnumerable SelectResultsPerPage()
        {
            var list = new List<string>();
            list.Add("5 per page");
            list.Add("10 per page");
            list.Add("20 per page");
            list.Add("30 per page");
            list.Add("50 per page");
            list.Add("100 per page");
            return list;
        }


        protected void ResultsPerPage_OnDataBound(object sender, EventArgs e)
        {
            if (Request.QueryString["next"] != null)
            {
                var next = Request.QueryString["next"];

                int index = ResultsPerPage.Items.IndexOf(new ListItem(next + " per page"));
                ResultsPerPage.SelectedIndex = index;
            }
            else
            {
                int index = ResultsPerPage.Items.IndexOf(new ListItem("10 per page"));
                ResultsPerPage.SelectedIndex = index;


            }
        }

        protected void CheckAvailability(object sender, EventArgs e)
        {
            var button  = sender as Button;
            
        }
    }
}