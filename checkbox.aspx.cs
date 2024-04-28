using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practicestart
{
    public partial class checkbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if(c1.Checked == true)
                whatselect.Text= "you have selected " +c1.Text;
             if (c2.Checked == true)
                whatselect.Text += " <br/> you have selected " + c2.Text;
            if (c3.Checked == true)
                whatselect.Text += " <br/> you have selected " + c3.Text;
            //else
            //    whatselect.Text = "you have selected nothing";
            // for(int i= 0; i<3; i++ )
            //{
            //    if (c(i).Checked == true)
            //        whatselect.Text += c(i).Text;

            //}
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            //if (CheckBox1.Checked == true)
            //    Label1.Text = "you have select " +CheckBox1.Text;
            //if (CheckBox2.Checked == true)
            //    Label1.Text += "<br/>you have also select " + CheckBox2.Text;
            //if(CheckBox3.Checked == true)
            //    Label1.Text += "<br/>you have also select " + CheckBox3.Text;
            //if(CheckBox4.Checked == true)
            //    Label1.Text += "<br/>you have also select " + CheckBox4.Text;
        }

      
        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
                Label1.Text = "you have select " + CheckBox1.Text;
        }
    }
}