using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testimage : System.Web.UI.Page
{
    public int NewWidth;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPreview_Click(object sender, EventArgs e)
    {
        try
        {
            string dir = Server.MapPath(".") + "\\Images\\Profile\\";
            string thisDir = Server.MapPath(".") + "\\Images\\Profile\\";
            string tempdir = Server.MapPath(".") + "\\Images\\Temp\\";

            // temporary save file in qecnewa temp folder
            //fupImage.SaveAs(tempdir + "\\1.jpg");

            string ofilename = string.Format("{0:ddMMyyyy-HHmmss}", DateTime.Now) + ".jpg";
            
            if (fupImage.PostedFile.ContentLength < 1024000)
            {
                fupImage.SaveAs(tempdir + "\\" + ofilename);

                string OrginalFileName = tempdir + ofilename;
                string currtime = ofilename;
                //currtime = currtime.Replace(':', '-');
                lblimagetitle1.Text = currtime;

                // Title
                NewWidth = 480;
                if (resizeImage(currtime, "title", OrginalFileName, 1))
                {
                }

                // Thumbnail
                NewWidth = 150;
                if (resizeImage(currtime, "thumbnail", OrginalFileName, 1))
                {
                }

                // large
                NewWidth = 800;
                if (resizeImage(currtime, "large", OrginalFileName, 1))
                {
                }
            }
            else
            {
                //displaymessage = m.errormessage("File Size should be less then 1 mb");
                Response.Write("<script>alert('File Size should be less then 1 mb.');</script>");
            }
        }
        catch (Exception ex)
        {
            lblimageerror.Text = ex.Message;
        }
    }


    protected bool resizeImage(string newFilename, string imagetype, string originalFileName, int BtnNumber)
    {

        Bitmap tmpImage = default(Bitmap);
        Bitmap newImage = default(Bitmap);
        Graphics g = default(Graphics);
        int newHeight = 0;
        FileStream fs = default(FileStream);
        if (File.Exists(originalFileName))
        {
            try
            {
                fs = new FileStream(originalFileName, FileMode.Open);
                tmpImage = (Bitmap)Bitmap.FromStream(fs);
                fs.Close();

                newHeight = (NewWidth * tmpImage.Height) / tmpImage.Width;
                newImage = new Bitmap(NewWidth, newHeight);

                g = Graphics.FromImage(newImage);
                g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
                g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                g.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;
                g.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
                g.CompositingMode = System.Drawing.Drawing2D.CompositingMode.SourceOver;
                g.DrawImage(tmpImage, 0, 0, NewWidth, newHeight);
                g.Dispose();


                string dir = Server.MapPath(".") + "\\images\\profile\\";
                dir = dir.ToLower();
                string location = dir.Replace("admin\\", "");

                if (imagetype == "title")
                {
                    newImage.Save(location + "\\title\\" + newFilename + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);
                }
                if (imagetype == "large")
                {
                    newImage.Save(location + "\\large\\" + newFilename + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);
                }
                if (imagetype == "thumbnail")
                {
                    newImage.Save(location + "\\thumbnail\\" + newFilename + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);
                }


                if (BtnNumber == 1)
                {
                    ImagePreview1.ImageUrl = "../images/profile/thumbnail/" + newFilename + ".jpg";
                    HyperLink1.NavigateUrl = "../images/profile/thumbnail/" + newFilename + ".jpg";
                }

                //newImage.Save(HttpContext.Current.Server.MapPath(Path + newFileName), System.Drawing.Imaging.ImageFormat.Jpeg);
                newImage.Dispose();
                tmpImage.Dispose();

                tmpImage = null;
                newImage = null;
                g = null;
                return true;
            }
            catch (Exception ex)
            {

                tmpImage = null;
                newImage = null;
                g = null;
                return false;
            }
        }
        else
        {

            tmpImage = null;
            newImage = null;
            g = null;
            return false;
        }
    }
}