using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WAKANA_WEB_DE
{
    public class fecha
    {
        bool alta;
        DateTime date;

        public fecha(bool alta, DateTime date)
        {
            this.alta = alta;
            this.date = date;
        }

        public bool Alta
        {
            get
            {
                return alta;
            }

            set
            {
                alta = value;
            }
        }

        public DateTime Date
        {
            get
            {
                return date;
            }

            set
            {
                date = value;
            }
        }
    }

}