using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practicestart
{
    public partial class dropdown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //way1
                //DropDownList1.Items.Add("mumbai");
                //DropDownList1.Items.Add(new ListItem("delhi", "1"));

                //way2
                //ListItem locality1 = new ListItem("uttam-nagar", "1");
                //ListItem locality2 = new ListItem("vikashpuri", "2");
                //ListItem locality3 = new ListItem("janakpuri", "3");
                //ListItem locality4 = new ListItem("janakpuri-west", "4");
                //ListItem locality5 = new ListItem("vikash-nagar", "5");
                //ListItem locality6 = new ListItem("sultanpuri", "6");
                //ListItem locality7 = new ListItem("dwarka", "7");
                //ListItem[] locality = new ListItem[] { locality1, locality2, locality3, locality4, locality5, locality6, locality7 };
                //DropDownList1.Items.AddRange(locality);

                //way3
                ListItem[] locality = new ListItem[]
                {
                    new ListItem("uttam-nagar", "1"),
                    new ListItem("vikashpuri", "2"),
                    new ListItem("janakpuri", "3"),
                    new ListItem("janakpuri-west", "4")

                };
                DropDownList1.Items.AddRange(locality);
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //txt.Text = "you have select : " + DropDownList2.SelectedItem.ToString();
        }

        protected void save_Click(object sender, EventArgs e)
        {
            txt1.Text="you have select : " + drop1.SelectedItem.ToString();
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            drop1.Items.Clear();
            txt1.Text = "cleared";
        }

        protected void count_Click(object sender, EventArgs e)
        {
            txt1.Text = "total count is : " + drop1.Items.Count.ToString();
        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            drop1.Items.Add(add.Text);
            txt1.Text = "added";
        }

        protected void itemselect_Click(object sender, EventArgs e)
        {
            txt1.Text = "select item is : " + drop1.SelectedItem.Text;
        }

        protected void selectvalue_Click(object sender, EventArgs e)
        {
            txt1.Text = "select value is : " + drop1.SelectedValue;
        }

        protected void selectindex_Click(object sender, EventArgs e)
        {
            txt1.Text = "select index is : " + drop1.SelectedIndex.ToString();
        }

        protected void remove_Click(object sender, EventArgs e)
        {
            drop1.Items.RemoveAt(drop1.SelectedIndex);
            txt1.Text = "removed";
        }
    }
}