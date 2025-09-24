using DatabaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changepassword : System.Web.UI.Page
{
    protected string displaymessage;
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["jobportal#profileid#@33"] == null)
            {
                Response.Redirect("signin");
            }
        }
        catch (Exception ex)
        {

        }
    }

    protected void cmdsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            //get personid
            DataTable dt = new DataTable();
            clsjobtblprofile objusers = new clsjobtblprofile();
             objusers.password = txtoldpassword.Text;
            dt = objusers.Select();
            if (dt.Rows.Count > 0)
            {
                if (objusers.ChangePassword(Convert.ToInt32(Session["jobportal#profileid#@33"]), txtnewpassword.Text)) {
                    displaymessage = utl.successmessage("Password has been changed successfully!");
                }
            }
            else
            {
                //string s = "Current Password does not match! if you forget password" + Click here";
                displaymessage = utl.errormessage("Current Password does not match! <a href='forgetpassword.aspx'>Click here</a> forget password");
            }
        }
        catch (Exception ex)
        {

        }
    }
}