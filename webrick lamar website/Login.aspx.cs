using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webrick_lamar_website.DataSet1TableAdapters;

namespace webrick_lamar_website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit(object sender, EventArgs e)
        {
            UsersTableAdapter UsersTbl = new UsersTableAdapter();
            
            if (UsersTbl.ScalarQuery(userName.Text, password.Text) == 1) 
            {
                Session["username"] = userName.Text;
                Response.Redirect("main.html");
            }
            

        }
    }
}