using System;
using System.Collections.Generic;
using System.Linq;
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


            // adding data to dropdownlists
            var statesItems = state.Items;
            statesItems.Add("Select a State");
            StatesList().ForEach(i => statesItems.Add(i));

            var yearsItems = year.Items;
            yearsItems.Add("Select a Year");
            YearsList().ForEach(i => yearsItems.Add(i.ToString()));

            var transmissionItems = transmission.Items;
            transmissionItems.Add("Select a Transmission");
            TransmissionList().ForEach(i => transmissionItems.Add(i));

            var bodyStyleItems = bodyStyle.Items;
            bodyStyleItems.Add("Select a Body Style");
            BodyStyleList().ForEach(i => bodyStyleItems.Add(i));
        }

        public IEnumerable<string> BodyStyleList()
        {
            var list = new List<string>();
            return list;

        }

        public IEnumerable<string> StatesList()
        {
            IEnumerable<string> list = new List<string>
            {

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
            return list;
        }

        public IEnumerable<string> TransmissionList()
        {
            var list = new List<string>();
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


       
    }
}