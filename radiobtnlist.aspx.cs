using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practicestart
{
    public partial class radiobtnlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.RepeatDirection == RepeatDirection.Horizontal)
                RadioButtonList1.RepeatDirection = RepeatDirection.Vertical;
            else
                RadioButtonList1.RepeatDirection=RepeatDirection.Horizontal;
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl = "Image/" + RadioButtonList2.SelectedItem.Text;
        }
       
    }
}