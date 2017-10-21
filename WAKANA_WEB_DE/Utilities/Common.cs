using System.Collections.Generic;
using PayPal.Api;
using PayPal;
using System.Web;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

using System;

namespace WAKANA_WEB_DE
{
    public static class Common
    {
        public static string FormatJsonString(string json)
        {
            if (string.IsNullOrEmpty(json))
            {
                return string.Empty;
            }
            if (!json.StartsWith("["))
            {
                return JObject.Parse(json).ToString(Formatting.Indented, new JsonConverter[0]);
            }
            json = string.Concat("{\"list\":", json, "}");
            string str = JObject.Parse(json).ToString(Formatting.Indented, new JsonConverter[0]);
            str = str.Substring(13, str.Length - 14).Replace("\n  ", "\n");
            return str;
        }

        public static string GetRandomInvoiceNumber()
        {
            return (new Random()).Next(999999).ToString();
        }
    }
}