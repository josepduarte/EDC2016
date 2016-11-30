using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TesteTP3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            bool added = false;
            foreach (ListItem item in DropDownList1.Items)
                if (item.ToString().Equals("All"))
                    added = true;
            if(!added)
                DropDownList1.Items.Add(new ListItem("All", "all"));

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CheckBoxList1_SelectedIndexChanged(sender, e);
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Debug.WriteLine(e.ToString());
            List<ListItem> selected = new List<ListItem>();

            foreach (ListItem item in CheckBoxList1.Items)
                if (item.Selected) selected.Add(item);

            string filter = "";

            int number_of_items = selected.Count;
            if (number_of_items != 0) {
                filter = "[@title=";

                int counter = 0;
                foreach (ListItem item in selected) {
                    if (counter == number_of_items - 1)
                    {
                        filter += "'" + item.ToString() + "'";
                    }
                    else
                    {
                        filter += "'" + item.ToString() + "' or @title=";
                    }

                    counter++;
                }

                filter += "]";

                

            }

            string category = DropDownList1.SelectedValue;

            if(category.Equals( "all"))
               items.XPath = "/channels/channel" + filter + "/item";
            else
               items.XPath = "/channels/channel" + filter + "/item[@category='" + category + "']";

            items.DataBind();
            Repeater1.DataBind();

        }
    }
}