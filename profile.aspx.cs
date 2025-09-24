using DatabaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profile : System.Web.UI.Page
{
    public int NewWidth;
    Utilities utl = new Utilities();
    protected int srno, srno1, srno2;
    protected string displaymessage;
    int profileid;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["jobportal#profileid#@33"] == null)
            {
                Response.Redirect("signin.aspx");
            } 
            profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            if (!(IsPostBack))
            {
                lbluniversityrelation.Visible = false;
                FillCity();
                FillDropDown();
                GetProfile();
                FillAcademic();
                FillProfessional();
                FillEmployee();
                FillEmailAlerts();
            }
        }
        catch (Exception ex)
        {
            displaymessage = ex.Message;
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
                    cbototalexperienceyear.Items.Add(i.ToString());
                    cborelevantexperienceyear.Items.Add(i.ToString());
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
                    cbototalexperiencemonth.Items.Add(i.ToString());
                    cborelevantexperiencemonth.Items.Add(i.ToString());
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
            displaymessage = ex.Message;
        }
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
            displaymessage = ex.Message;
        }
    }
    private void GetProfile()
    {
        try
        {
            DataTable dt = new DataTable();
            clsjobtblprofile objusers = new clsjobtblprofile();
            objusers.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            dt = objusers.Select();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    txtfullname.Text = dr["fullname"].ToString();
                    //lblfullname.Text = dr["fullname"].ToString();
                    lblemail.Text = dr["emailaddress"].ToString();
                    cbogender.Text = dr["gender"].ToString();
                    cbomaritalstatus.Text = dr["maritalstatus"].ToString();
                    txtdob.Text = Convert.ToDateTime(dr["dateofbirth"]).ToString("dd/MM/yyyy");

                    //txtage.Text = dr["age"].ToString();
                    txtfathername.Text = dr["fathername"].ToString();
                    txtcnic.Text = dr["cnic"].ToString();
                    txtaddress.Text = dr["address"].ToString();
                    txtnationality.Text = dr["nationality"].ToString();
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
                    cbototalexperiencemonth.Text = dr["totalexperiencemonth"].ToString();
                    cborelevantexperienceyear.Text = dr["relevantexperienceyear"].ToString();
                    cborelevantexperiencemonth.Text = dr["relevantexperiencemonth"].ToString();
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
                        HyperLink1.NavigateUrl = "../images/profile/title/" + lblimagetitle1.Text;
                    }
                    else
                    {
                        ImagePreview1.ImageUrl = "images/user.jpg";
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
                    }
                    txtspecilization.Value = dr["specilization"].ToString();

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
                    txtresearchremarks.Text = dr["researchremarks"].ToString();
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

    private void FillEmailAlerts()
    {
        try
        {
            DataTable dt = new DataTable();
            clsjobtbljobalertgroup objalertgroup = new clsjobtbljobalertgroup();
            dt = objalertgroup.Select();
            chkemailalerts.DataSource = dt;
            chkemailalerts.DataTextField = "jobalertgroupname";
            chkemailalerts.DataValueField = "jobalertgroupid";
            chkemailalerts.DataBind();
            if (dt.Rows.Count > 0)
            {
                cmdEmailAlerts.Enabled = true;
            }
            else
            {
                cmdEmailAlerts.Enabled = false;
            }
            // Get Data for Fill Email Alerts
            clsjobtblprofileemailalert objprofileemail = new clsjobtblprofileemailalert();
            objprofileemail.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            dt = objprofileemail.Select();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    for (int i = 0; i < chkemailalerts.Items.Count; i++)
                    {
                        if (chkemailalerts.Items[i].Value == dr["jobalertgroupid"].ToString())
                        {

                            chkemailalerts.Items[i].Selected= true;
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
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
                        DropDownList box8 = (DropDownList)gvacademic.Rows[rowIndex].Cells[8].FindControl("cboacademicto");
                        TextBox box9 = (TextBox)gvacademic.Rows[rowIndex].Cells[9].FindControl("txtmarks");

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
                        dtCurrentTable.Rows[i - 1]["Column9"] = box9.Text;

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
                        DropDownList box8 = (DropDownList)gvacademic.Rows[rowIndex].Cells[8].FindControl("cboacademicto");
                        TextBox box9 = (TextBox)gvacademic.Rows[rowIndex].Cells[9].FindControl("txtmarks");

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
            displaymessage = utl.errormessage(ex.Message);
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
                    DropDownList box8 = (DropDownList)gvacademic.Rows[i].Cells[8].FindControl("cboacademicto");
                    TextBox box9 = (TextBox)gvacademic.Rows[i].Cells[9].FindControl("txtmarks");

                    dr[0] = i + 1;
                    dr[1] = box1.Text;
                    dr[2] = box2.Text;
                    dr[3] = box3.Text;
                    dr[4] = box4.Text;
                    dr[5] = box5.Text;
                    dr[6] = box6.Text;
                    dr[7] = box7.Text;
                    dr[8] = box8.Text;
                    dr[9] = box9.Text;
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
            displaymessage = utl.errormessage(ex.Message);
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
            displaymessage = utl.errormessage(ex.Message);
        }
    }


    // Starting  --- Blocked for Academic Grid View
    private void FillAcademic()
    {
        try
        {
            clsjobtblacademic objacademic = new clsjobtblacademic();
            objacademic.profileid = profileid;
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

                gvacademic.Columns[9].Visible = false;
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
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    //Updating a currency
    protected void gvacademic_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
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
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    //Deleting
    protected void AcademicDelete(object sender, EventArgs e)
    {
        try
        {
            LinkButton lnkRemove = (LinkButton)sender;
            clsjobtblacademic objacademic = new clsjobtblacademic();
            objacademic.qid = Convert.ToInt32(lnkRemove.CommandArgument);
            objacademic.Delete();
            // Rebind Grid view
            FillAcademic();
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
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
            displaymessage = utl.errormessage(ex.Message);
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
            displaymessage = utl.errormessage(ex.Message);
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
            objemp.empdurationfrom = Convert.ToDateTime(Getmydate(txtfrom.Text));
            objemp.empdurationto = Convert.ToDateTime(Getmydate(txtto.Text));
            //objemp.empdurationfrom = Convert.ToDateTime(txtfrom.Text);
            //objemp.empdurationto = Convert.ToDateTime(txtto.Text);

            if (cmdemploymentadd.Text == "Add")
            {
                objemp.Insert();
                FillEmployee();
            }
            else
            {
                objemp.empid = Convert.ToInt32(lblemp.Text);
                objemp.Update();
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
                objemp.empid = id;
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
                    txtorganization.Text = dr["emporganization"].ToString();
                    txtpositionheld.Text = dr["emppositionheld"].ToString();
                    txtreferenceperson.Text = dr["empreferenceperson"].ToString();
                    txtpersoncontact.Text = dr["emprerenecepersoncontactno"].ToString();
                    txtreasonforleaving.Text = dr["empreasonforleaving"].ToString();
                    txtkeyresponsibility.Text = dr["empkeyresponsibilities"].ToString();
                    txtsalary.Text = dr["empsalary"].ToString();
                    //txtfrom.Text = Getmydate(dr["empdurationfrom"].ToString());
                    //txtto.Text = Getmydate(dr["empdurationto"].ToString());
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

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            changecity.Visible = false;
            insertcity.Visible = true;
            txtothers.Visible = false;
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
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
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    protected void btnPreview_Click(object sender, EventArgs e)
    {
        try
        {
            string dir = Server.MapPath(".") + "\\images\\profile\\";
            string thisDir = Server.MapPath(".") + "\\images\\profile\\";
            string tempdir = Server.MapPath(".") + "\\images\\profile\\temp\\";

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
                    //UpdateProfile();
                }
                else
                {
                    lblimageerror.Text = "File Size should be less then 1 MB.";
                }
            }
            else
            {
                lblimageerror.Text = "Only .jpg,.png file allow";
            }

        }
        catch (Exception ex)
        {
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
                    newImage.Save(location + "\\large\\" + newFilename, System.Drawing.Imaging.ImageFormat.Jpeg);
                }
                if (imagetype == "thumbnail")
                {
                    newImage.Save(location + "\\thumbnail\\" + newFilename, System.Drawing.Imaging.ImageFormat.Jpeg);
                }


                if (BtnNumber == 1)
                {
                    ImagePreview1.ImageUrl = "../images/profile/thumbnail/" + newFilename;
                    HyperLink1.NavigateUrl = "../images/profile/thumbnail/" + newFilename;
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
                //displaymessage = utl.errormessage(ex.Message);
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
                string thisDir = Server.MapPath(".") + "\\cv\\";
                if (fileuploadcv.PostedFile.ContentType == "application/pdf" || fileuploadcv.PostedFile.ContentType == "application/msword")
                {
                    string currtime = string.Format("{0:ddMMyyyy-HHmmss}", DateTime.Now);
                    thisDir = thisDir + currtime + "_" + fileuploadcv.FileName;
                    Byte[] txt = fileuploadcv.FileBytes;
                    long i = txt.Length;
                    if (i > 990000)
                    {
                        lblcverror.Text = "CV File Size should be less than 1 MB";
                    }
                    else
                    {
                        thisDir = thisDir.ToLower();
                        string location = thisDir.Replace("admin\\", "");
                        fileuploadcv.SaveAs(location);
                        lblcv.Text = currtime + "_" + fileuploadcv.FileName;
                        HyperLink2.NavigateUrl = "../cv/" + lblcv.Text;
                        ImagePreview2.ImageUrl = "images/pdf-to-word.png";
                        //UpdateProfile();
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
                lblcverror.Text = "You did not specify a file to upload.";
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

        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    private void UpdateProfile()
    {
        try
        {
            clsjobtblprofile objprofile = new clsjobtblprofile();
            objprofile.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            objprofile.fullname = txtfullname.Text;
            //Getmydate
            //objprofile.dateofbirth = Convert.ToDateTime(txtdob.Text);
            objprofile.dateofbirth = Convert.ToDateTime(Getmydate(txtdob.Text));
            //objprofile.age = get_age(Convert.ToDateTime(txtdob.Text));
            objprofile.age = get_age(Convert.ToDateTime(Getmydate(txtdob.Text)));
            objprofile.gender = cbogender.Text;

            objprofile.maritalstatus = cbomaritalstatus.Text;

            objprofile.fathername = txtfathername.Text;
            objprofile.cnic = txtcnic.Text;
            objprofile.address = txtaddress.Text;
            objprofile.nationality = txtnationality.Text;
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
            objprofile.relevantexperienceyear = Convert.ToInt32(cborelevantexperienceyear.Text);
            objprofile.relevantexperiencemonth = Convert.ToInt32(cborelevantexperiencemonth.Text);
            objprofile.skills = txtsill.Value;
            objprofile.relativeinuniversity = cbouniversity.Text;
            if (cbouniversity.Text == "YES")
            {
                objprofile.relativename = txtname.Text;
                objprofile.relativeposition = txtposition.Text;
                objprofile.relativedepartment = txtdepartment.Text;
            }
            objprofile.specilization = txtspecilization.Value;

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
            objprofile.researchremarks = txtresearchremarks.Text;

            try
            {
                objprofile.Update();
                
                displaymessage = utl.successmessage("Record has been update successfully!");
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

    public int get_age(DateTime dob)
    {
        int age = 0;
        age = DateTime.Now.Subtract(dob).Days;
        age = age / 365;
        return age;
    }

    protected void cmdpersonal_Click(object sender, EventArgs e)
    {
        try
        {
            UpdateProfile();
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }
    protected void cmdexperience_Click(object sender, EventArgs e)
    {
        try
        {
            UpdateProfile();
            lblemlploymenterr.Text = "Record has been updated successfully!";
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    protected void cmdResearch_Click(object sender, EventArgs e)
    {
        try
        {
            UpdateProfile();
            lblresearch.Text = "Research and Publication data has been updated successfully!";
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    protected void cmdskills_Click(object sender, EventArgs e)
    {
        try
        {
            UpdateProfile();
            lblskillserr.Text = "Record has been updated successfully!";
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

   protected void cmdEmailAlerts_Click(object sender, EventArgs e)
    {
        try
        {
            // first of all delete the options
            clsjobtblprofileemailalert objemailalert = new clsjobtblprofileemailalert();
            objemailalert.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
            objemailalert.Delete();

            for (int i = 0; i < chkemailalerts.Items.Count; i++)
            {
                if (chkemailalerts.Items[i].Selected)
                {
                    // Insert 
                    //string s = chkemailalerts.Items[i].Selectedvalue;
                    objemailalert.profileid = Convert.ToInt32(Session["jobportal#profileid#@33"]);
                    //string s = chkemailalerts.Items[i].Selectedvalue;
                    objemailalert.jobalertgroupid = Convert.ToInt32(chkemailalerts.Items[i].Value);
                    objemailalert.Insert();
                }
            }
            lblemailalerts.Text = "Record has been update successfully!";

        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }
}