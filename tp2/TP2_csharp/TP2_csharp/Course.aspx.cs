using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_csharp
{
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Curso_xml.XPath = "cursos/curso[@guid='" + Convert.ToInt32(Request.QueryString["ID"]) + "']";
            DetailsView1.DataBind();
        }
    }
}