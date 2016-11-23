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
            Response.Redirect("ReadFeeds.aspx");
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


            string path = HttpContext.Current.Server.MapPath("~/App_Data/public_feeds.xml");
            XmlDocument source = new XmlDocument();
            source.Load(path);
            Debug.WriteLine("BLAAA " + source.InnerXml);

            string url_str = e.Values["url"].ToString();
            Debug.WriteLine(url_str);
            XmlReader reader = XmlReader.Create(url_str);
            XmlDocument doc = new XmlDocument();
            doc.Load(reader);
            reader.Close();
            Debug.WriteLine("BLA:" + doc.DocumentElement.InnerXml);
            /*
            XmlElement nome2 = doc.CreateElement("name");
            nome2.InnerText = e.Values["name"].ToString();
            doc.DocumentElement.AppendChild(nome2);
            */
            XmlElement channel = doc.DocumentElement.GetElementsByTagName("channel")[0] as XmlElement;
            XmlAttribute name = doc.CreateAttribute("name");
            name.Value = e.Values["name"].ToString();
            channel.Attributes.Append(name);

            XmlNode rootChannel = channel as XmlNode;
            XmlNode importNode = source.ImportNode(rootChannel, true);
            Debug.WriteLine("BLAAAAAAA:" + rootChannel.InnerXml);
            source.DocumentElement.AppendChild(importNode);

            source.Save(path);


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
            /*
             *  Delete
             */

            XmlDataSource1.TransformFile = "";
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            XmlElement feedToRem = xdoc.SelectSingleNode("/listaDeRSS/feed[name='" + e.OldValues["name"].ToString() + "']") as XmlElement;

            xdoc.DocumentElement.RemoveChild(feedToRem);

            string path = HttpContext.Current.Server.MapPath("~/App_Data/public_feeds.xml");
            XmlDocument source = new XmlDocument();
            source.Load(path);
            XmlElement toRemove = source.SelectSingleNode("/channels/channel[@name='" + e.OldValues["name"].ToString() + "']") as XmlElement;
            source.DocumentElement.RemoveChild(toRemove);
            source.Save(path);

            /*
             * Add
             */

            XmlDataSource1.TransformFile = "";

            XmlDocument xdoc2 = XmlDataSource1.GetXmlDocument();
            XmlElement feed = xdoc.CreateElement("feed");
            XmlElement nome = xdoc.CreateElement("name");
            nome.InnerText = e.NewValues["name"].ToString();
            XmlElement url = xdoc.CreateElement("url");
            url.InnerText = e.NewValues["url"].ToString();
            feed.AppendChild(nome);
            feed.AppendChild(url);
            xdoc.DocumentElement.AppendChild(feed);


            source.Load(path);

            string url_str = e.NewValues["url"].ToString();
            Debug.WriteLine(url_str);
            XmlReader reader = XmlReader.Create(url_str);
            XmlDocument doc = new XmlDocument();
            doc.Load(reader);
            reader.Close();
            Debug.WriteLine("BLA:" + doc.DocumentElement.InnerXml);
            /*
            XmlElement nome2 = doc.CreateElement("name");
            nome2.InnerText = e.Values["name"].ToString();
            doc.DocumentElement.AppendChild(nome2);
            */
            XmlElement channel = doc.DocumentElement.GetElementsByTagName("channel")[0] as XmlElement;
            XmlAttribute name = doc.CreateAttribute("name");
            name.Value = e.NewValues["name"].ToString();
            channel.Attributes.Append(name);

            XmlNode rootChannel = channel as XmlNode;
            XmlNode importNode = source.ImportNode(rootChannel, true);
            Debug.WriteLine("BLAAAAAAA:" + rootChannel.InnerXml);
            source.DocumentElement.AppendChild(importNode);

            source.Save(path);


            XmlDataSource1.Save();
            XmlDataSource1.DataBind();
            XmlDataSource1.TransformFile = "~/bla.xslt";
            e.Cancel = true;
            DetailsView1.DataBind();
            DetailsView1.PageIndex = xdoc.DocumentElement.ChildNodes.Count - 1;
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

            string path = HttpContext.Current.Server.MapPath("~/App_Data/public_feeds.xml");
            XmlDocument source = new XmlDocument();
            source.Load(path);
            XmlElement toRemove = source.SelectSingleNode("/channels/channel[@name='" + e.Values["name"].ToString() + "']") as XmlElement;
            source.DocumentElement.RemoveChild(toRemove);
            source.Save(path);
        }
    }

}