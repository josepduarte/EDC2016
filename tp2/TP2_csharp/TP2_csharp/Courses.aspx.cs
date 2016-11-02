using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace TP2_csharp
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void On_grau_changed(object sender, EventArgs e)
        {
         
            string grau = DropDownList1.SelectedValue;
            string local = DropDownList2.SelectedValue;

            if (grau != string.Empty && local != string.Empty)
            {
                listOfCourses_XLM.XPath = "cursos/curso[@grau='" + grau + "' and @local='" + local + "']";
            }
            else if(grau != string.Empty)
            {
                listOfCourses_XLM.XPath = "cursos/curso[@grau='" + grau + "']";
            }
            else if(local != string.Empty)
            {
                listOfCourses_XLM.XPath = "cursos/curso[@local='" + local + "']";
            }
            else
            {
                listOfCourses_XLM.XPath = "cursos/curso";
            }
            listOfCourses_XLM.DataBind();
            GridView1.DataBind();

         //   DropDownList1.SelectedIndex = -1;
         //   DropDownList2.SelectedIndex = -1;

        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
        
        }

        protected void OnPageIndexChanged(object sender, EventArgs e)
        {

        }
    }
}