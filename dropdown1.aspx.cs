using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;

namespace practicestart
{
    public partial class dropdown1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataSet ds = new DataSet();
                string physicalpath = Server.MapPath("~/products.xml");
                ds.ReadXml(physicalpath);

                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--select options--");


                //for listbox
                ListBox1.DataSource = ds;
                ListBox1.DataTextField = "Name";
                ListBox1.DataValueField = "Id";
                ListBox1.DataBind();

                //for radiolist
                RadioButtonList1.DataSource = ds;
                RadioButtonList1.DataTextField = "Name";
                RadioButtonList1.DataValueField = "Id";
                RadioButtonList1.DataBind();

                //for check box
                CheckBoxList1.DataSource = ds;
                CheckBoxList1.DataTextField = "Name";
                CheckBoxList1.DataValueField = "Id";
                CheckBoxList1.DataBind();
                dropdowndata();

            }
        }


        protected void dropdowndata()
        {
            string query = "select * from qualification";
            SqlDataAdapter da = new SqlDataAdapter(query,con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList2.DataSource = dt;
            //DropDownList2.DataTextField = "Qualification";  
            //DropDownList2.DataValueField = "QualificationCode";
            //DropDownList2.Items.Insert(0, "--select qualification--");
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--select qualification--");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text =  DropDownList1.SelectedIndex > 0 ?DropDownList1.SelectedItem.Text + " " + DropDownList1.SelectedValue.ToString() : "--select first--";

            //if (DropDownList1.SelectedIndex > 0)
            //{
            //    Label1.Text = DropDownList1.SelectedItem.Text + " "+ DropDownList1.SelectedValue.ToString();
            //}   
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (int i in ListBox1.GetSelectedIndices())
            {
                ListItem li = ListBox1.Items[i];
                Label2.Text += li.Value + " : " + li.Text + "<br/>";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label3.Text = RadioButtonList1.SelectedItem !=null ? RadioButtonList1.SelectedValue.ToString() +" : "+ RadioButtonList1.SelectedItem.ToString():" " ;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            foreach(ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    Label4.Text += li.Value + " : " + li.Text + "<br/>";
                }
            }
        }
    }
}