using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;




namespace WAKANA_WEB_DE
{
    public partial class Success : BaseSamplePage
    {
        protected override void RunSample()
        { }



        //Método random.
        private static Random random = new Random();
        public static string CadenitaRandom(int length)
        {
            const string chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            return new string(Enumerable.Repeat(chars, length).Select(s => s[random.Next(s.Length)]).ToArray());
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            RunSample();
        }

        // #Create Future Payment Using PayPal
        // This sample code demonstrates how you can process a future payment made using a PayPal account.
        /// <summary>
        /// Code example for creating a future payment object.
        /// </summary>
        /// <param name="correlationId"></param>
        /// <param name="authorizationCode"></param>
    }
}