using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webrick_lamar_website
{
    public partial class general_facts : System.Web.UI.Page
    {
        string[] tags = new string[]
        {
            "Full Name",
            "Birth Date and Place",
            "Influence",
            "Iconic Songs",
            "Collaborations"
        };

        string[] facts = new string[]
        {
    "Kendrick Lamar Duckworth is his full name.0",
    "He was born on June 17, 1987, in Compton, California.1",
    "He is one of the most critically acclaimed and influential rappers of all time.2",
    "Some of Lamar’s most iconic songs include “HUMBLE.”, “Alright.”, “DNA.”, and “Swimming Pools (Drank)”.3",
    "He has collaborated with some of the biggest names in music, including Beyoncé, Rihanna, and Taylor Swift.4",
    "He was inspired to venture into music by Tupac Shakur and Dr. Dre.2",
    "He graduated from Centennial High School in Compton, California, in 2005 as a straight-A student.1",
    "He signed with the independent record label Top Dawg Entertainment in 2005.4",
    "He was formerly known as K. Dot.0",
    "He began to gain major recognition in 2010, after his first retail release, Overly Dedicated.3",
    "In March 2015, Lamar released his third album, To Pimp a Butterfly, which peaked at number one in various countries, including the U.S. and the UK.2"
        };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 0; i < tags.Length; i++)
                {
                    DropDownList.Items.Add(new ListItem(tags[i].ToString(), i.ToString()));
                }
            }
        }
        protected void onSubmit(object sender, EventArgs e)
        {
            int num = 1;
            foreach (string fact in facts)
            {
                if (fact[fact.Length - 1] == DropDownList.SelectedIndex.ToString().ToCharArray()[0])
                {
                    Label label = new Label();
                    placeHolder.Controls.Add(label);
                    label.Text = $"{num}. {fact.Substring(0, fact.Length - 1)}";
                    label.CssClass = "fact";
                    num++;
                }
            }
        }
    }
}