using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace practicestart
{
    public partial class drop3 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsCallback)
            {
                bleding();
            }

        }

        protected void drop1_SelectedIndexChanged(object sender, EventArgs e)
        {
            drop2.Enabled = true;
            dropdown3.Enabled = false;
            drop2.ClearSelection();
            blendstate();
        }

        protected void drop2_SelectedIndexChanged(object sender, EventArgs e)
        {
            drop1.Enabled = true;
            drop2.Enabled = true;
            dropdown3.Enabled = true;
            dropdown3.ClearSelection();
            blendcity();
        }
        private void bleding()
        {
            string query = "select * from tblCountry";
            SqlDataAdapter sda = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            drop1.DataSource = dt;
            drop1.DataTextField = "County";
            drop1.DataValueField = "CountryId";
            drop1.DataBind();
            drop1.Items.Insert(0, "--select counrty--");
            drop2.Items.Insert(0, "--select counrty--");
            dropdown3.Items.Insert(0, "--select counrty--");
            drop2.Enabled = false;
            dropdown3.Enabled = false;
        }
        private void blendstate()
        {
            //int countryid = int.Parse(drop1.SelectedValue);
            string query = "select * from tblcountryState";
            SqlDataAdapter sda = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            drop2.DataSource = dt;
            drop2.DataTextField = "State";
            drop2.DataValueField = "StateId";
            drop2.DataBind();
            drop2.Items.Insert(0, "--select counrty--");
            dropdown3.Items.Insert(0, "--select counrty--");

        }
        private void blendcity()
        {

            string query = "select * from tblstateCity";
            SqlDataAdapter sda = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dropdown3.DataSource = dt;
            dropdown3.DataTextField = "City";
            dropdown3.DataValueField = "CityId";
            dropdown3.DataBind();
            dropdown3.Items.Insert(0, "--select counrty--");
        }
    }
}