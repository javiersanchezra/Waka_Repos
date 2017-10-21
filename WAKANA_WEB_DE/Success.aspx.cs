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
        public Success()
        {
        }

        protected override void RunSample()
        { }



        //Método random.
        private static Random random = new Random();

        public static string CadenitaRandom(int length)
        {
            return new string((
                from s in Enumerable.Repeat<string>("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", length)
                select s[Success.random.Next(s.Length)]).ToArray<char>());
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            this.RunSample();
        }

        static Success()
        {
            Success.random = new Random();
        }
    }
}