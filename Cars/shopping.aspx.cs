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
using Cars.Models;

namespace Cars
{
    public partial class Shopping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Price.DataSource = MaxPriceList();
                Price.DataBind();
            }
        }

        protected void SearchButtonClicked(object sender, EventArgs e)
        {
            string url = "~/searchresult?";

            List<string> cmdList = new List<string>();


            if (!string.IsNullOrEmpty(Make.SelectedValue))
            {
                cmdList.Add("make="+ Make.SelectedValue + "&");
            }
            if (!string.IsNullOrEmpty(Model.SelectedValue))
            {
                cmdList.Add("model=" + Model.SelectedValue + "&");
            }
            if (!Price.SelectedValue.Contains("Max"))
            {
                string maxPrice = Price.SelectedValue.Replace("under $", "");
                cmdList.Add("maxPrice=" + maxPrice + "&");
            }


            cmdList[cmdList.Count - 1] = cmdList[cmdList.Count - 1].Replace("&", "");

            string generatedUrl = "";
            cmdList.ForEach(i => generatedUrl += i);
            Response.Redirect(url + generatedUrl);
        }

        public List<string> MaxPriceList()
        {
            var list = new List<string>();

            list.Add("No Max Price");

            for (int i = 2000; i <= 100000; i+= 2000)
            {
                list.Add("under $" + i);
            }
            

            return list;
        }

        
    }
}