using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practicestart
{
    public partial class listbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListBox1.Items.Add("apple");
                ListBox1.Items.Add("mango");
                ListBox1.Items.Add("banana");
                ListBox1.Items.Add("graps");
                ListBox1.Items.Add("orange");
                ListBox1.Items.Add("pineapple");
                //showtxt.Text = ListBox1.Items.Count.ToString();
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            showtxt.Text= ListBox1.Items.Count.ToString();
        }

        protected void count_Click(object sender, EventArgs e)
        {
            showtxt.Text ="total number of list items :" +ListBox1.Items.Count.ToString();
        }

        protected void add_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Add(TextBox1.Text);
            TextBox1.Text = "";
        }

        protected void show_Click(object sender, EventArgs e)
        {
            var item = from ListItem li in ListBox1.Items
                       where li.Selected
                       select li;
            showtxt.Text = " you have selected .....<br/>";

            foreach ( ListItem li in item)
            {
                showtxt.Text += li.Text +"</br>";
                showtxt.Text += "value" +li.Value +"</br>";

            }
        }

        protected void remove_Click(object sender, EventArgs e)
        {
            
                ListBox1.Items.RemoveAt(0);
          
        }
    }

}
