using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace tp3
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String url = "http://feeds.feedburner.com/PublicoRSS";
            XmlReader reader = XmlReader.Create(url);
            XmlDocument doc = new XmlDocument();
            doc.Load(reader);
            reader.Close();
            string path = HttpContext.Current.Server.MapPath("~/App_Data/public_feeds");
            Debug.WriteLine("DEBUUUUUUG: " + path);
            doc.Save(path);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("manageFeeds.aspx");
        }
    }
}