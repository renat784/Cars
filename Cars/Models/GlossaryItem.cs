using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cars.Models
{
    public class GlossaryItem
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string TextFileName { get; set; }
        public string ImageFileName { get; set; }

    }
}