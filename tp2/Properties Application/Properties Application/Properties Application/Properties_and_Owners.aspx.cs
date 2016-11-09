using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Properties_Application
{
    public partial class Properties_and_Owners : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string owner = DropDownList1.SelectedValue;


            string path = Server.MapPath("~/App_Data/Properties.xml");
            XmlDocument source = new XmlDocument();
            source.Load(path);
            XmlDocument destino = Properties.GetXmlDocument();
            Properties.TransformFile = "";

            XmlNode propList = destino.SelectSingleNode("properties");
           // propList.RemoveAll();

            XmlElement propertyList = propList as XmlElement;

            XmlNodeList sourcePropList = source.SelectNodes("properties");
            bool alreadyCreated = true;

            XmlElement listOfProperties = null;
            foreach (XmlNode xn in sourcePropList)
            {
                foreach (XmlNode xn_owner in xn.SelectNodes("Owners"))
                {
                    XmlNode tmp_owner = xn_owner.SelectSingleNode("owner");
                    if (!alreadyCreated)
                    {
                        listOfProperties = destino.CreateElement("properties");
                        alreadyCreated = true;
                    }
                    if (owner.Equals(tmp_owner[("tax_id")].InnerXml, StringComparison.OrdinalIgnoreCase)){
                        XmlElement propprop = destino.CreateElement("property");
                        propprop.AppendChild(xn);
                        propertyList.AppendChild(propprop);
                        break;
                    }

                }
                Debug.WriteLine("DEBUUUUUUG: " + xn.InnerXml);
            }
       

            Properties.Save();
            Properties.TransformFile = "~/App_Data/Property_XSL.xslt";
            Properties.DataBind();
            GridView1.DataBind();
        }
    }
}