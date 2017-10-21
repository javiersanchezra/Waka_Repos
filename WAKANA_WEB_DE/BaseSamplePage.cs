using PayPal.Api;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WAKANA_WEB_DE
{
    public abstract class BaseSamplePage : System.Web.UI.Page
    {
        protected RequestFlow flow;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.RegisterSampleRequestFlow();
            try
            {
                this.RunSample();
            }
            catch (Exception exception)
            {
                this.flow.RecordException(exception);
            }
        }

        protected void RegisterSampleRequestFlow()
        {
            if (this.flow == null)
            {
                this.flow = new RequestFlow();
            }
            HttpContext.Current.Items["Flow"] = this.flow;
        }

        protected abstract void RunSample();
    }
}