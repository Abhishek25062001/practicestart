using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practicestart
{
    public partial class fileuploaddemo2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            //first check file selected or not
            if(FileUpload1.HasFile)
            {
                HttpPostedFile selectedfile = FileUpload1.PostedFile;
                string filetype = selectedfile.ContentType;
                if(filetype == "image/png" || filetype == "image/jpeg" || filetype == "image/jpg")
                {
                    if (selectedfile.ContentLength <= 2100000)
                    {
                        // create folder is not avbailable
                        string filepath = Server.MapPath("~/upload/");
                        if(!Directory.Exists(filepath))
                        {
                            Directory.CreateDirectory(filepath);
                        }
                        // now upload file
                        selectedfile.SaveAs(filepath + FileUpload1.FileName);
                        lblupload.Text = " file is uploaded successfully";
                    }
                    else
                    {
                        lbluploadfail.Text = " image must be equal or less then 2mb";
                    }
                }
                else
                {
                    lbluploadfail.Text = " image must be an image jpg, png, jpeg";
                }
            }
            else
            {
                lbluploadfail.Text = " please select file";
            }
        }

        protected void btnupload2_Click(object sender, EventArgs e)
        {  

            if(FileUpload2.HasFile)
            {
                int count = 0;
                foreach(HttpPostedFile selectedfile2 in FileUpload2.PostedFiles)
                {
                    count += 1;
                    string filepath2 = Server.MapPath("~/upload/");
                    if(!Directory.Exists(filepath2))
                    {
                        Directory.CreateDirectory(filepath2);
                    }
                    selectedfile2.SaveAs(filepath2 + selectedfile2.FileName);
                }
                lblupload2.Text = " file is uploaded successfully";
            }
        }
    }
}