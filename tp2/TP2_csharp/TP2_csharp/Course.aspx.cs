using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace TP2_csharp
{
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string guid = Request.QueryString["ID"];
            if (guid == null)
            {
                guid = "54";
            }
            string url = "http://acesso.ua.pt/xml/curso.asp?i=" + guid;

            XmlDataSource1.DataFile = url;
            DetailsView1.DataBind();

        }
    }
}