using DatabaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signin : System.Web.UI.Page
{
    protected string displaymessage;
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

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
            objusers.emailaddress = txtemail.Text;
            objusers.password = txtpassword.Text;
            dt = objusers.Select();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Session["jobportal#profileid#@33"] = dr["profileid"].ToString();
                    Session["jobportal#fullname#@33"] = dr["fullname"].ToString();
                }

                Response.Redirect("home");
            }
            else
            {
                displaymessage = utl.errormessage("Email and / or password mismatch. Try again");
            }
        }
        catch (Exception ex)
        {

        }
    }
}