using DatabaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int _id;
    Utilities utl = new Utilities();
    protected int srno,srno1;
    protected string displaymessage;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["jobportal#profileid#@33"] == null)
            {
                header.Visible = false;
                u.Visible = true;
                u1.Visible = false;
                //lblfeedback.Visible = false;
            }
            else
            {
                header.Visible = true;
                u1.Visible = true;
                u.Visible = false;
                //lblfeedback.Visible = true;
                ollogin.Visible = false;
            }
            if (!(IsPostBack))
            {
                GetAllRecord();
                GetAllRecord1();
            }
        }
        catch (Exception ex)
        {

        }
    }

    private void GetAllRecord()
    {
        try
        {
            DataTable dt = new DataTable();
            clsjobstbljob objjobs = new clsjobstbljob();
            if (Session["jobportal#profileid#@33"] == null)
            {
                objjobs.jobstatus = "Open";
                objjobs.jobapproved = "YES";
                objjobs.jobtype = "Academic";
                dt = objjobs.Select();
            }
            else
            {
                objjobs.jobstatus = "Open";
                objjobs.jobapproved = "YES";
                objjobs.jobtype = "Academic";
                objjobs.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
                //dt = objjobs.PostSelect();
                //dt = objjobs.Select();
                dt = objjobs.PostSelect1();
            }
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    private void GetAllRecord1()
    {
        try
        {
            DataTable dt = new DataTable();
            clsjobstbljob objjobs = new clsjobstbljob();
            if (Session["jobportal#profileid#@33"] == null)
            {
                objjobs.jobstatus = "Open";
                objjobs.jobapproved = "YES";
                objjobs.jobtype = "Non-Academic";
                dt = objjobs.Select();
            }
            else
            {
                objjobs.jobstatus = "Open";
                objjobs.jobapproved = "YES";
                objjobs.jobtype = "Non-Academic";
                objjobs.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
                //dt = objjobs.PostSelect();
                //dt = objjobs.Select();
                dt = objjobs.PostSelect1();
            }
            Repeater2.DataSource = dt;
            Repeater2.DataBind();
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    protected string encriptid(string str)
    {
        string en = utl.EncryptConnectionString(str);
        return en;
    }

    protected string getjoblink(string profileid, string jobid, string jobtitle)
    {
        try
        {
            string s;
            s = "";
            //DataTable dt = new DataTable();
            //clsjobstbljob objjob = new clsjobstbljob();
            if (Session["jobportal#profileid#@33"] != null)
            {
                //objjob.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
                //objjob.jobid = Convert.ToInt32(jobid);
                //dt = objjob.PostSelect1();
                if (profileid != "")
                {
                    s = "<span class='btn btn-primary'>Already Applied</span>";
                }
                else
                {
                    s = "<a href='jobs.aspx?id=" + utl.EncryptConnectionString(jobid) + "&jobtitle=" + jobtitle + "' class='btn btn-info'>Apply Now</a>";
                }
                //if (dt.Rows.Count > 0)
                //{
                //    //s = "<a href='#' class='btn btn-primary'>Already Applied</a>";
                //    s = "<span class='btn btn-primary'>Already Applied</span>";
                //}
                //else
                //{
                //    s = "<a href='jobs.aspx?id=" + utl.EncryptConnectionString(jobid) + "&jobtitle=" + jobtitle + "' class='btn btn-info'>Apply Now</a>";
                //}
            }
            else
            {
                s = "<a href='jobs.aspx?id=" + utl.EncryptConnectionString(jobid) + "&jobtitle=" + jobtitle + "' class='btn btn-info'>Apply Now</a>";
            }
            

            return s;
        }
        catch (Exception ex)
        {
            return "";
        }
    }

    protected string getadvertislink(string img)
    {
        try
        {
            if (img == "")
            {
                return "N/A";
            }
            else
            {
                string s = "<a href='images/advertisement/large/" + img + "'>Advertise</a>";
                return "<a target='_blank' href='images/advertisement/large/" + img + "'><img src='images/add-image.png'></a>";
            }

        }
        catch (Exception ex)
        {
            return "";
        }
    }

    public string EncryptConnectionString(string value)
    {
        Byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(value);
        string encryptedConnectionString = Convert.ToBase64String(b);
        return encryptedConnectionString;
    }

}