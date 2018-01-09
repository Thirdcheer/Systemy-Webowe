using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
public partial class Summary : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Items"] == null)
        {
            Label1.Text = "Error occured: session lost!";
            Label2.Visible = false;
            Label3.Visible = false;
        }
 
        else
        {
            Label2.Text = "Total price: " + Session["total_price"] + "$";
            Label3.Text = "Payment method: " + Session["payment_method"];
            Session.Clear();
        }
    }
}