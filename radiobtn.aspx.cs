using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practicestart
{
    public partial class radiobtn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            message.Text= female.Checked ?" you have selected " + female.Text :( male.Checked ? "you have selected " + male.Text:(other.Checked? "you have selected " + other.Text: "you have selected nothing"));
            //message.Text = female.Checked==true ? " you have selected " + female.Text : (male.Checked==true ? "you have selected " + male.Text : (other.Checked==true ? "you have selected " + other.Text : "you have selected nothing"));
            //if(female.Checked)
            //    message.Text = "you have selected an female";
            //else if (male.Checked)
            //    message.Text = "you have selected male";
            //else
            //message.Text= "you have selected other";
        }
    }
}