using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practicestart
{
    public partial class fileupload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            //first we have to create an folder to upload an file if there is not available
            //it can be done using code 
            string filepath = Server.MapPath("~/upload/");
            if(!Directory.Exists(filepath))
            {
                Directory.CreateDirectory(filepath);
            }

            //now time for upload an file in that folder that is created
            HttpPostedFile selectedfile = FileUpload1.PostedFile;
            selectedfile.SaveAs(filepath + selectedfile.FileName);
            lblupload.Text = selectedfile.FileName + " uploaded to the server";
        }
    }
}