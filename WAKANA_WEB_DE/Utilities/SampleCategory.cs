using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WAKANA_WEB_DE
{
    public class SampleCategory
    {
        public string Href
        {
            get;
            set;
        }

        public string Id
        {
            get;
            set;
        }

        public List<SampleItem> Items
        {
            get;
            set;
        }

        public string Title
        {
            get;
            set;
        }

        public SampleCategory()
        {
            this.Items = new List<SampleItem>();
        }
    }
}