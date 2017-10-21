using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PayPal;
namespace WAKANA_WEB_DE
{
    public enum RequestFlowItemMessageType
    {
        General,
        Success,
        Error
    }

    public class RequestFlowItemMessage
    {
         public string Message
        {
            get;
            set;
        }

        public RequestFlowItemMessageType Type
        {
            get;
            set;
        }

        public RequestFlowItemMessage()
        {
        }
    }

    public class RequestFlowItem
    {
        public string Description
        {
            get;
            set;
        }

        public string ImagePath
        {
            get;
            set;
        }

        public bool IsErrorResponse
        {
            get;
            set;
        }

        public bool IsRedirectApproved
        {
            get;
            set;
        }

        public List<RequestFlowItemMessage> Messages
        {
            get;
            set;
        }

        public string RedirectUrl
        {
            get;
            set;
        }

        public string RedirectUrlText
        {
            get;
            set;
        }

        public string Request
        {
            get;
            set;
        }

        public string Response
        {
            get;
            set;
        }

        public string Title
        {
            get;
            set;
        }

        public RequestFlowItem()
        {
            this.Messages = new List<RequestFlowItemMessage>();
        }

        public void RecordError(string message)
        {
            this.RecordMessage(message, RequestFlowItemMessageType.Error);
        }

        public void RecordException(Exception ex)
        {
            this.IsErrorResponse = true;
            if (!(ex is ConnectionException))
            {
                if (!(ex is PayPalException) || ex.InnerException == null)
                {
                    this.RecordError(ex.Message);
                    return;
                }
                this.RecordError(ex.InnerException.Message);
                return;
            }
            this.Response = Common.FormatJsonString(((ConnectionException)ex).Response);
            if (!string.IsNullOrEmpty(ex.Message))
            {
                this.RecordError(ex.Message);
                return;
            }
            this.RecordError(string.Format("Error thrown from SDK as type {0}.", ex.GetType().ToString()));
        }

        public void RecordMessage(string message, RequestFlowItemMessageType type = 0)
        {
            this.Messages.Add(new RequestFlowItemMessage()
            {
                Message = message,
                Type = type
            });
        }

        public void RecordSuccess(string message)
        {
            this.RecordMessage(message, RequestFlowItemMessageType.Success);
        }
    }
}