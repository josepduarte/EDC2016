using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using IMDb_Scraper;

namespace FinalProject
{
    public partial class Teste : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String url = "http://www.omdbapi.com/?s=batman";
            string json = new WebClient().DownloadString(url);

            Debug.WriteLine("JASOOOON: \n" + json.ToString());

            XmlDocument doc = JsonConvert.DeserializeXmlNode(json, "root");

            Debug.WriteLine("\nXMLLLLLLLL: \n" + doc.InnerXml.ToString());

            IMDb imdb = new IMDb("tt0361862", true);

            Debug.WriteLine("TITLE: " + imdb.Poster.ToString());

            string id = imdb.Id.ToString();

            string url2 = "http://lab.abhinayrathore.com/imdb/imdbWebService.php?m=" +
                id + "&o=xml";

            



        }
    }
}