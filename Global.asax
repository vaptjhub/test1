<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Web.Http" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
		RouteTable.Routes.MapHttpRoute("careersapi", "webapi/{controller}/{action}");
        RouteTable.Routes.MapHttpRoute("careersapii", "webapi/{controller}/{action}/{jobid}");
        RegisterRoutes(RouteTable.Routes);
    }
    
    protected void Application_BeginRequest(object sender, EventArgs e)
        {
            HttpContext.Current.Response.AddHeader("Access-Control-Allow-Origin", "*");
            if (HttpContext.Current.Request.HttpMethod == "OPTIONS")
            {
                HttpContext.Current.Response.AddHeader("Access-Control-Allow-Methods", "POST, PUT, DELETE");
                HttpContext.Current.Response.AddHeader("Access-Control-Allow-Headers", "Content-Type, Accept");
                HttpContext.Current.Response.AddHeader("Access-Control-Max-Age", "1728000");
                HttpContext.Current.Response.End();
            }
        } 

    static void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("Home", "Home", "~/default.aspx");
        routes.MapPageRoute("SignIn", "SignIn", "~/signin.aspx");
        routes.MapPageRoute("SignUp", "SignUp", "~/signup.aspx");
        routes.MapPageRoute("SignOut", "SignOut", "~/signout.aspx");
        routes.MapPageRoute("Login", "Login", "~/signin.aspx");
        routes.MapPageRoute("Register", "Register", "~/signup.aspx");
        routes.MapPageRoute("ForgotPassword", "ForgotPassword", "~/forgotpassword.aspx");
        routes.MapPageRoute("Profile", "Profile", "~/profile.aspx");
        routes.MapPageRoute("ChangePassword", "ChangePassword", "~/changepassword.aspx");
        routes.MapPageRoute("jobs", "jobs/{jobid}/{jobtitle}", "~/jobs.aspx");
        routes.MapPageRoute("StaffDetails", "Staff/{Profileid}/{Profilename}", "~/facultydetails.aspx");
        routes.MapPageRoute("Staff", "Staff", "~/Staff.aspx");
        routes.MapPageRoute("Registration", "Registration", "~/Registration.aspx");
        routes.MapPageRoute("ContactUs", "ContactUs", "~/Contactus.aspx");
        routes.MapPageRoute("BrowseByDepartment", "BrowseByDepartment", "~/browsebydept.aspx");
        routes.MapPageRoute("BrowseByDesignation", "BrowseByDesignation", "~/browsebydesignation.aspx");
        routes.MapPageRoute("BrowseByCampus", "BrowseByCampus", "~/browsebycampus.aspx");
        routes.MapPageRoute("Projects", "Projects", "~/projects.aspx");
        routes.MapPageRoute("Publications", "Publications/{profileid}/{profilename}", "~/publications.aspx");
        //routes.MapPageRoute("PublicationDetails", "PublicationsDetails/{Publicationid}/{title}", "~/publicationdetail.aspx");
        routes.MapPageRoute("PublicationDetails", "PublicationsDetails/{Publicationid}", "~/publicationdetail.aspx");
        routes.MapPageRoute("BrowseProfile", "BrowseProfile/{id}/{name}", "~/browseprofiles.aspx");
        routes.MapPageRoute("researchprojects", "researchprojects/{id}/{name}", "~/researchprojects.aspx");
        //routes.MapPageRoute("researchprojects", "researchprojects", "~/researchprojects.aspx");
    }
       
</script>
