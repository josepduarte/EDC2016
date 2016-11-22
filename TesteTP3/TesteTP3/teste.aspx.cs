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
    public partial class teste : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = DetailsView1.Rows[1].Cells[1].Text.ToString();
            Debug.WriteLine(url);
            XmlReader reader = XmlReader.Create(url);
            XmlDocument doc = new XmlDocument();
            doc.Load(reader);
            reader.Close();
            string path = HttpContext.Current.Server.MapPath("~/App_Data/public_feeds.xml");
            doc.Save(path);

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            XmlDataSource1.TransformFile = "";

            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();
            XmlElement feed = xdoc.CreateElement("feed");
            XmlElement nome = xdoc.CreateElement("name");
            nome.InnerText = e.Values["name"].ToString();
            XmlElement url = xdoc.CreateElement("url");
            url.InnerText = e.Values["url"].ToString();
            feed.AppendChild(nome);
            feed.AppendChild(url);
            xdoc.DocumentElement.AppendChild(feed);

            XmlDataSource1.Save();
            XmlDataSource1.DataBind();
            XmlDataSource1.TransformFile = "~/bla.xslt";
            e.Cancel = true;
            DetailsView1.DataBind();
            DetailsView1.PageIndex = xdoc.DocumentElement.ChildNodes.Count - 1;
            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);

        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            string oldName = e.OldValues["name"].ToString();
            XmlDataSource1.TransformFile = "";
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            XmlElement feed = xdoc.SelectSingleNode("/listaDeRSS/feed[name='" + oldName + "']") as XmlElement;

            Debug.WriteLine("feed: " + feed.InnerXml);

            feed.SelectSingleNode("name").InnerText = e.NewValues["name"].ToString();
            feed.SelectSingleNode("url").InnerText = e.NewValues["url"].ToString();

            XmlDataSource1.Save();
            XmlDataSource1.DataBind();
            XmlDataSource1.TransformFile = "~/bla.xslt";
            e.Cancel = true;

            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        }

        protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {
            XmlDataSource1.TransformFile = "";
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            XmlElement feed = xdoc.SelectSingleNode("/listaDeRSS/feed[name='" + e.Values["name"].ToString() + "']") as XmlElement;

            xdoc.DocumentElement.RemoveChild(feed);

            XmlDataSource1.Save();
            XmlDataSource1.DataBind();
            XmlDataSource1.TransformFile = "~/bla.xslt";
            e.Cancel = true;

            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);

        }
    }

}