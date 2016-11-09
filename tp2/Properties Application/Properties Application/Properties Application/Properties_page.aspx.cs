using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Diagnostics;

namespace Properties_Application
{
    public partial class Properties_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            Properties_xml.TransformFile = "";
            XmlDocument xdoc = Properties_xml.GetXmlDocument();
           
            // <Property>
            XmlElement property = xdoc.CreateElement("property");

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

            // attributes
            XmlAttribute land_register_number = xdoc.CreateAttribute("land_register_number");
            XmlAttribute value = xdoc.CreateAttribute("value");
            land_register_number.Value = e.Values["land_register_number"].ToString();
            value.Value = e.Values["value"].ToString();
            property.Attributes.Append(land_register_number);
            property.Attributes.Append(value);

            // documento
            xdoc.DocumentElement.AppendChild(property);
            Properties_xml.Save();
            Properties_xml.TransformFile = "~/App_Data/Property_XSL.xslt";
            e.Cancel = true;

            DetailsView1.DataBind();
            DetailsView1.PageIndex = xdoc.DocumentElement.ChildNodes.Count - 1;
            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);

        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            Properties_xml.TransformFile = "";
            XmlDocument xdoc = Properties_xml.GetXmlDocument();

            XmlElement property = xdoc.SelectSingleNode("properties/property[@land_register_number=" + e.OldValues["land_register_number"].ToString() + "]") as XmlElement;

            property.Attributes["land_register_number"].Value = e.NewValues["land_register_number"].ToString();
            property.Attributes["value"].Value = e.NewValues["value"].ToString();

            XmlElement address = property.SelectSingleNode("address[city='" + e.OldValues["city"].ToString() + "' and street='" + e.OldValues["street"].ToString() + "' and port_number='" + e.OldValues["port_number"].ToString() + "']") as XmlElement;

            address.SelectSingleNode("city").InnerText = e.NewValues["city"].ToString();
            address.SelectSingleNode("street").InnerText = e.NewValues["street"].ToString();
            address.SelectSingleNode("port_number").InnerText = e.NewValues["port_number"].ToString();

            Properties_xml.Save();
            Properties_xml.TransformFile = "~/App_Data/Property_XSL.xslt";
            e.Cancel = true;

            DetailsView1.DataBind();
            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        }

        protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {
            Properties_xml.TransformFile = "";
            XmlDocument xdoc = Properties_xml.GetXmlDocument();

            XmlElement property = xdoc.SelectSingleNode("properties/property[@land_register_number=" + e.Values["land_register_number"].ToString() + "]") as XmlElement;

            xdoc.DocumentElement.RemoveChild(property);

            Properties_xml.Save();
            Properties_xml.TransformFile = "~/App_Data/Property_XSL.xslt";
            e.Cancel = true;

            DetailsView1.DataBind();
            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        }


        protected void DetailsView2_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            Properties_xml.TransformFile = "";
            XmlDocument xdoc = Properties_xml.GetXmlDocument();

            XmlElement property = xdoc.SelectSingleNode("properties/property[@land_register_number=" + DetailsView1.Rows[0].Cells[1].Text.ToString() + "]") as XmlElement;

            XmlElement ownerList = property.SelectSingleNode("Owners") as XmlElement;
            if (ownerList == null)
            {
                ownerList = xdoc.CreateElement("Owners");
                property.AppendChild(ownerList);
            }

            XmlElement newOwner = xdoc.CreateElement("owner");
            XmlElement taxidOwner = xdoc.CreateElement("tax_id");
            XmlElement nameOwner = xdoc.CreateElement("name");
            XmlElement purchase_date = xdoc.CreateElement("purchase_date");
            taxidOwner.InnerText = e.Values["tax_id"].ToString();
            nameOwner.InnerText = e.Values["name"].ToString();
            purchase_date.InnerText = e.Values["purchase_date"].ToString();
            newOwner.AppendChild(taxidOwner);
            newOwner.AppendChild(nameOwner);
            newOwner.AppendChild(purchase_date);
            ownerList.AppendChild(newOwner);

            Debug.WriteLine("BLABLA" + ownerList.InnerXml);

            Properties_xml.Save();
            Properties_xml.TransformFile = "~/App_Data/Property_XSL.xslt";
            e.Cancel = true;

            XmlDataSource1.DataBind();
            Properties_xml.DataBind();
            DetailsView2.DataBind();
            
            DetailsView2.PageIndex = ownerList.ChildNodes.Count - 1;
            DetailsView2.ChangeMode(DetailsViewMode.ReadOnly);

        
        }

        protected void DetailsView2_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            string tax_id = e.OldValues["tax_id"].ToString();

            Properties_xml.TransformFile = "";
            XmlDocument xdoc = Properties_xml.GetXmlDocument();

            XmlElement property = xdoc.SelectSingleNode("properties/property[@land_register_number=" + DetailsView1.Rows[0].Cells[1].Text.ToString() + "]") as XmlElement;
            
            XmlElement owner = property.SelectSingleNode("Owners/owner[tax_id=" + tax_id + "]") as XmlElement;

            owner.SelectSingleNode("name").InnerText = e.NewValues["name"].ToString();
            owner.SelectSingleNode("purchase_date").InnerText = e.NewValues["purchase_date"].ToString();

            Properties_xml.Save();
            Properties_xml.TransformFile = "~/App_Data/Property_XSL.xslt";
            e.Cancel = true;

            XmlDataSource1.DataBind();
            Properties_xml.DataBind();
            DetailsView2.DataBind();

            DetailsView2.ChangeMode(DetailsViewMode.ReadOnly);
        }

        protected void DetailsView2_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {

        }
    }
}