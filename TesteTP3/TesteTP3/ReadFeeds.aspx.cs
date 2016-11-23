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
            Debug.WriteLine("BLA: " + DropDownList1.Items.ToString());
            string title = DropDownList1.SelectedValue;
            if (title == string.Empty)
                title = DetailsView1.Rows[0].Cells[1].Text.ToString();
           
            info.XPath = "channels/channel[@title='" + title + "']";
           
            info.TransformFile = "";

            XmlDocument xdoc = info.GetXmlDocument();
            Debug.WriteLine("xdoc: " + xdoc.InnerXml);
            XmlElement feed = xdoc.SelectSingleNode("/channels/channel[title='" + title + "']") as XmlElement;
            Image1.ImageUrl = (feed.GetElementsByTagName("image")[0] as XmlElement).GetElementsByTagName("url")[0].InnerText.ToString();
            Debug.WriteLine("title: " + title);
            Debug.WriteLine("FEED: " + feed.InnerXml);
            Image1.DataBind();

            info.TransformFile = "~/info_channel.xslt";
       
            info.DataBind();
            DetailsView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string title = DropDownList1.SelectedValue;
            Debug.WriteLine("Title " + title);
            if (title == string.Empty)
                title = DetailsView1.Rows[0].Cells[1].Text.ToString();

            info.XPath = "channels/channel[@title='" + title + "']";

            info.TransformFile = "";

            XmlDocument xdoc = info.GetXmlDocument();
            Debug.WriteLine("xdoc: " + xdoc.InnerXml);
            XmlElement feed = xdoc.SelectSingleNode("/channels/channel[title='" + title + "']") as XmlElement;
            Image1.ImageUrl = (feed.GetElementsByTagName("image")[0] as XmlElement).GetElementsByTagName("url")[0].InnerText.ToString();
            Debug.WriteLine("title: " + title);
            Debug.WriteLine("FEED: " + feed.InnerXml);
            Image1.DataBind();

            info.TransformFile = "~/info_channel.xslt";

            info.DataBind();
            DetailsView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("teste.aspx");
        }
    }
}