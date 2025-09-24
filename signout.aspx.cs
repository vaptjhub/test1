using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Session.Clear();
            Session.Abandon();

            Session["jobportal#profileid#@33"] = null;
            Session["jobportal#fullname#@33"] = null;
            Response.Redirect("Home");
        }
        catch (Exception ex)
        {

        }
    }
}