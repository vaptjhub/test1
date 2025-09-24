using DatabaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
    protected string displaymessage,emailmessage;
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!(IsPostBack))
            {
               
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
            bool user = false;

            // First Check the User Already register or not.

            DataTable dt = new DataTable();
            clsjobtblprofile objusers = new clsjobtblprofile();
            objusers.emailaddress = txtemail.Text;

            dt = objusers.Select();
            if (dt.Rows.Count > 0)
            {
                user = true;
                displaymessage = utl.errormessage("Your email is already registered. In case you forgot your password please <a href='forgetpassword.aspx'>click here</a>");
            }
            else
            {
               // displaymessage = utl.errormessage("Yours email and password does not match, try again");
            }

            if (user == false)
            {
                //  bool inserted;
                objusers.fullname = txtfullname.Text.ToUpper();
                objusers.dateofbirth = Convert.ToDateTime(Getmydate(txtdob.Text));
                //objusers.dateofbirth = Convert.ToDateTime(txtdob.Text);
                objusers.gender = cbogender.Text;
                objusers.maritalstatus = cbomaritalstatus.Text;
                objusers.emailaddress = txtemail.Text;
                objusers.age = get_age(Convert.ToDateTime(Getmydate(txtdob.Text)));
                //objusers.age = get_age(Convert.ToDateTime(txtdob.Text));
                objusers.password = utl.GetUniqueKey(6);
                objusers.fatherorhusband = "fathername";
                if (objusers.Insert() == true)
                {
                    // send email
                    StringBuilder bodytext = new StringBuilder();
                    bodytext.Append("Thanku for registering yourself at UOL Recruitment Potal. Your login details are provided below:" + Environment.NewLine);
                    bodytext.Append("  -  " + Environment.NewLine);
                    bodytext.Append("" + Environment.NewLine);
                    bodytext.Append("Email" + Environment.NewLine);
                    bodytext.Append(txtemail.Text  + Environment.NewLine);
                    bodytext.Append(Environment.NewLine);
                    bodytext.Append("Password" + Environment.NewLine);
                    bodytext.Append(objusers.password + Environment.NewLine);
                    bodytext.Append("  -  " + Environment.NewLine);
                    //bodytext.Append("<a href=='dev.uol.edu.pk/signin'>Click here<a/> to Login your account" + Environment.NewLine);


                    string subject = "Account information to access UOL Recruitment Portal.";
                    string body = bodytext.ToString();

                    string toemail = txtemail.Text;

                    bool sent;

                    sent = utl.sendemail(toemail, subject, Server.HtmlEncode(body), "");
                    if (sent == true)
                    {
                        emailmessage = utl.successmessage("Password has been sent to your email.");
                    }
                    else
                    {
                        emailmessage = utl.errormessage("Email has not been sent due to server problem, please try later!");
                    }
                }
                displaymessage = utl.successmessage("Record successfully added. Please check your email for password and click here to <a href='signin.aspx'>Sign in</a>");
            }
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    public string Getmydate(string d)
    {
        string d1, d2, d3, ldate;
        ldate = "";
        if (d.Length > 0)
        {
            ldate = d;
            d1 = ldate.Substring(0, 2);
            d2 = ldate.Substring(3, 2);
            d3 = ldate.Substring(6, 4);
            ldate = d2 + "/" + d1 + "/" + d3;
        }
        return ldate;
    }

    public int get_age(DateTime dob)
    {
        try
        {
            lblerror.Text = dob.ToString();
            int age = 0;
            age = DateTime.Now.Subtract(dob).Days;
            age = age / 365;
            return age;
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage("age calculation" + ex.Message);
            return 0;
        }
        
    }
}