using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Systemy_webowe
{
    public partial class Shop : Page
    {
        private Hashtable posters = new Hashtable();
        private Hashtable stickers = new Hashtable();
        private Hashtable items = new Hashtable();

        private void addItems()
        {
            posters.Add("Poster 1", 150);
            posters.Add("Poster 2", 75);
            posters.Add("Poster 3", 175);
            posters.Add("Poster 4", 100);

            stickers.Add("Sticker 1", 25);
            stickers.Add("Sticker 2", 15);
            stickers.Add("Sticker 3", 25);
            stickers.Add("Sticker 4", 15);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ItemCount"] == null)
            {
                Session["ItemCount"] = 0;
            }
            else
            {
                Label2.Text = Session["ItemCount"].ToString();
            }

            if (Session["Items"] != null)
            {
                items = (Hashtable) Session["Items"];
            }

            addItems();
        
        }

        protected void onCategorySelect(object sender, EventArgs e)
        {
            
            Hashtable selected = new Hashtable();
            switch (RadioButtonList1.SelectedItem.Text)
            {
                case "Posters": selected = posters;
                    break;
                case "Stickers": selected = stickers;
                     break;
                
            }
            showItemsInCategory(selected);
        }

        private void showItemsInCategory(Hashtable selected)
        {
            
            CheckBoxList1.Items.Clear();
            CheckBoxList1.Visible = true;
            
            foreach (DictionaryEntry d in selected)
            {
                String listitem = d.Key.ToString() + " | " + d.Value.ToString() + "PLN";
                CheckBoxList1.Items.Add(new ListItem(listitem, d.Value.ToString()));
            }
        }

        protected void onAddToCartClick(object sender, EventArgs e)
        {
            String key;
            String value;

            int itemCount = (int) Session["ItemCount"];

            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    key = li.Text.ToString();
                    value = li.Value.ToString();

                    if (items.ContainsKey(key))
                    {
                        Label3.Visible = true;
                    }
                    else
                    {
                        itemCount++;
                        items.Add(key, value);
                    }
                }
            }
            Session["Items"] = items;
            Session["ItemCount"] = itemCount;
            Label2.Text = Session["ItemCount"].ToString();
        }


}
}