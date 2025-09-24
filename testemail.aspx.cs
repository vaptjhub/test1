using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Security.Cryptography;
using System.Text;
using System.Data;
using System.Configuration;
using DatabaseLayer;

public partial class testemail : System.Web.UI.Page
{
    protected string displaymessage;
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //DateTime d = new DateTime();
            //MailMessage message = new System.Net.Mail.MailMessage();
            //string fromEmail = "ojs@comms.uol.edu.pk";
            //string fromPW = "Ktgy9UBeHkAk";
            ////string fromEmail = ConfigurationManager.AppSettings["sendingemail"].ToString();
            ////string fromPW = ConfigurationManager.AppSettings["sendingemailpassword"].ToString();
            //message.From = new MailAddress(fromEmail, "uol.edu.pk");
            //message.To.Add("imran.tareen@uol.edu.pk");
            //message.Subject = "for testing " + d.ToLongDateString();
            //message.Body = "for testing";
            //message.IsBodyHtml = true;


            //ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            //message.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            //SmtpClient smtpClient = new SmtpClient("smtp.mailgun.org", 587);
            //smtpClient.EnableSsl = true;
            //smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            //smtpClient.UseDefaultCredentials = false;
            //smtpClient.Credentials = new NetworkCredential(fromEmail, fromPW);
            //smtpClient.Send(message.From.ToString(), message.To.ToString(), message.Subject, message.Body);
			
			//DateTime d = new DateTime();
            //MailMessage message = new System.Net.Mail.MailMessage();
            //string fromEmail = "webmaster@uol.edu.pk";
            //string fromPW = "ejmssoglblmyepqy";
            ////string fromEmail = ConfigurationManager.AppSettings["sendingemail"].ToString();
            ////string fromPW = ConfigurationManager.AppSettings["sendingemailpassword"].ToString();
            //message.From = new MailAddress(fromEmail, "uol.edu.pk");
            //message.To.Add("imran.tareen@uol.edu.pk");
            //message.Subject = "for testing " + d.ToLongDateString();
            //message.Body = "for testing";
            //message.IsBodyHtml = true;


            ////ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            //message.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            //SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            //smtpClient.EnableSsl = true;
            //smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            //smtpClient.UseDefaultCredentials = false;
            //smtpClient.Credentials = new NetworkCredential(fromEmail, fromPW);
            //smtpClient.Send(message.From.ToString(), message.To.ToString(), message.Subject, message.Body);


        }
        catch (Exception ex)
        {
            displaymessage = ex.Message;
        }
    }

    protected void cmdsubmit_Click(object sender, EventArgs e)
    {
        try
        {

            if (txtemail.Text == "")
            {
                DataTable dt = new DataTable();
                clsjobtblprofile objusers = new clsjobtblprofile();
                dt = objusers.Select();

                if (dt.Rows.Count > 0)
                {


                    foreach (DataRow dr in dt.Rows)
                    {
                        string password = "";
                        password = dr["password"].ToString();
                        StringBuilder bodytext = new StringBuilder();
                        bodytext.Append("Your Password for UOL Employment Potal" + Environment.NewLine);
                        bodytext.Append("  -  " + Environment.NewLine);
                        bodytext.Append("Email" + Environment.NewLine);
                        bodytext.Append(dr["emailaddress"].ToString() + Environment.NewLine);
                        bodytext.Append(Environment.NewLine);
                        bodytext.Append("Password" + Environment.NewLine);
                        bodytext.Append(password + Environment.NewLine);

                        string subject = "Account Information to access Employement Portal.";
                        string body = bodytext.ToString();

                        string toemail = dr["emailaddress"].ToString();

                        

                        int pid = Convert.ToInt32(dr["profileid"].ToString());
                        if (pid > 25401) {
                            bool sent;

                            sent = utl.sendemail(toemail, subject, Server.HtmlEncode(body), "");
                        }
                    }
                }

            }
            else
            {
                string password = "";
                password = txtpassword.Text;
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
                    displaymessage = utl.successmessage("Password has been sent to your email.");
                    //cmdsubmit.Enabled = false;
                }
                else
                {
                    displaymessage = utl.errormessage("Email not sent due to server problem. Try later");
                }

            }

                
        }
        catch (Exception ex)
        {
            displaymessage = ex.Message;
        }
    }
}