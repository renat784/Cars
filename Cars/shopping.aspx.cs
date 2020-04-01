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
                // remember last checked options
                Make.SelectedIndex = Session["MakeSelectedIndex"] == null ? 0 : (int)Session["MakeSelectedIndex"];
                Price.SelectedIndex = Session["PriceSelectedIndex"] == null ? 0 : (int)Session["PriceSelectedIndex"];
                Bodystyle.SelectedIndex = Session["BodystyleSelectedIndex"] == null ? 0 : (int)Session["BodystyleSelectedIndex"];
                Bodystyle_MaxPrice.SelectedIndex = Session["Bodystyle_MaxPriceSelectedIndex"] == null ? 0 : (int)Session["Bodystyle_MaxPriceSelectedIndex"];
            }
        }

        protected void SearchByMake(object sender, EventArgs e)
        {
            Session["MakeSelectedIndex"] = Make.SelectedIndex;
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

        protected void SearchByBodyStyle (object sender, EventArgs e)
        {
            string url = "~/searchresult?";
            List<string> cmdList = new List<string>();

            if (!string.IsNullOrEmpty(Bodystyle.SelectedValue))
            {
                cmdList.Add("bodystyle=" + Bodystyle.SelectedValue + "&");
            }
            
            if (!Bodystyle_MaxPrice.SelectedValue.Contains("Max"))
            {
                string maxPrice = Bodystyle_MaxPrice.SelectedValue.Replace("under $", "");
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


        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            var droplist = sender as DropDownList;
            switch (droplist.ID)
            {
                case "Make":
                    Session["MakeSelectedIndex"] = Make.SelectedIndex;
                    break;
                case "Model":
                    Session["ModelSelectedIndex"] = Model.SelectedIndex;
                    Debug.WriteLine("value=" + Model.SelectedIndex);
                    break;
                case "Price":
                    Session["PriceSelectedIndex"] = Price.SelectedIndex;
                    break;
                case "Bodystyle":
                    Session["BodystyleSelectedIndex"] = Bodystyle.SelectedIndex;
                    break;
                case "Bodystyle_MaxPrice":
                    Session["Bodystyle_MaxPriceSelectedIndex"] = Bodystyle_MaxPrice.SelectedIndex;
                    break;
            }
        }

        protected void Model_OnDataBound(object sender, EventArgs e)
        {
            Model.SelectedIndex = Session["ModelSelectedIndex"] == null ? 0 : (int)Session["ModelSelectedIndex"];
        }
    }
}