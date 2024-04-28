using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practicestart
{
    public partial class bulletlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> courses = new List<string>();
                courses.Add("bca");
                courses.Add("mca");
                courses.Add("ba");
                courses.Add("ma");
                courses.Add("btech");
                courses.Add("mtech");
                BulletedList1.DataSource = courses;
                BulletedList1.DataBind();

            }
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "circle":
                    {
                        BulletedList1.BulletStyle = BulletStyle.Circle;
                        break;
                    }
                case "disk":
                    {
                        BulletedList1.BulletStyle = BulletStyle.Disc;
                        break;
                    }
                case "square":
                    {
                        BulletedList1.BulletStyle = BulletStyle.Square;
                        break;
                    }
                case "numeric":
                    {
                        BulletedList1.BulletStyle = BulletStyle.Numbered;
                        break;
                    }
                case "alphabet":
                    {
                        BulletedList1.BulletStyle = BulletStyle.UpperAlpha;
                        break;
                    }
                case "roman":
                    {
                        BulletedList1.BulletStyle = BulletStyle.UpperRoman;
                        break;
                    }
            
            }
        }
    }
}