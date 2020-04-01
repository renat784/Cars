using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cars.Models;

namespace Cars
{
    public partial class auto_repair : System.Web.UI.Page
    {
        private static int lastId = 1;
        public GlossaryItem item;
        private List<GlossaryItem> list;
        public auto_repair()
        {
            var _list = new List<GlossaryItem> 
            {
                new GlossaryItem
                {
                    Id = 1,
                    Title = "ABS",
                    TextFileName = "ABS.txt",
                    ImageFileName = "ABS.png"
                },
                new GlossaryItem
                {
                    Id = 2,
                    Title = "Clutch_Cable",
                    TextFileName = "Clutch_Cable.txt",
                    ImageFileName = "Clutch_Cable.png"
                },
                new GlossaryItem
                {
                    Id = 3,
                    Title = "Fuel_System",
                    TextFileName = "Fuel_System.txt",
                    ImageFileName = "Fuel_System.png"
                },
                new GlossaryItem
                {
                    Id = 4,
                    Title = "Mass_Airflow_Sensor",
                    TextFileName = "Mass_Airflow_Sensor.txt",
                    ImageFileName = "Mass_Airflow_Sensor.png"
                },
                new GlossaryItem
                {
                    Id = 5,
                    Title = "Oxygen_Sensor",
                    TextFileName = "Oxygen_Sensor.txt",
                    ImageFileName = "Oxygen_Sensor.png"
                }
            };
            this.list = _list;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //show id from 1 to 5
            if (lastId > 5) lastId = 1;
            this.item = list.Find(i => i.Id == lastId);
            lastId++;
        }

        protected string CleanTitle(string title)
        {
            var clean = title.Replace('_', ' ');
            return clean;
        }

        protected string ShowText(string fileName)
        {
            var text = File.ReadAllText(Server.MapPath("Glossary/" + fileName));
            return text;
        }


    }
}