using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.IO;

namespace practicestart
{
    
    public partial class dropdownsqlconnectio : System.Web.UI.Page
    {
       
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            //blinddropdown();
            //getcountry();
            //ddlCountriesbind();
            //ddlStatesbind();
            //ddlCitybind();
          
            if(!IsPostBack)
            {
                bleding();
            }

        }
        private void bleding()
        {
            string query = "select * from tblCountry";
            SqlDataAdapter sda = new SqlDataAdapter(query,conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            drop1.DataSource= dt;
            drop1.DataTextField = "County";
            drop1.DataValueField = "CountryId";
            drop1.DataBind();
            drop1.Items.Insert(0, "--select counrty--");
            drop2.Items.Insert(0, "--select counrty--");
            drop3.Items.Insert(0, "--select counrty--");
            drop2.Enabled = false;
            drop3.Enabled = false;
        }

        protected void drop1_SelectedIndexChanged(object sender, EventArgs e)
        {
            drop2.Enabled = true;
            drop3.Enabled = false;
            drop2.ClearSelection();
            blendstate();
        }

        private void blendstate()
        {
            //int countryid = int.Parse(drop1.SelectedValue);
            string query = "select * from tblcountryState";
            SqlDataAdapter sda = new SqlDataAdapter(query,conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            drop2.DataSource= dt;
            drop2.DataTextField = "State";
            drop2.DataValueField = "StateId";
            drop2.DataBind();
            drop2.Items.Insert(0, "--select counrty--");
            drop3.Items.Insert(0, "--select counrty--");

        }

        protected void drop2_SelectedIndexChanged(object sender, EventArgs e)
        {
            drop1.Enabled = true;
            drop2.Enabled = true;
            drop3.Enabled= true;
            drop3.ClearSelection();
            blendcity();
        }
        private void blendcity()
        {

            string query = "select * from tblstateCity";
            SqlDataAdapter sda = new SqlDataAdapter(query,conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            drop3.DataSource= dt;
            drop3.DataTextField = "City";
            drop3.DataValueField = "CityId";
            drop3.DataBind();
            drop3.Items.Insert(0, "--select counrty--");
        }

       

        //private void ddlCountriesbind()
        //{
        //    string query = "select * from tblCountry";
        //    SqlDataAdapter da = new SqlDataAdapter(query, conn);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    ddlCountries.DataSource = dt;
        //    ddlCountries.DataTextField = "County";
        //    ddlCountries.DataValueField = "CountryId";
        //    ddlCountries.DataBind();
        //    ddlCountries.Items.Insert(0, "--select country--");
        //    ddlStates.Items.Insert(0, "--select state--");
        //    ddlCity.Items.Insert(0, "--select city--");
        //    ddlStates.Enabled = false;
        //    ddlCity.Enabled = false;
        //}

        //private void ddlStatesbind()
        //{
        //    int countryid =int.Parse(ddlCountries.SelectedValue);
        //    string query = "select * from tblcountryState where ";
        //    SqlDataAdapter da = new SqlDataAdapter( query, conn);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    ddlStates.DataSource = dt;

        //    ddlStates.DataTextField = "State";
        //    ddlStates.DataValueField = "StateId";
        //    ddlStates.DataBind();
        //    ddlStates.Items.Insert(0, "--select state--");
        //    ddlCity.Enabled = false;
        //}
        //private void ddlCitybind()
        //{
        //    string query = "select * from tblstateCity";
        //    SqlDataAdapter da = new SqlDataAdapter(query, conn);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    ddlCity.DataSource = dt;
        //    ddlCity.DataTextField = "City";
        //    ddlCity.DataValueField = "CityId";
        //    ddlCity.DataBind();
        //    ddlCity.Items.Insert(0, "--select city--");
        //}

        //protected void blinddropdown()
        //{


        //    string query = "select * from Qualification";
        //    SqlDataAdapter dpt = new SqlDataAdapter(query, conn);
        //    DataTable dt = new DataTable();
        //   dpt.Fill(dt);
        //    DropDownList1.DataSource= dt;
        //    DropDownList1.DataTextField = "Qualification";
        //    DropDownList1.DataValueField = "QualificationCode";
        //    DropDownList1.DataBind();

        //}
        //private void getcountry()
        //{
        //    List<string> objcountries = new List<string>();
        //    CultureInfo[] objculture = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
        //    foreach (CultureInfo getculture in objculture)
        //    {
        //        RegionInfo objregion = new RegionInfo(getculture.LCID);
        //        if (!(objcountries.Contains(objregion.EnglishName)))
        //        {
        //            objcountries.Add(objregion.EnglishName);
        //        }
        //    }
        //    objcountries.Sort();
        //    DropDownList2.DataSource = objcountries;
        //    DropDownList2.DataBind();

        //}

        //protected void ddlCountries_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    ddlStates.Enabled = true;
        //    ddlCity.Enabled = false;
        //    ddlStates.ClearSelection();
        //    ddlStatesbind();

        //}

        //protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    ddlCity.Enabled = true;
        //    ddlCity.ClearSelection();
        //    ddlCitybind();
        //}
    }
}