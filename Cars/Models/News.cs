using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cars.Models
{
    public class News
    {
        public int NewsId { get; set; }
        public string Image { get; set; }
        public string Title { get; set; }
        public string Category { get; set; }
        public string Text { get; set; }
        public DateTime TimeStamp { get; set; }
        public string Author { get; set; }
    }
}