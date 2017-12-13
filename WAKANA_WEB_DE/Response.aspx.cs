
using System;
using System.Web;

namespace WAKANA_WEB_DE
{
    public partial class Response : System.Web.UI.Page
    {
        public RequestFlow Flow
        {
            get;
            set;
            //flow
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!base.IsPostBack)
            {
                this.Flow = this.GetFromContext<RequestFlow>("Flow");
            }
        }

        protected string FormatPayloadText(string text, bool isRequest)
        {
            if (!string.IsNullOrEmpty(text))
            {
                return text;
            }
            return string.Format("No payload for this {0}.", (isRequest ? "request" : "response"));
        }

        protected string GetMessageClass(RequestFlowItemMessage message)
        {
            RequestFlowItemMessageType type = message.Type;
            if (type == RequestFlowItemMessageType.Success)
            {
                return "success";
            }
            if (type == RequestFlowItemMessageType.Error)
            {
                return "error";
            }
            return string.Empty;
        }

        protected string GetMessageWithMarkup(RequestFlowItemMessage message)
        {
            string str = "";
            switch (message.Type)
            {
                case RequestFlowItemMessageType.General:
                    {
                        str = "<i class=\"fa fa-info-circle\"></i>";
                        break;
                    }
                case RequestFlowItemMessageType.Success:
                    {
                        str = "<i class=\"fa fa-check-circle\"></i>";
                        break;
                    }
                case RequestFlowItemMessageType.Error:
                    {
                        str = "<i class=\"fa fa-times-circle\"></i>";
                        break;
                    }
            }
            return string.Format("{0} {1}", str, message.Message);
        }

        private string GetStringFromContext(string key)
        {
            return this.GetFromContext<string>(key);
        }

        private T GetFromContext<T>(string key)
        {
            if (!HttpContext.Current.Items.Contains(key))
            {
                return default(T);
            }
            return (T)HttpContext.Current.Items[key];
        }
    }
}
