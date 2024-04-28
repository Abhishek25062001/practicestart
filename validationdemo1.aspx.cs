using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;


namespace practicestart
{
    public partial class validationdemo1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropitem();
                RangeValidator2.MinimumValue = DateTime.Now.ToShortDateString();
                RangeValidator2.MaximumValue = DateTime.Now.AddDays(90).ToShortDateString();
                RequiredFieldValidator4.InitialValue = "0";

            }
        }
            
        protected void dropitem()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
            con.Open();
            string query = "select * from tblcountryState";
            SqlDataAdapter adapter = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "State";
            DropDownList1.DataValueField = "StateId";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select state--");

            con.Close();

        }

        protected void imgdate_Click(object sender, ImageClickEventArgs e)
        {
            if (cld.Visible)
            {
                cld.Visible = false;
            }
            else
            {
                cld.Visible = true;
            }
        }

        protected void cld_SelectionChanged(object sender, EventArgs e)
        {
            txtdate.Text = cld.SelectedDate.ToShortDateString();
            cld.Visible = false;
        }
    }
}