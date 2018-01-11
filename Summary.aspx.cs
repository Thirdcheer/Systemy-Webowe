using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Systemy_webowe
{

    public partial class Summary : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Items"] == null)
            {
                Text1.Text = "Error occured: session lost!";
                Text2.Visible = false;
                Text3.Visible = false;
            }

            else
            {
                Text2.Text = "Total price: " + Session["total_price"] + "$";
                Text3.Text = "Payment method: " + Session["payment_method"];
                Session.Clear();
            }
        }

        public void method()
        {

        }
    }
}