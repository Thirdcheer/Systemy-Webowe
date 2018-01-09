using System;
using System.Collections;
using System.Web.UI;

namespace Systemy_webowe
{
    
    public partial class Cart : Page
    {
        Hashtable cartItems = new Hashtable();
        private int price = 0;
        
        protected void Page_Init(object sender, EventArgs e)
        {
           
        }
 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Items"] != null)
            {
                cartItems = (Hashtable)Session["Items"];
                BulletedList1.DataSource = cartItems;
                BulletedList1.DataValueField = "Value";
                BulletedList1.DataTextField = "Key";
                BulletedList1.DataBind();
 
                foreach (DictionaryEntry de in cartItems)
                {
                    price += Convert.ToInt32(de.Value);
                }
 
                if (deliveryCheckBox.SelectedItem.Value == "10")
                {
                    price += Convert.ToInt32(deliveryCheckBox.SelectedItem.Value);
                }
 
                priceLabel.Text = "Total price: " + price + "PLN";
 
                Session["total_price"] = price;
                Session["payment_method"] = paymentCheckBox.SelectedItem.Text;
            }
            else
            {
                BulletedList1.Visible = false;
                deliveryCheckBox.Visible = false;
                Label3.Visible = false;
                paymentCheckBox.Visible = false;
                priceLabel.Visible = false;
                orderButton.Visible = false;
            }
        }
        protected void orderButton_Click(object sender, EventArgs e)
        {
            Server.Transfer("Summary.aspx");
        }
    }
}