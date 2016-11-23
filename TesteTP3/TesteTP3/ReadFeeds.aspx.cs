using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace TesteTP3
{
    public partial class ReadFeeds : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string title = DropDownList1.SelectedValue;
            if (title != string.Empty)
            {
                info.XPath = "channels/channel[@title='" + title + "']";
            }

            info.DataBind();
            DetailsView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string title = DropDownList1.SelectedValue;
            Debug.WriteLine("Title " + title);
            if (title != string.Empty)
            {
                info.XPath = "channels/channel[@title='" + title + "']";
            }

            info.DataBind();
            DetailsView1.DataBind();
        }
    }
}