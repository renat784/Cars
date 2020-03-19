using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Cars.Models
{
    public class Make
    {

        [ScaffoldColumn(false)]
        public int MakeId { get; set; }
        public string Name { get; set; }
        virtual public IEnumerable<Car> Cars { get; set; }
    }
}