using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ajaxtoolkit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            // check if postback came through AjaxFileUpload control    
            if (AjaxFileUpload1.IsInFileUploadPostBack)
            {
                // do for ajax file upload partial postback request    
            }
            else
            {
                // do for normal page request    
            }
        }
        catch (Exception ex)
        {

        }
    }

    protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {
        try
        {
            string fileNametoupload = Server.MapPath("~/Documents/") + e.FileName.ToString();
            
            AjaxFileUpload1.SaveAs(fileNametoupload);
            
        }
        catch (Exception ex)
        {

        }
        
    }

    protected void AjaxFileUpload1_UploadCompleteAll(object sender, AjaxControlToolkit.AjaxFileUploadCompleteAllEventArgs e)
    {
        lblimagename.Text = TextBox1.Text;
    }

    protected void AsyncFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        try
        {
            string fileNametoupload = Server.MapPath("~/Documents/") + e.FileName.ToString();

            AsyncFileUpload1.SaveAs(fileNametoupload);
            lblimagename.Text = TextBox1.Text;
        }
        catch (Exception ex)
        {

        }

    }
}