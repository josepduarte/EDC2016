using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Properties_Application
{
    public partial class Properties_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemDeleting(object sender, FormViewDeleteEventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {

        }

        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            XmlDocument xdoc = Properties_xml.GetXmlDocument();

            // <Properties>
            XmlElement properties = xdoc.CreateElement("properties");
            // <Property>
            XmlElement property = xdoc.CreateElement("property");
            properties.AppendChild(property);

            // <address>
            XmlElement address = xdoc.CreateElement("address");
            XmlElement city = xdoc.CreateElement("city");
            XmlElement street = xdoc.CreateElement("street");
            XmlElement port_number = xdoc.CreateElement("port_number");
            city.InnerText = e.Values["city"].ToString();
            street.InnerText = e.Values["street"].ToString();
            port_number.InnerText = e.Values["port_number"].ToString();
            address.AppendChild(city);
            address.AppendChild(street);
            address.AppendChild(port_number);
            property.AppendChild(address);

            // <


        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {

        }

        protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {

        }
    }
}