using DatabaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobdetails : System.Web.UI.Page
{
    int _id;
    public int NewWidth;
    protected string displaymessage,jobdepartment, joblocation, jobstitle, jobsdescription, jobtype, jobcategory, joblastdate,jobeducation,jobexperience,jobskills,jobnoofposts,jobsalary;
    protected int srno;
    Utilities m = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //if (Session["jobportal#profileid#@33"] == null)
            //{
            //    Response.Redirect("default.aspx");
            //}

            //Session["page"] = "research";
            string queryvalue = Request.QueryString["id"];
            if (queryvalue != "" && queryvalue != null)
            {
                _id = Convert.ToInt32(m.DecryptConnectionString(Request.QueryString["id"]));
            }

            if (!(IsPostBack))
            {
                if (_id != 0)
                {
                    Search(_id);
                }

            }
        }
        catch (Exception ex)
        {
            displaymessage = m.errormessage(ex.Message);
        }

    }

    private void Search(int id)
    {
        try
        {
            clsjobstbljob objjobs = new clsjobstbljob();
            DataTable dt = new DataTable();
            objjobs.jobid = id;
            dt = objjobs.Select();
            foreach (DataRow dr in dt.Rows)
            {
                jobstitle = dr["jobtitle"].ToString();
                jobcategory = dr["jobtype"].ToString();
                jobtype= dr["jobtime"].ToString();
                joblastdate= Convert.ToDateTime(dr["jobdate"]).ToString("dd/MM/yyyy");
                jobsdescription = dr["jobdescription"].ToString();
                joblocation  = dr["joblocation"].ToString();
                jobdepartment  = dr["departmentname"].ToString();
                jobeducation = dr["jobeducation"].ToString();
                jobexperience = dr["jobexperience"].ToString();
                jobskills = dr["jobskills"].ToString();
                jobnoofposts = dr["jobnoofposts"].ToString();
                jobsalary = dr["jobsalary"].ToString();

                
            }
        }
        catch (Exception ex)
        {
            displaymessage = m.errormessage(ex.Message);
        }
    }
}