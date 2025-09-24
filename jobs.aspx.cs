using DatabaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobs : System.Web.UI.Page
{
    public int NewWidth;
    protected string jobtitle;
    protected string displaymessage;
    protected int srno;
    protected string four, five;
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["jobportal#profileid#@33"] == null) {
                Response.Redirect("~/signin");
            }


            string queryvalue = Request.QueryString["jobtitle"];
            //string queryvalue = this.Page.RouteData.Values["jobid"].ToString();
            if (queryvalue != "" && queryvalue != null)
            {
                jobtitle = Request.QueryString["jobtitle"];
                //jobtitle = this.Page.RouteData.Values["jobtitle"].ToString();
            }
            if (!(IsPostBack))
            {
                lbluniversityrelation.Visible = false;
                txtothers.Visible = false;
                cborelevantexperienceyear.Visible = false;
                cborelevantexperiencemonth.Visible = false;
                lblrelevantexperience.Visible = false;
                GetProfile();
                FillDropDown();
                FillDateofBirth();
                FillCity();
                FillYear();
                FillFromTo();
                SetInitialRow();
                FillAcademic();
                FillProfessional();
                FillEmployee();
                
            }
        }
        catch (Exception ex)
        {

        }
    }

    private void FillDropDown()
    {
        try
        {
            // fill experience year
            for (int i = 0; i < 50; i++)
            {
                try
                {
                    //cbototalexperienceyear.Items.Add(i.ToString());

                    //cboyears.Items.Add(Convert.ToString(currentyear - i));
                }
                catch (Exception ex)
                {
                    string de = ex.Message;
                }
            }

            // fill experience month
            for (int i = 0; i < 50; i++)
            {
                try
                {
                    //cbototalexperiencemonth.Items.Add(i.ToString());
                    //cboyears.Items.Add(Convert.ToString(currentyear - i));
                }
                catch (Exception ex)
                {
                    string de = ex.Message;
                }
            }
        }
        catch (Exception ex)
        {

        }
    }
    private void GetProfile()
    {

        try
        {
            // get personid
             DataTable dt = new DataTable();
            clsjobtblprofile objusers = new clsjobtblprofile();
            objusers.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            dt = objusers.Select();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    txtfullname.Text  = dr["fullname"].ToString();
                    txtemail.Text = dr["emailaddress"].ToString();
                    cbogender.Text = dr["gender"].ToString();
                    cbomaritalstatus.Text = dr["maritalstatus"].ToString();
                    txtdob.Text = Convert.ToDateTime(dr["dateofbirth"]).ToString("dd/MM/yyyy");

                    txtage.Text = dr["age"].ToString();
                    txtfathername.Text = dr["fathername"].ToString();
                    if (dr["fatherorhusband"].ToString() == "fathername")
                    {
                        optionfatherhusband.SelectedIndex = 0;
                    }
                    else
                    {
                        optionfatherhusband.SelectedIndex = 1;
                    }
                    txtcnic.Text = dr["cnic"].ToString();
                    txtaddress.Text = dr["address"].ToString();
                    //DropDownList c =  (DropDownList)UpdatePanel4.FindControl("cityofresidence");
                    //c.Text = dr["cityofresidence"].ToString();
                    //cbocityofresidence.SelectedValue  = dr["cityofresidence"].ToString();
                    //cbocityofresidence.Text  = dr["cityofresidence"].ToString();
                    if (dr["cityofresidence"].ToString() == "")
                    {
                        insertcity.Visible = true;
                        changecity.Visible = false;
                    }
                    else
                    {
                        txtcityofresidence.Text = dr["cityofresidence"].ToString();
                        changecity.Visible = true;
                        insertcity.Visible = false;
                    }
                    cbocityofresidence.Text = "Lahore";
                    txtcontactno.Text = dr["contactno"].ToString(); ;
                    txtcurrentsalary.Text = dr["currentsalary"].ToString(); ;
                    txtexpectedsalary.Text = dr["expectedsalary"].ToString(); ;
                    cbonoticperiod.Text = dr["noticperiod"].ToString();
                    txtexperienceoverview.Value = dr["experienceoverview"].ToString();
                    cbototalexperienceyear.Text = dr["totalexperienceyear"].ToString();
                    cbototalexperiencemonth.Text  = dr["totalexperiencemonth"].ToString();
                    txtsill.Value = dr["skills"].ToString();
                    cbouniversity.Text = dr["relativeinuniversity"].ToString();
                    if (dr["relativeinuniversity"].ToString() == "YES")
                    {
                        lbluniversityrelation.Visible = true;
                        txtname.Text = dr["relativename"].ToString();
                        txtposition.Text = dr["relativeposition"].ToString();
                        txtdepartment.Text = dr["relativedepartment"].ToString();
                    }
                    else
                    {
                        lbluniversityrelation.Visible = false;
                    }
                    if (dr["imgpath"].ToString() != "")
                    {
                        lblimagetitle1.Text = dr["imgpath"].ToString();
                        ImagePreview1.ImageUrl = "images/profile/thumbnail/" + lblimagetitle1.Text;
                        HyperLink1.NavigateUrl = "../images/profile/large/" + lblimagetitle1.Text;
                    } else
                    {
                        ImagePreview1.ImageUrl = "images/user.jpg";
                       // HyperLink1.Visible = false;
                    }

                    if (dr["cvpath"].ToString() != "")
                    {
                        lblcv.Text = dr["cvpath"].ToString();
                        ImagePreview2.ImageUrl = "images/pdf-to-word.png";
                        HyperLink2.NavigateUrl = "../cv/" + lblcv.Text;
                    }
                    else
                    {
                        ImagePreview2.ImageUrl = "images/empty.jpg";
                        //HyperLink2.Visible = false;
                    }
                    cborelevantexperienceyear.Text = dr["relevantexperienceyear"].ToString();
                    cborelevantexperiencemonth.Text = dr["relevantexperiencemonth"].ToString();
                    txtspecializations.Value = dr["specilization"].ToString();
                    txtnationality.Text = dr["nationality"].ToString();

                    // get the department id
                    clsjobstbljob objjob = new clsjobstbljob();
                    DataTable dt1 = new DataTable();
                    objjob.jobid = Convert.ToInt32(utl.DecryptConnectionString(Request.QueryString["id"]));
                    dt1 = objjob.Select();
                    string jobresearchoption = "";

                    foreach (DataRow dr1 in dt1.Rows)
                    {
                       jobresearchoption  = dr1["jobreseachoption"].ToString();
                       
                    }

                    if (jobresearchoption == "YES") {
                        four = "5";
                        five = "6";
                        liresearch.Visible = true;
                        w2research.Visible = true;
                    }
                    else
                    {
                        four = "4";
                        five = "5";
                        liresearch.Visible = false;
                        w2research.Visible = false;
                    }
                    // research and publication
                    txttotalpub.Text = dr["totalpub"].ToString();
                    txttotalpubinfiveyears.Text = dr["totalpubinfiveyears"].ToString();
                    txttotalprincipalauthor.Text = dr["totalprincipalauthor"].ToString();
                    txttotalimpactfactor.Text = dr["totalimpactfactor"].ToString();
                    txttotalcitations.Text = dr["totalcitations"].ToString();
                    txttotalconferences.Text = dr["totalconferences"].ToString();
                    txttotalbooks.Text = dr["totalbooks"].ToString();
                    cbophdapproved.Text = dr["phdappprofessor"].ToString();
                    txtpcdregistrationno.Text = dr["pcdregistrationno"].ToString();
                }
            }
            else
            {
                //displaymessage = utl.errormessage("Yours email and password does not match, try again");
            }

        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    private void FillFromTo()
    {
        try
        {
            for (int i = 0; i < 50; i++)
            {
                try
                {
                    
                    //cboyears.Items.Add(Convert.ToString(currentyear - i));
                }
                catch (Exception ex)
                {
                    string de = ex.Message;
                }

            }
        }
        catch (Exception ex)
        {

        }
    }

    private void FillDateofBirth()
    {
        try
        {


        }
        catch (Exception ex)
        {

        }
    }

    private void FillYear()
    {
        //DateTime n = new DateTime();
        //int currentyear = Convert.ToInt32(DateTime.Now.Year.ToString());
        ////currentyear = currentyear - 18;
        ////cboyears.Items.Add("");
        //cboemployementyearfrom.Items.Clear();
        //cboemployementto.Items.Clear();
        //cboemployementyearfrom.Items.Add("");
        //cboemployementto.Items.Add("");
        //for (int i = 0; i < 50; i++)
        //{
        //    try
        //    {
        //        cboemployementyearfrom.Items.Add(Convert.ToString(currentyear - i));
        //        cboemployementto.Items.Add(Convert.ToString(currentyear - i));
        //    }
        //    catch (Exception ex)
        //    {
        //        string de = ex.Message;
        //    }

        //}

        //for (int i = 1; i < 12; i++)
        //{
        //    try
        //    {
        //        cboemployementmonthfrom.Items.Add(i.ToString());
        //  }
        //    catch (Exception ex)
        //    {
        //        string de = ex.Message;
        //     }

        //}
        

    }

    private void setMonth(string m)
    {
        //if (m == "1")
        //{
        //    cbomonth.Text = "January";
        //}
        //else if (m == "2")
        //{
        //    cbomonth.Text = "February";
        //}
        //else if (m == "3")
        //{
        //    cbomonth.Text = "March";
        //}
        //else if (m == "4")
        //{
        //    cbomonth.Text = "April";
        //}
        //else if (m == "5")
        //{
        //    cbomonth.Text = "May";
        //}
        //else if (m == "6")
        //{
        //    cbomonth.Text = "June";
        //}
        //else if (m == "7")
        //{
        //    cbomonth.Text = "July";
        //}
        //else if (m == "8")
        //{
        //    cbomonth.Text = "August";
        //}
        //else if (m == "9")
        //{
        //    cbomonth.Text = "September";
        //}
        //else if (m == "10")
        //{
        //    cbomonth.Text = "October";
        //}
        //else if (m == "11")
        //{
        //    cbomonth.Text = "November";
        //}
        //else if (m == "12")
        //{
        //    cbomonth.Text = "December";
        //}
    }

    private void FillCity()
    {
        try
        {
            cbocityofresidence.Items.Add("");
            cbocityofresidence.Items.Add("Lahore");
            cbocityofresidence.Items.Add("Faisalabad");
            cbocityofresidence.Items.Add("Gujranwala");
            cbocityofresidence.Items.Add("Gujrat");
            cbocityofresidence.Items.Add("Multan");
            cbocityofresidence.Items.Add("Abbottabad");
            cbocityofresidence.Items.Add("Abdul Hakim");
            cbocityofresidence.Items.Add("Ahmadpur East");
            cbocityofresidence.Items.Add("Aliabad");
            cbocityofresidence.Items.Add("Alpurai");
            cbocityofresidence.Items.Add("Athmuqam");
            cbocityofresidence.Items.Add("Attock City");
            cbocityofresidence.Items.Add("Attock Khurd");
            cbocityofresidence.Items.Add("Awaran");
            cbocityofresidence.Items.Add("Badin");
            cbocityofresidence.Items.Add("Bagh");
            cbocityofresidence.Items.Add("Bahawalnagar");
            cbocityofresidence.Items.Add("Bahawalpur");
            cbocityofresidence.Items.Add("Bannu");
            cbocityofresidence.Items.Add("Barkhan");
            cbocityofresidence.Items.Add("Batgram");
            cbocityofresidence.Items.Add("Bhakkar");
            cbocityofresidence.Items.Add("Bhalwal");
            cbocityofresidence.Items.Add("Chakwal");
            cbocityofresidence.Items.Add("Chaman");
            cbocityofresidence.Items.Add("Charsadda");
            cbocityofresidence.Items.Add("Chenab Nagar");
            cbocityofresidence.Items.Add("Chilas");
            cbocityofresidence.Items.Add("Chiniot");
            cbocityofresidence.Items.Add("Chishtian");
            cbocityofresidence.Items.Add("Chitral");
            cbocityofresidence.Items.Add("Chunian");
            cbocityofresidence.Items.Add("Dadu");
            cbocityofresidence.Items.Add("Daggar");
            cbocityofresidence.Items.Add("Dainyor");
            cbocityofresidence.Items.Add("Dalbandin");
            cbocityofresidence.Items.Add("Dasu");
            cbocityofresidence.Items.Add("Dera Allahyar");
            cbocityofresidence.Items.Add("Dera Bugti");
            cbocityofresidence.Items.Add("Dera Ghazi Khan");
            cbocityofresidence.Items.Add("Dera Ismail Khan");
            cbocityofresidence.Items.Add("Dera Murad Jamali");
            cbocityofresidence.Items.Add("Dipalpur");
            cbocityofresidence.Items.Add("Eidgah");
            cbocityofresidence.Items.Add("Gakuch");
            cbocityofresidence.Items.Add("Gandava");
            cbocityofresidence.Items.Add("Ghotki");
            cbocityofresidence.Items.Add("Gilgit");
            cbocityofresidence.Items.Add("Gojra");
            cbocityofresidence.Items.Add("Gwadar");
            cbocityofresidence.Items.Add("Hafizabad");
            cbocityofresidence.Items.Add("Hangu");
            cbocityofresidence.Items.Add("Haripur");
            cbocityofresidence.Items.Add("Harunabad");
            cbocityofresidence.Items.Add("Hasilpur");
            cbocityofresidence.Items.Add("Hassan Abdal");
            cbocityofresidence.Items.Add("Hujra Shah Muqim");
            cbocityofresidence.Items.Add("Hyderabad City");
            cbocityofresidence.Items.Add("Islamabad");
            cbocityofresidence.Items.Add("Jacobabad");
            cbocityofresidence.Items.Add("Jalalpur Jattan");
            cbocityofresidence.Items.Add("Jamshoro");
            cbocityofresidence.Items.Add("Jaranwala");
            cbocityofresidence.Items.Add("Jhang City");
            cbocityofresidence.Items.Add("Jhelum");
            cbocityofresidence.Items.Add("Kabirwala");
            cbocityofresidence.Items.Add("Kahror Pakka");
            cbocityofresidence.Items.Add("Kalat");
            cbocityofresidence.Items.Add("Kamalia");
            cbocityofresidence.Items.Add("Kandhkot");
            cbocityofresidence.Items.Add("Karachi");
            cbocityofresidence.Items.Add("Karak");
            cbocityofresidence.Items.Add("Kasur");
            cbocityofresidence.Items.Add("Khairpur Mir’s");
            cbocityofresidence.Items.Add("Khanewal");
            cbocityofresidence.Items.Add("Khanpur");
            cbocityofresidence.Items.Add("Kharan");
            cbocityofresidence.Items.Add("Kharian");
            cbocityofresidence.Items.Add("Khushab");
            cbocityofresidence.Items.Add("Khuzdar");
            cbocityofresidence.Items.Add("Khuzdar");
            cbocityofresidence.Items.Add("Kohat");
            cbocityofresidence.Items.Add("Kohlu");
            cbocityofresidence.Items.Add("Kot Addu");
            cbocityofresidence.Items.Add("Kotli");
            cbocityofresidence.Items.Add("Kulachi");
            cbocityofresidence.Items.Add("Kundian");
            cbocityofresidence.Items.Add("Lakki");
            cbocityofresidence.Items.Add("Lala Musa");
            cbocityofresidence.Items.Add("Larkana");
            cbocityofresidence.Items.Add("Leiah");
            cbocityofresidence.Items.Add("Lodhran");
            cbocityofresidence.Items.Add("Loralai");
            cbocityofresidence.Items.Add("Malakand");
            cbocityofresidence.Items.Add("Mandi Bahauddin");
            cbocityofresidence.Items.Add("Mandi Burewala");
            cbocityofresidence.Items.Add("Mansehra");
            cbocityofresidence.Items.Add("Mardan");
            cbocityofresidence.Items.Add("Mastung");
            cbocityofresidence.Items.Add("Matiari");
            cbocityofresidence.Items.Add("Mian Channun");
            cbocityofresidence.Items.Add("Mianwali");
            cbocityofresidence.Items.Add("Mingaora");
            cbocityofresidence.Items.Add("Mirpur Khas");
            cbocityofresidence.Items.Add("Muridke");
            cbocityofresidence.Items.Add("Musa Khel Bazar");
            cbocityofresidence.Items.Add("Muzaffarabad");
            cbocityofresidence.Items.Add("Muzaffargarh");
            cbocityofresidence.Items.Add("Nankana Sahib");
            cbocityofresidence.Items.Add("Narowal");
            cbocityofresidence.Items.Add("Naushahro Firoz");
            cbocityofresidence.Items.Add("Nawabshah");
            cbocityofresidence.Items.Add("New Mirpur");
            cbocityofresidence.Items.Add("Nowshera");
            cbocityofresidence.Items.Add("Okara");
            cbocityofresidence.Items.Add("Pakpattan");
            cbocityofresidence.Items.Add("Panjgur");
            cbocityofresidence.Items.Add("Parachinar");
            cbocityofresidence.Items.Add("Pasrur");
            cbocityofresidence.Items.Add("Pattoki");
            cbocityofresidence.Items.Add("Peshawar");
            cbocityofresidence.Items.Add("Pishin");
            cbocityofresidence.Items.Add("Qila Saifullah");
            cbocityofresidence.Items.Add("Quetta");
            cbocityofresidence.Items.Add("Rahimyar Khan");
            cbocityofresidence.Items.Add("Rajanpur");
            cbocityofresidence.Items.Add("Rawala Kot");
            cbocityofresidence.Items.Add("Rawalpindi");
            cbocityofresidence.Items.Add("Risalpur Cantonment");
            cbocityofresidence.Items.Add("Saddiqabad");
            cbocityofresidence.Items.Add("Sahiwal");
            cbocityofresidence.Items.Add("Saidu Sharif");
            cbocityofresidence.Items.Add("Sambrial");
            cbocityofresidence.Items.Add("Samundri");
            cbocityofresidence.Items.Add("Sanghar");
            cbocityofresidence.Items.Add("Sargodha");
            cbocityofresidence.Items.Add("Shahdad Kot");
            cbocityofresidence.Items.Add("Shakargarh");
            cbocityofresidence.Items.Add("Shekhupura");
            cbocityofresidence.Items.Add("Shikarpur");
            cbocityofresidence.Items.Add("Shujaabad");
            cbocityofresidence.Items.Add("Sialkot City");
            cbocityofresidence.Items.Add("Sibi");
            cbocityofresidence.Items.Add("Sukkur");
            cbocityofresidence.Items.Add("Swabi");
            cbocityofresidence.Items.Add("Tando Allahyar");
            cbocityofresidence.Items.Add("Tando Muhammad Khan");
            cbocityofresidence.Items.Add("Tank");
            cbocityofresidence.Items.Add("Thatta");
            cbocityofresidence.Items.Add("Timargara");
            cbocityofresidence.Items.Add("Toba Tek Singh");
            cbocityofresidence.Items.Add("Turbat");
            cbocityofresidence.Items.Add("Umarkot");
            cbocityofresidence.Items.Add("Upper Dir");
            cbocityofresidence.Items.Add("Uthal");
            cbocityofresidence.Items.Add("Vihari");
            cbocityofresidence.Items.Add("Zhob");
            cbocityofresidence.Items.Add("Ziarat");
            cbocityofresidence.Items.Add("Other");
        }
        catch (Exception ex)
        {

        }
    }
    private void SetInitialRow()
    {
        //DataTable dt = new DataTable();
        //DataRow dr = null;
        //dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        //dt.Columns.Add(new DataColumn("Column1", typeof(string)));
        //dt.Columns.Add(new DataColumn("Column2", typeof(string)));
        //dt.Columns.Add(new DataColumn("Column3", typeof(string)));
        //dt.Columns.Add(new DataColumn("Column4", typeof(string)));
        //dt.Columns.Add(new DataColumn("Column5", typeof(string)));
        //dt.Columns.Add(new DataColumn("Column6", typeof(string)));
        //dt.Columns.Add(new DataColumn("Column7", typeof(string)));
        //dt.Columns.Add(new DataColumn("Column8", typeof(string)));
        //dr = dt.NewRow();
        //dr["RowNumber"] = 1;
        //dr["Column1"] = string.Empty;
        //dr["Column2"] = string.Empty;
        //dr["Column3"] = string.Empty;
        //dr["Column4"] = string.Empty;
        //dr["Column5"] = string.Empty;
        //dr["Column6"] = string.Empty;
        //dr["Column7"] = string.Empty;
        //dr["Column8"] = string.Empty;
        //dt.Rows.Add(dr);

        ////Store the DataTable in ViewState
        //ViewState["academic"] = dt;

        //gvacademic.DataSource = dt;
        //gvacademic.DataBind();

        // for professional

        //DataTable dt1 = new DataTable();
        //DataRow dr1 = null;
        //dt1.Columns.Add(new DataColumn("RowNumber1", typeof(string)));
        //dt1.Columns.Add(new DataColumn("Column1", typeof(string)));
        //dt1.Columns.Add(new DataColumn("Column2", typeof(string)));
        //dt1.Columns.Add(new DataColumn("Column3", typeof(string)));
        //dt1.Columns.Add(new DataColumn("Column4", typeof(string)));
        //dt1.Columns.Add(new DataColumn("Column5", typeof(string)));
        //dt1.Columns.Add(new DataColumn("Column6", typeof(string)));
        //dr1 = dt1.NewRow();
        //dr1["RowNumber1"] = 1;
        //dr1["Column1"] = string.Empty;
        //dr1["Column2"] = string.Empty;
        //dr1["Column3"] = string.Empty;
        //dr1["Column4"] = string.Empty;
        //dr1["Column5"] = string.Empty;
        //dr1["Column6"] = string.Empty;
        //dt1.Rows.Add(dr1);

        ////Store the DataTable in ViewState
        //ViewState["professional"] = dt1;

        //gvprofessional.DataSource = dt1;
        //gvprofessional.DataBind();

        // for Employee

        //DataTable dt2 = new DataTable();
        //DataRow dr2 = null;
        //dt2.Columns.Add(new DataColumn("RowNumber2", typeof(string)));
        //dt2.Columns.Add(new DataColumn("Column1", typeof(string)));
        //dt2.Columns.Add(new DataColumn("Column2", typeof(string)));
        //dt2.Columns.Add(new DataColumn("Column3", typeof(string)));
        //dt2.Columns.Add(new DataColumn("Column4", typeof(string)));
        //dt2.Columns.Add(new DataColumn("Column5", typeof(string)));
        //dt2.Columns.Add(new DataColumn("Column6", typeof(string)));
        //dt2.Columns.Add(new DataColumn("Column7", typeof(string)));
        //dt2.Columns.Add(new DataColumn("Column8", typeof(string)));
        //dr2 = dt2.NewRow();
        //dr2["RowNumber2"] = 1;
        //dr2["Column1"] = string.Empty;
        //dr2["Column2"] = string.Empty;
        //dr2["Column3"] = string.Empty;
        //dr2["Column4"] = string.Empty;
        //dr2["Column5"] = string.Empty;
        //dr2["Column6"] = string.Empty;
        //dr2["Column7"] = string.Empty;
        //dr2["Column8"] = string.Empty;
        //dt2.Rows.Add(dr2);

        ////Store the DataTable in ViewState
        //ViewState["employee"] = dt2;

        //gvemployee.DataSource = dt2;
        //gvemployee.DataBind();

    }

    protected void btnacademicadd_OnClick(object sender, EventArgs e)
    {
        try
        {
            int rowIndex = 0;

            if (ViewState["academic"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["academic"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values
                        DropDownList box1 = (DropDownList)gvacademic.Rows[rowIndex].Cells[1].FindControl("cboacademictype");
                        TextBox box2 = (TextBox)gvacademic.Rows[rowIndex].Cells[2].FindControl("txtprogramtitle");
                        TextBox box3 = (TextBox)gvacademic.Rows[rowIndex].Cells[3].FindControl("txtspecialization");
                        TextBox box4 = (TextBox)gvacademic.Rows[rowIndex].Cells[4].FindControl("txtuniversity");
                        TextBox box5 = (TextBox)gvacademic.Rows[rowIndex].Cells[5].FindControl("txtacademiccity");
                        TextBox box6 = (TextBox)gvacademic.Rows[rowIndex].Cells[6].FindControl("txtacademiccountry");
                        DropDownList box7 = (DropDownList)gvacademic.Rows[rowIndex].Cells[7].FindControl("cboacademicfrom");
                        DropDownList box8 = (DropDownList)gvacademic.Rows[rowIndex].Cells[7].FindControl("cboacademicto");
                        TextBox box9 = (TextBox)gvacademic.Rows[rowIndex].Cells[8].FindControl("txtmarks");

                        drCurrentRow = dtCurrentTable.NewRow();
                        drCurrentRow["RowNumber"] = i + 1;

                        dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;
                        dtCurrentTable.Rows[i - 1]["Column2"] = box2.Text;
                        dtCurrentTable.Rows[i - 1]["Column3"] = box3.Text;
                        dtCurrentTable.Rows[i - 1]["Column4"] = box4.Text;
                        dtCurrentTable.Rows[i - 1]["Column5"] = box5.Text;
                        dtCurrentTable.Rows[i - 1]["Column6"] = box6.Text;
                        dtCurrentTable.Rows[i - 1]["Column7"] = box7.Text;
                        dtCurrentTable.Rows[i - 1]["Column8"] = box8.Text;

                        rowIndex++;
                    }
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["academic"] = dtCurrentTable;

                    gvacademic.DataSource = dtCurrentTable;
                    gvacademic.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }

            //Set Previous Data on Postbacks
            if (ViewState["academic"] != null)
            {
                DataTable dt = (DataTable)ViewState["academic"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        DropDownList box1 = (DropDownList)gvacademic.Rows[rowIndex].Cells[1].FindControl("cboacademictype");
                        TextBox box2 = (TextBox)gvacademic.Rows[rowIndex].Cells[2].FindControl("txtprogramtitle");
                        TextBox box3 = (TextBox)gvacademic.Rows[rowIndex].Cells[3].FindControl("txtspecialization");
                        TextBox box4 = (TextBox)gvacademic.Rows[rowIndex].Cells[4].FindControl("txtuniversity");
                        TextBox box5 = (TextBox)gvacademic.Rows[rowIndex].Cells[5].FindControl("txtacademiccity");
                        TextBox box6 = (TextBox)gvacademic.Rows[rowIndex].Cells[6].FindControl("txtacademiccountry");
                        DropDownList box7 = (DropDownList)gvacademic.Rows[rowIndex].Cells[7].FindControl("cboacademicfrom");
                        DropDownList box8 = (DropDownList)gvacademic.Rows[rowIndex].Cells[7].FindControl("cboacademicto");
                        TextBox box9 = (TextBox)gvacademic.Rows[rowIndex].Cells[8].FindControl("txtmarks");

                        box1.Text = dt.Rows[i]["Column1"].ToString();
                        box2.Text = dt.Rows[i]["Column2"].ToString();
                        box3.Text = dt.Rows[i]["Column3"].ToString();
                        box4.Text = dt.Rows[i]["Column4"].ToString();
                        box5.Text = dt.Rows[i]["Column5"].ToString();
                        box6.Text = dt.Rows[i]["Column6"].ToString();
                        box7.Text = dt.Rows[i]["Column7"].ToString();
                        box8.Text = dt.Rows[i]["Column8"].ToString();
                        box9.Text = dt.Rows[i]["Column9"].ToString();

                        rowIndex++;
                    }
                }
            }
        }
        catch (Exception ex)
        {
            string s = ex.Message;
        }
    }

    protected void btnacademicdel_OnClick(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
            dt.Columns.Add(new DataColumn("Column1", typeof(string)));
            dt.Columns.Add(new DataColumn("Column2", typeof(string)));
            dt.Columns.Add(new DataColumn("Column3", typeof(string)));
            dt.Columns.Add(new DataColumn("Column4", typeof(string)));
            dt.Columns.Add(new DataColumn("Column5", typeof(string)));
            dt.Columns.Add(new DataColumn("Column6", typeof(string)));
            dt.Columns.Add(new DataColumn("Column7", typeof(string)));
            dt.Columns.Add(new DataColumn("Column8", typeof(string)));
            dt.Columns.Add(new DataColumn("Column9", typeof(string)));
            int i = 0;
            //build a data source of existing rows
            foreach (GridViewRow gridRow in gvacademic.Rows)
            {
                //get whether the checkbox for deleting row is checked or not
                CheckBox chkDelete = gridRow.FindControl("chkDelete") as CheckBox;
                //do not add original row if it was checked to be deleted
                if (!chkDelete.Checked)
                {
                    dr = dt.NewRow();

                    //set only text box values in new data source
                    //so checkbox column for row selection will be ignored
                    //extract the TextBox values
                    DropDownList box1 = (DropDownList)gvacademic.Rows[i].Cells[1].FindControl("cboacademictype");
                    TextBox box2 = (TextBox)gvacademic.Rows[i].Cells[2].FindControl("txtprogramtitle");
                    TextBox box3 = (TextBox)gvacademic.Rows[i].Cells[3].FindControl("txtspecialization");
                    TextBox box4 = (TextBox)gvacademic.Rows[i].Cells[4].FindControl("txtuniversity");
                    TextBox box5 = (TextBox)gvacademic.Rows[i].Cells[5].FindControl("txtacademiccity");
                    TextBox box6 = (TextBox)gvacademic.Rows[i].Cells[6].FindControl("txtacademiccountry");
                    DropDownList box7 = (DropDownList)gvacademic.Rows[i].Cells[7].FindControl("cboacademicfrom");
                    DropDownList box8 = (DropDownList)gvacademic.Rows[i].Cells[7].FindControl("cboacademicto");
                    TextBox box9 = (TextBox)gvacademic.Rows[i].Cells[8].FindControl("txtmarks");

                    dr[0] = i + 1;
                    dr[1] = box1.Text;
                    dr[2] = box2.Text;
                    dr[3] = box3.Text;
                    dr[4] = box4.Text;
                    dr[5] = box5.Text;
                    dr[6] = box6.Text;
                    dr[7] = box7.Text;
                    dr[8] = box8.Text;
                    dt.Rows.Add(dr);
                    i++;
                }
            }

            //bind the grid view, which will now NOT have the deleted rows
            ViewState["academic"] = dt;
            gvacademic.DataSource = dt;
            gvacademic.DataBind();
        }
        catch (Exception ex)
        {
            string s = ex.Message;
        }
    }

    protected void btnprofessionaladd_OnClick(object sender, EventArgs e)
    {
        try
        {
            int rowIndex = 0;

            if (ViewState["professional"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["professional"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values
                        TextBox box1 = (TextBox)gvprofessional.Rows[rowIndex].Cells[1].FindControl("txtprofessionaltitle");
                        TextBox box2 = (TextBox)gvprofessional.Rows[rowIndex].Cells[2].FindControl("txtinstitution");
                        TextBox box3 = (TextBox)gvprofessional.Rows[rowIndex].Cells[3].FindControl("txtprofessionalcity");
                        TextBox box4 = (TextBox)gvprofessional.Rows[rowIndex].Cells[4].FindControl("txtprofessionalcountry");
                        DropDownList box5 = (DropDownList)gvprofessional.Rows[rowIndex].Cells[5].FindControl("cboprofessionalfrom");
                        DropDownList box6 = (DropDownList)gvprofessional.Rows[rowIndex].Cells[5].FindControl("cboprofessionalto");

                        drCurrentRow = dtCurrentTable.NewRow();
                        drCurrentRow["RowNumber1"] = i + 1;

                        dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;
                        dtCurrentTable.Rows[i - 1]["Column2"] = box2.Text;
                        dtCurrentTable.Rows[i - 1]["Column3"] = box3.Text;
                        dtCurrentTable.Rows[i - 1]["Column4"] = box4.Text;
                        dtCurrentTable.Rows[i - 1]["Column5"] = box5.Text;
                        dtCurrentTable.Rows[i - 1]["Column6"] = box6.Text;

                        rowIndex++;
                    }
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["professional"] = dtCurrentTable;

                    gvprofessional.DataSource = dtCurrentTable;
                    gvprofessional.DataBind();
                }
            }
            else
            {
               // Response.Write("ViewState is null");
            }

            //Set Previous Data on Postbacks
            if (ViewState["professional"] != null)
            {
                DataTable dt = (DataTable)ViewState["professional"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)gvprofessional.Rows[rowIndex].Cells[2].FindControl("txtprofessionatitle");
                        TextBox box2 = (TextBox)gvprofessional.Rows[rowIndex].Cells[3].FindControl("txtinstitution");
                        TextBox box3 = (TextBox)gvprofessional.Rows[rowIndex].Cells[4].FindControl("txtprofessionalcity");
                        TextBox box4 = (TextBox)gvprofessional.Rows[rowIndex].Cells[5].FindControl("txtprofessionalcountry");
                        DropDownList box5 = (DropDownList)gvprofessional.Rows[rowIndex].Cells[6].FindControl("cboprofessionalfrom");
                        DropDownList box6 = (DropDownList)gvprofessional.Rows[rowIndex].Cells[6].FindControl("cboprofessionalto");

                        box1.Text = dt.Rows[i]["Column1"].ToString();
                        box2.Text = dt.Rows[i]["Column2"].ToString();
                        box3.Text = dt.Rows[i]["Column3"].ToString();
                        box4.Text = dt.Rows[i]["Column4"].ToString();
                        box5.Text = dt.Rows[i]["Column5"].ToString();
                        box6.Text = dt.Rows[i]["Column6"].ToString();

                        rowIndex++;
                    }
                }
            }
        }
        catch (Exception ex)
        {
            string s = ex.Message;
        }
    }

    protected void cbocityofresidence_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (cbocityofresidence.Text == "Other")
            {
                txtothers.Visible = true;
            }
            else
            {
                txtothers.Visible = false;
                txtcityofresidence.Text = cbocityofresidence.Text;
                changecity.Visible = true;
                insertcity.Visible = false;
            }
        }
        catch (Exception ex)
        {

        }
    }


    // Starting  --- Blocked for Academic Grid View
    private void FillAcademic()
    {
        try
        {
            clsjobtblacademic objacademic = new clsjobtblacademic();
            objacademic.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            DataTable dt = new DataTable();
            dt = objacademic.Select();

            if (dt.Rows.Count > 0)
            {
                gvacademic.DataSource = dt;
                gvacademic.DataBind();

                if (gvacademic.Rows.Count > 0)
                {
                    gvacademic.UseAccessibleHeader = true;
                    gvacademic.HeaderRow.TableSection = TableRowSection.TableHeader;
                }

                gvacademic.Columns[9].Visible = true;
            }
            else
            {
                DataTable dt1 = new DataTable();
                dt1.Columns.Add("qid", typeof(int));
                dt1.Columns.Add("qtype", typeof(string));
                dt1.Columns.Add("qtitle", typeof(string));
                dt1.Columns.Add("qspecialization", typeof(string));
                dt1.Columns.Add("quniversity", typeof(string));
                dt1.Columns.Add("qcity", typeof(string));
                dt1.Columns.Add("qcountry", typeof(string));
                dt1.Columns.Add("qperiodfrom", typeof(string));
                dt1.Columns.Add("qperiodto", typeof(string));
                dt1.Columns.Add("qmarks", typeof(string));

                dt1.Rows.Add(dt1.NewRow());
                gvacademic.DataSource = dt1;
                gvacademic.DataBind();

                gvacademic.Columns[10].Visible = false;
                foreach (GridViewRow row in gvacademic.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        LinkButton lb = ((LinkButton)row.FindControl("lnkRemove"));
                        lb.Visible = false;
                    }
                }
            }

        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }
    protected void AcademicAdd(object sender, EventArgs e)
    {
        try
        {
            string qtype = ((DropDownList)gvacademic.FooterRow.FindControl("cboacademictype")).Text;
            string qtitle = ((TextBox)gvacademic.FooterRow.FindControl("txtprogramtitle")).Text;
            string qspecialization = ((TextBox)gvacademic.FooterRow.FindControl("txtspecialization")).Text;
            string quniversity = ((TextBox)gvacademic.FooterRow.FindControl("txtuniversity")).Text;
            string qcity = ((TextBox)gvacademic.FooterRow.FindControl("txtacademiccity")).Text;
            string qcountry = ((TextBox)gvacademic.FooterRow.FindControl("txtacademiccountry")).Text;
            string qperiodfrom = ((DropDownList)gvacademic.FooterRow.FindControl("cboacademicfrom")).Text;
            string qperiodto = ((DropDownList)gvacademic.FooterRow.FindControl("cboacademicto")).Text;
            string qmarks = ((TextBox)gvacademic.FooterRow.FindControl("txtmarks")).Text;

            clsjobtblacademic objacademic = new clsjobtblacademic();
            objacademic.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            objacademic.qtype = qtype;
            objacademic.qtitle = qtitle;
            objacademic.qspecialization = qspecialization;
            objacademic.quniversity = quniversity;
            objacademic.qcity = qcity;
            objacademic.qcountry = qcountry;
            objacademic.qperiodfrom = qperiodfrom;
            objacademic.qperiodto = qperiodto;
            objacademic.qmarks = qmarks;
            objacademic.Insert();
            // Rebind Grid view
            FillAcademic();
            UpdateProfile();
        }
        catch (Exception ex)
        {

        }
    }

    // Updating a currency
    protected void gvacademic_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string qid = ((Label)gvacademic.Rows[e.RowIndex].FindControl("lblqid")).Text;
        string qtype = ((DropDownList)gvacademic.Rows[e.RowIndex].FindControl("cboacademictype")).Text;
        string qtitle = ((TextBox)gvacademic.Rows[e.RowIndex].FindControl("txtprogramtitle")).Text;
        string qspecialization = ((TextBox)gvacademic.Rows[e.RowIndex].FindControl("txtspecialization")).Text;
        string quniversity = ((TextBox)gvacademic.Rows[e.RowIndex].FindControl("txtuniversity")).Text;
        string qcity = ((TextBox)gvacademic.Rows[e.RowIndex].FindControl("txtacademiccity")).Text;
        string qcountry = ((TextBox)gvacademic.Rows[e.RowIndex].FindControl("txtacademiccountry")).Text;
        string qperiodfrom = ((DropDownList)gvacademic.Rows[e.RowIndex].FindControl("cboacademicfrom")).Text;
        string qperiodto = ((DropDownList)gvacademic.Rows[e.RowIndex].FindControl("cboacademicto")).Text;
        string qmarks = ((TextBox)gvacademic.Rows[e.RowIndex].FindControl("txtmarks")).Text;

        clsjobtblacademic objacademic = new clsjobtblacademic();
        objacademic.qid = Convert.ToInt32(qid);
        objacademic.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
        objacademic.qtype = qtype;
        objacademic.qtitle = qtitle;
        objacademic.qspecialization = qspecialization;
        objacademic.quniversity = quniversity;
        objacademic.qcity = qcity;
        objacademic.qcountry = qcountry;
        objacademic.qperiodfrom = qperiodfrom;
        objacademic.qperiodto = qperiodto;
        objacademic.qmarks = qmarks;
        objacademic.Update();

        gvacademic.EditIndex = -1;
        // Rebind Grid view
        FillAcademic();
        //}
    }

    // Deleting
    protected void AcademicDelete(object sender, EventArgs e)
    {
        LinkButton lnkRemove = (LinkButton)sender;
        clsjobtblacademic objacademic = new clsjobtblacademic();
        objacademic.qid = Convert.ToInt32(lnkRemove.CommandArgument);
        objacademic.Delete();
        // Rebind Grid view
        FillAcademic();
    }

    
    protected void gvacademic_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvacademic.EditIndex = e.NewEditIndex;
        FillAcademic();
    }

    
    protected void gvacademic_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvacademic.EditIndex = -1;
        FillAcademic();
    }

    // ending  Grid View Academic

    // Starting  --- Blocked for Professional Grid View
    private void FillProfessional()
    {
        try
        {
            clsjobtblprofessional objprofessional = new clsjobtblprofessional();
            objprofessional.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            DataTable dt = new DataTable();
            dt = objprofessional.Select();

            if (dt.Rows.Count > 0)
            {
                gvprofessional.DataSource = dt;
                gvprofessional.DataBind();

                if (gvprofessional.Rows.Count > 0)
                {
                    gvprofessional.UseAccessibleHeader = true;
                    gvprofessional.HeaderRow.TableSection = TableRowSection.TableHeader;
                }

                gvprofessional.Columns[7].Visible = true;
            }
            else
            {
                DataTable dt1 = new DataTable();
                dt1.Columns.Add("pid", typeof(int));
                dt1.Columns.Add("ptitle", typeof(string));
                dt1.Columns.Add("pinstitution", typeof(string));
                dt1.Columns.Add("pcity", typeof(string));
                dt1.Columns.Add("pcountry", typeof(string));
                dt1.Columns.Add("pperiodfrom", typeof(string));
                dt1.Columns.Add("pperiodto", typeof(string));

                dt1.Rows.Add(dt1.NewRow());
                gvprofessional.DataSource = dt1;
                gvprofessional.DataBind();

                gvprofessional.Columns[7].Visible = false;
                foreach (GridViewRow row in gvprofessional.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        LinkButton lb = ((LinkButton)row.FindControl("lnkRemove"));
                        lb.Visible = false;
                    }
                }
            }

        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }
    protected void ProfessionalAdd(object sender, EventArgs e)
    {
        try
        {
            string ptitle = ((TextBox)gvprofessional.FooterRow.FindControl("txtprogramtitle")).Text;
            string pinstitution = ((TextBox)gvprofessional.FooterRow.FindControl("txtinstitution")).Text;
            string pcity = ((TextBox)gvprofessional.FooterRow.FindControl("txtpcity")).Text;
            string pcountry = ((TextBox)gvprofessional.FooterRow.FindControl("txtpcountry")).Text;
            string pperiodfrom = ((DropDownList)gvprofessional.FooterRow.FindControl("cbopfrom")).Text;
            string pperiodto = ((DropDownList)gvprofessional.FooterRow.FindControl("cbopto")).Text;

            clsjobtblprofessional objprofessional = new clsjobtblprofessional();
            objprofessional.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            objprofessional.ptitle = ptitle;
            objprofessional.pinstitution = pinstitution;
            objprofessional.pcity = pcity;
            objprofessional.pcountry = pcountry;
            objprofessional.pperiodfrom = pperiodfrom;
            objprofessional.pperiodto = pperiodto;
            objprofessional.Insert();
            // Rebind Grid view
            FillProfessional();
        }
        catch (Exception ex)
        {

        }
    }

    // Updating a currency
    protected void gvprofessional_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string pid = ((Label)gvprofessional.Rows[e.RowIndex].FindControl("lblpid")).Text;
        string ptitle = ((TextBox)gvprofessional.Rows[e.RowIndex].FindControl("txtprogramtitle")).Text;
        string pinstitution = ((TextBox)gvprofessional.Rows[e.RowIndex].FindControl("txtinstitution")).Text;
        string pcity = ((TextBox)gvprofessional.Rows[e.RowIndex].FindControl("txtpcity")).Text;
        string pcountry = ((TextBox)gvprofessional.Rows[e.RowIndex].FindControl("txtpcountry")).Text;
        string pperiodfrom = ((DropDownList)gvprofessional.Rows[e.RowIndex].FindControl("cbopfrom")).Text;
        string pperiodto = ((DropDownList)gvprofessional.Rows[e.RowIndex].FindControl("cbopto")).Text;

        clsjobtblprofessional objprofessional = new clsjobtblprofessional();
        objprofessional.pid = Convert.ToInt32(pid);
        objprofessional.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
        objprofessional.ptitle = ptitle;
        objprofessional.pinstitution = pinstitution;
        objprofessional.pcity = pcity;
        objprofessional.pcountry = pcountry;
        objprofessional.pperiodfrom = pperiodfrom;
        objprofessional.pperiodto = pperiodto;
        objprofessional.Update();

        gvprofessional.EditIndex = -1;
        // Rebind Grid view
        FillProfessional();
        //}
    }

    // Deleting
    protected void ProfessionalDelete(object sender, EventArgs e)
    {
        LinkButton lnkRemove = (LinkButton)sender;
        clsjobtblprofessional objprofessional = new clsjobtblprofessional();
        objprofessional.pid = Convert.ToInt32(lnkRemove.CommandArgument);
        objprofessional.Delete();
        // Rebind Grid view
        FillProfessional();
    }


    protected void gvprofessional_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvprofessional.EditIndex = e.NewEditIndex;
        FillProfessional();
    }


    protected void gvprofessional_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvprofessional.EditIndex = -1;
        FillProfessional();
    }

    // ending  Grid View Academic

    // Start Employee Record
    private void FillEmployee()
    {
        try
        {
            clsjobtblemployment objemp = new clsjobtblemployment();
            objemp.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            DataTable dt = new DataTable();
            dt = objemp.Select();
            rpemployee.DataSource = dt;
            rpemployee.DataBind();
        }
        catch (Exception ex)
        {

        }
    }

    protected void cmdemploymentadd_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = new DataTable();
            clsjobtblemployment objemp = new clsjobtblemployment();
            objemp.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            objemp.emporganization = txtorganization.Text;
            objemp.emppositionheld = txtpositionheld.Text;
            objemp.empreferenceperson = txtreferenceperson.Text;
            objemp.emprerenecepersoncontactno = txtpersoncontact.Text;
            objemp.empreasonforleaving = txtreasonforleaving.Text;
            objemp.empkeyresponsibilities = txtkeyresponsibility.Text;
            objemp.empsalary = txtsalary.Text;
            objemp.empdurationfrom=  Convert.ToDateTime(Getmydate(txtfrom.Text));
            objemp.empdurationto = Convert.ToDateTime(Getmydate(txtto.Text));

            if (cmdemploymentadd.Text == "Add")
            {
                objemp.Insert();
                UpdateProfile();
                FillEmployee();
            }
            else
            {
                objemp.empid = Convert.ToInt32(lblemp.Text);
                objemp.Update();
                UpdateProfile();
                FillEmployee();
            }
            EmploymentClear();

        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    private void EmploymentClear()
    {
        try
        {
            txtorganization.Text = "";
            txtpositionheld.Text = "";
            txtreferenceperson.Text = "";
            txtpersoncontact.Text = "";
            txtreasonforleaving.Text= "";
            txtkeyresponsibility.Text ="";
            txtsalary.Text ="";
            txtfrom.Text="";
            txtto.Text= "";
            cmdemploymentadd.Text = "Add";
        }
        catch (Exception ex)
        {

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

   
    protected void cmdemploymentcancil_Click(object sender, EventArgs e)
    {
        try
        {
            txtorganization.Text = "";
            txtpositionheld.Text = "";
            txtreferenceperson.Text = "";
            txtpersoncontact.Text = "";
            txtreasonforleaving.Text = "";
            txtkeyresponsibility.Text = "";
            txtsalary.Text = "";
            txtfrom.Text = "";
            txtto.Text = "";
            cmdemploymentadd.Text = "Add";

        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    protected void rpemployee_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case ("Delete"):
                //==== Getting id of the selelected record(We have passed on link button's command argument property).
                int id = Convert.ToInt32(e.CommandArgument);
                clsjobtblemployment objemp = new clsjobtblemployment();
                objemp.empid  = id;
                objemp.Delete();
                FillEmployee();
                break;
            case ("Edit"):
                id = Convert.ToInt32(e.CommandArgument);
                clsjobtblemployment objemp1 = new clsjobtblemployment();
                DataTable dt = new DataTable();
                objemp1.empid = id;
                lblemp.Text = id.ToString();
                dt = objemp1.Select();
                foreach (DataRow dr in dt.Rows)
                {
                    txtorganization.Text  = dr["emporganization"].ToString();
                    txtpositionheld.Text = dr["emppositionheld"].ToString();
                    txtreferenceperson.Text = dr["empreferenceperson"].ToString();
                    txtpersoncontact.Text = dr["emprerenecepersoncontactno"].ToString();
                    txtreasonforleaving.Text = dr["empreasonforleaving"].ToString();
                    txtkeyresponsibility.Text = dr["empkeyresponsibilities"].ToString();
                    txtsalary.Text = dr["empsalary"].ToString();
                    // txtfrom.Text = Getmydate(dr["empdurationfrom"].ToString());
                    // txtto.Text = Getmydate(dr["empdurationto"].ToString());
                    DateTime t = new DateTime();
                    t = Convert.ToDateTime(dr["empdurationfrom"]);
                    txtfrom.Text = t.Date.ToString("dd/MM/yyyy");
                    t = Convert.ToDateTime(dr["empdurationto"]);
                    txtto.Text = t.Date.ToString("dd/MM/yyyy");
                    cmdemploymentadd.Text = "Update";
                }
                break;
        }
    }

    // Ending Employee Record

    protected void btnPreview_Click(object sender, EventArgs e)
    {
        try
        {
            if (fupImage.HasFile)
            {
                string dir = Server.MapPath(".") + "\\Images\\Profile\\";
                string thisDir = Server.MapPath(".") + "\\Images\\Profile\\";
                string tempdir = Server.MapPath(".") + "\\Images\\Profile\\Temp\\";
                lblimageerror.Text = "";
                // temporary save file in qecnewa temp folder
                //fupImage.SaveAs(tempdir + "\\1.jpg");

                string ofilename = string.Format("{0:ddMMyyyy-HHmmss}", DateTime.Now) + ".jpg";
                string fileExt = System.IO.Path.GetExtension(fupImage.FileName);
                
                if (fileExt.ToUpper() == ".JPG" || fileExt.ToUpper() == ".JPEG" || fileExt.ToUpper() == ".GIF" || fileExt.ToUpper() == ".PNG")
                {
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
                        NewWidth = 120;
                        if (resizeImage(currtime, "thumbnail", OrginalFileName, 1))
                        {
                        }

                        // large
                        NewWidth = 800;
                        if (resizeImage(currtime, "large", OrginalFileName, 1))
                        {
                        }
                        // Update Profile
                        UpdateProfile();
                    }
                    else
                    {
                        lblimageerror.Text = "File Size should be less then 1 MB.";
                    }
                }
                else
                {
                    lblimageerror.Text = "Only .jpg,.png file allowed";
                }
            }
            else
            {
                lblimageerror.Text = "You did not select any file.";
            }
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
            //lblimageerror.Text = ex.Message;
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
                    newImage.Save(location + "\\title\\" + newFilename, System.Drawing.Imaging.ImageFormat.Jpeg);
                }
                if (imagetype == "large")
                {
                    newImage.Save(location + "\\large\\" + newFilename , System.Drawing.Imaging.ImageFormat.Jpeg);
                }
                if (imagetype == "thumbnail")
                {
                    newImage.Save(location + "\\thumbnail\\" + newFilename, System.Drawing.Imaging.ImageFormat.Jpeg);
                }


                if (BtnNumber == 1)
                {
                    ImagePreview1.ImageUrl = "images/profile/thumbnail/" + newFilename;
                    HyperLink1.NavigateUrl = "images/profile/thumbnail/" + newFilename;
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

    protected void btncv_Click(object sender, EventArgs e)
    {

        try
        {

            if (fileuploadcv.HasFile)
            {
                lblcverror.Text = "";
                string thisDir = Server.MapPath(".") + "\\cv\\";
                //|| fileuploadcv.PostedFile.ContentType == "application/msword" || fileuploadcv.PostedFile.ContentType == "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                if (fileuploadcv.PostedFile.ContentType == "application/pdf")
                {
                    lblcverror.Text = "";
                    string currtime = string.Format("{0:ddMMyyyy-HHmmss}", DateTime.Now);
                    thisDir = thisDir + currtime + "_" + fileuploadcv.FileName;
                    Byte[] txt = fileuploadcv.FileBytes;
                    long i = txt.Length;
                    if (i > 990000)
                    {
                        lblcverror.Text  = "CV File Size should be less than 1 MB";
                    }
                    else
                    {
                        thisDir = thisDir.ToLower();
                        string location = thisDir.Replace("admin\\", "");
                        fileuploadcv.SaveAs(location);
                        lblcv.Text = currtime + "_" + fileuploadcv.FileName;
                        HyperLink2.NavigateUrl = "../cv/" + lblcv.Text;
                        ImagePreview2.ImageUrl = "images/pdf-to-word.png";
                        UpdateProfile();
                    }

                }
                else
                {
                    lblcverror.Text = "CV should be in PDF format or Word format";
                }

            }
            else
            {
                // Notify the user that a file was not uploaded.
                lblcverror.Text = "You did not select any file.";
            }

        }
        catch (Exception ex)
        {
            lblcverror.Text = ex.Message;
        }
    }

    protected void cbouniversity_OnSelectedIndexChanged(object sender, EventArgs e)
    {

        try
        {

            if (cbouniversity.Text == "YES")
            {
                lbluniversityrelation.Visible = true;
            }
            else
            {
                lbluniversityrelation.Visible = false;
            }
            UpdateProfile();
        }
        catch (Exception ex)
        {

        }
    }

    protected void lnkfinished_Click(object sender, EventArgs e)
    {
        try
        {
            UpdateProfile();
            try
            {
                //check for Academic Record
                clsjobtblacademic objacademic = new clsjobtblacademic();
                objacademic.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
                DataTable dt = new DataTable();
                dt = objacademic.Select();

                if (dt.Rows.Count > 0)
                {
                    Boolean checkprogramstatus = false;

                    // check the academic programs
                    string programtitle = "";
                    foreach (DataRow dr in dt.Rows)
                    {
                        programtitle = dr["qtype"].ToString();
                        break;
                    }
                    if (dt.Rows.Count == 1)
                    {
                        if (programtitle == "PhD")
                        {
                            displaymessage = utl.errormessage("!Program missing (must enter M.Phil/MS,Masters,Bachelor Programs)");
                            checkprogramstatus = false;
                        }
                        else if (programtitle == "M.Phil/MS")
                        {
                            displaymessage = utl.errormessage("!Program missing (must enter Masters,Bachelor Programs)");
                            checkprogramstatus = false;
                        }
                        else if (programtitle == "Masters")
                        {
                            displaymessage = utl.errormessage("!Program missing (must enter Bachelor Programs)");
                            checkprogramstatus = false;
                        }
                        else
                        {
                            checkprogramstatus = true;
                        }

                    } else if (dt.Rows.Count == 2)
                    {
                        if (programtitle == "PhD")
                        {
                            displaymessage = utl.errormessage("!Program missing (must enter M.Phil/MS,Masters,Bachelor Program)");
                            checkprogramstatus = false;
                        }
                        else if (programtitle == "M.Phil/MS")
                        {
                            displaymessage = utl.errormessage("!Program missing (must enter Masters,Bachelor Program)");
                            checkprogramstatus = false;
                        }
                        else 
                        {
                            checkprogramstatus = true;
                        }
                    }
                    else 
                    {
                            checkprogramstatus = true;
                    }
                    
                    if (checkprogramstatus == true)
                    {
                        clsjobtblposted objposted = new clsjobtblposted();
                        objposted.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
                        objposted.jobid = Convert.ToInt32(utl.DecryptConnectionString(Request.QueryString["id"]));
                        objposted.shortlist = 0;
                        objposted.selectedlist = 0;

                        // get the department id
                        clsjobstbljob objjob = new clsjobstbljob();
                        DataTable dt1 = new DataTable();
                        objjob.jobid = Convert.ToInt32(utl.DecryptConnectionString(Request.QueryString["id"]));
                        dt1 = objjob.Select();
                        foreach (DataRow dr in dt1.Rows)
                        {
                            objposted.departmentid = Convert.ToInt32(dr["departmentid"].ToString());
                        }

                        string t = DateTime.Now.ToString("MM/dd/yyyy");
                        objposted.posteddate = Convert.ToDateTime(t);
                        objposted.posteddate = DateTime.Now;
                        if (objposted.Insert() == true)
                        {
                            // send email for submitted job
                            SendEmail();
                            Response.Redirect("completed.aspx?jobtitle=" + Request.QueryString["jobtitle"]);
                        }
                    }
                }
                else
                {
                    displaymessage = utl.errormessage("!Please Add Academic Qualification First");
                }

                
            }
            catch (Exception ex)
            {
                displaymessage = utl.errormessage(ex.Message);
            }
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

   private void SendEmail()
    {
        try
        {
            string emailtitle = "You have successfully submitted your application for the post of " + Request.QueryString["jobtitle"] + ".";
            StringBuilder bodytext = new StringBuilder();
            bodytext.Append("You have successfully submitted your application for the post of " + Request.QueryString["jobtitle"] + "." + Environment.NewLine);
            bodytext.Append("You will be contacted by our HR department, if shortlisted." + Environment.NewLine);
            utl.sendemail(txtemail.Text, emailtitle, bodytext.ToString(), "");
        }
        catch (Exception ex)
        {

        }
    }
    private void UpdateProfile()
    {
        try
        {
            clsjobtblprofile objprofile = new clsjobtblprofile();
            objprofile.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            objprofile.fullname = txtfullname.Text;
            objprofile.dateofbirth = Convert.ToDateTime(Getmydate(txtdob.Text));
            //objprofile.dateofbirth = Convert.ToDateTime(txtdob.Text);
            objprofile.age = Convert.ToInt32(txtage.Text);
            objprofile.gender = cbogender.Text;
            objprofile.maritalstatus = cbomaritalstatus.Text;

            objprofile.fathername = txtfathername.Text;
            if(optionfatherhusband.SelectedIndex == 0)
            {
                objprofile.fatherorhusband = "fathername";
            }
            else
            {
                objprofile.fatherorhusband = "husbandname";
            }
            
            objprofile.cnic = txtcnic.Text;
            objprofile.address = txtaddress.Text;
            if (cbocityofresidence.Text == "Other")
            {
                objprofile.cityofresidence = txtothers.Text;
            }
            else
            {
                //objprofile.cityofresidence = cbocityofresidence.Text;
                objprofile.cityofresidence = txtcityofresidence.Text;
            }
            objprofile.contactno = txtcontactno.Text;
            objprofile.currentsalary = Convert.ToInt32(txtcurrentsalary.Text);
            objprofile.expectedsalary = Convert.ToInt32(txtexpectedsalary.Text);
            objprofile.noticperiod = Convert.ToInt32(cbonoticperiod.Text);
            objprofile.imgpath = lblimagetitle1.Text;
            objprofile.cvpath = lblcv.Text;
            objprofile.experienceoverview = txtexperienceoverview.Value;
            objprofile.totalexperienceyear = Convert.ToInt32(cbototalexperienceyear.Text);
            objprofile.totalexperiencemonth = Convert.ToInt32(cbototalexperiencemonth.Text);
            objprofile.skills = txtsill.Value;
            objprofile.relativeinuniversity = cbouniversity.Text;
            if (cbouniversity.Text == "YES")
            {
                objprofile.relativename = txtname.Text;
                objprofile.relativeposition = txtposition.Text;
                objprofile.relativedepartment = txtdepartment.Text;
            }
            else
            {
                objprofile.relativename = "";
                objprofile.relativeposition = "";
                objprofile.relativedepartment = "";
            }
            objprofile.relevantexperienceyear = Convert.ToInt32(cborelevantexperienceyear.Text);
            objprofile.relevantexperiencemonth = Convert.ToInt32(cborelevantexperiencemonth.Text);
            objprofile.specilization = txtspecializations.Value;
            objprofile.nationality = txtnationality.Text;

            // research and publication
            objprofile.totalpub = Convert.ToInt32(txttotalpub.Text);
            objprofile.totalpubinfiveyears = Convert.ToInt32(txttotalpubinfiveyears.Text);
            objprofile.totalprincipalauthor = Convert.ToInt32(txttotalprincipalauthor.Text);
            objprofile.totalimpactfactor = Convert.ToInt32(txttotalimpactfactor.Text);
            objprofile.totalcitations = Convert.ToInt32(txttotalcitations.Text);
            objprofile.totalconferences = Convert.ToInt32(txttotalconferences.Text);
            if (txttotalbooks.Text != "")
            {
                objprofile.totalbooks = Convert.ToInt32(txttotalbooks.Text);
            }
            objprofile.phdappprofessor = cbophdapproved.Text;
            objprofile.pcdregistrationno = txtpcdregistrationno.Text;
            objprofile.researchremarks = txtresearchremarks.Value;
            try
            {
                objprofile.Update();
            }
            catch (Exception ex)
            {

            }

        }
        catch (Exception ex)
        {

        }
    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            changecity.Visible = false;
            insertcity.Visible = true;
        }
        catch (Exception ex)
        {

        }
    }
    protected void uploadimage_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "";
        }
        catch (Exception ex)
        {

        }
    }

    protected void cmduploadimage_Click(object sender, EventArgs e)
    {
        try
        {
            // Update Profile
            UpdateProfile();
        }
        catch (Exception ex)
        {

        }
    }

    protected void chkrelevant_OnCheckedChanged(object sender, EventArgs e)
    {
        try
        {
            if (chkrelevant.Checked == true)
            {
                cborelevantexperienceyear.Visible = false;
                cborelevantexperiencemonth.Visible = false;
                lblrelevantexperience.Visible = false;
            }
            else
            {
                cborelevantexperienceyear.Visible = true;
                cborelevantexperiencemonth.Visible = true;
                lblrelevantexperience.Visible = true;
            }
        }
        catch (Exception ex)
        {

        }
    }

}