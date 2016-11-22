using System;
using System.Collections.Generic;
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
            doc.Save("C:\\Users\\Bruno Alves\\Documents\\GitHub\\EDC2016\\tp3\\tp3\\public_feeds.xml");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("manageFeeds.aspx");
        }
    }
}