using DatabaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lostpassword : System.Web.UI.Page
{
    protected string displaymessage;
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            //get password
            DataTable dt = new DataTable();
            clsjobtblprofile objusers = new clsjobtblprofile();
            objusers.emailaddress = txtemail.Text;
            dt = objusers.Select();
            if (dt.Rows.Count > 0)
            {
                string password = "";
                foreach (DataRow dr in dt.Rows)
                {
                    password = dr["password"].ToString();
                }
                StringBuilder bodytext = new StringBuilder();
                bodytext.Append("Your Password for UOL Employment Potal" + Environment.NewLine);
                bodytext.Append("  -  " + Environment.NewLine);
                bodytext.Append("Email" + Environment.NewLine);
                bodytext.Append(txtemail.Text + Environment.NewLine);
                bodytext.Append(Environment.NewLine);
                bodytext.Append("Password" + Environment.NewLine);
                bodytext.Append(password + Environment.NewLine);

                string subject = "Account Information to access Employement Portal.";
                string body = bodytext.ToString();

                string toemail = txtemail.Text;

                bool sent;

                sent = utl.sendemail(toemail, subject, Server.HtmlEncode(body), "");
                if (sent == true)
                {
                    displaymessage = utl.successmessage("Password has been sent to given email.");
                }
                else
                {
                    displaymessage = utl.errormessage("Email not sent due to server problem. Try later");
                }
            }
            else
            {
                displaymessage = utl.errormessage("Your email address does not exist. Try again");
            }
        }
        catch (Exception ex)
        {

        }
    }
}