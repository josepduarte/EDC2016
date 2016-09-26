﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using tp1.Models;


namespace tp1.Personal
{
    public partial class displayReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var manager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));
            var currentUser = manager.FindById(System.Web.HttpContext.Current.User.Identity.GetUserId());

            SqlDataSource1.SelectParameters["au_fname"].DefaultValue = currentUser.au_fname;
            SqlDataSource1.SelectParameters["au_lname"].DefaultValue = currentUser.au_lname;

        }
    }
}