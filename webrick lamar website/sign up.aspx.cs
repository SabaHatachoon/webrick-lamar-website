using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webrick_lamar_website.DataSet1TableAdapters;

namespace webrick_lamar_website
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void submit(object sender, EventArgs e)
        {
            int num = 0;
            if (userName.Text == "")
                num++;
            if (firstName.Text == "")
                num++;
            if (lastName.Text == "")
                num++;
            if (password.Text == "")
                num++;
            if (sexChoise.SelectedIndex == -1)
                num++;
            if (state.SelectedIndex == 0)
                num++;
            if (termsOfConditions.Checked)
                num++;


            if (num > 4)
                errorMessage.Text = "ahhhhh almost nothing is filled, ";
            else if(num < 4 && num > 1)
                errorMessage.Text = $"almost there buddy, {num} more to go!, ";


            if (num == 7)
                errorMessage.Text += "oops something is wrong.";
            else
                errorMessage.Text += "check the terms of conditions!!!!";
            UsersTableAdapter UsersTbl = new UsersTableAdapter();
            if (UsersTbl.CheckUser(userName.Text) > 0)

            {
                errorMessage.Text = "User Already Exist";
            }
              
            else
            {
                UsersTbl.Insert(userName.Text, firstName.Text, lastName.Text, password.Text , sexChoise.Text);
            }
                
        }
    }
}