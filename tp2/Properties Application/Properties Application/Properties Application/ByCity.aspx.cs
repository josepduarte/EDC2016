using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Xml;

namespace Properties_Application
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string city = DropDownList1.SelectedValue;
            if (city != string.Empty)
            {
                Properties.XPath = "Properties/Property[@city='" + city + "']";
            }
            else
            {
                Properties.XPath = "Properties/Property";
            }

            XmlDocument xdoc = Properties.GetXmlDocument();
            XmlNodeList xnList = xdoc.SelectNodes("Properties/Property");
            int sum = 0;
            foreach (XmlNode xn in xnList)
            {
                Debug.WriteLine("BLA: " + xn.InnerXml);
                if(String.Equals(xn.Attributes["city"].Value.ToString(), city, StringComparison.Ordinal))
                    sum += Int32.Parse(xn.Attributes["value"].Value);
            }
            Label1.Text = sum.ToString();
            Label1.DataBind();

            Properties.DataBind();
            GridView1.DataBind();
        }
    }
}