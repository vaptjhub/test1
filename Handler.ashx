<%@ WebHandler Language="C#" Class="Handler" %>

using System.Web;
using System.IO;
using System.Net;
using System.Web.Script.Serialization;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public class Handler : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        //Check if Request is to Upload the File.
        HttpPostedFile postedFile;
        string fileName="";

        if (context.Request.Files.Count > 0)
        {
            for (int i=0;i<context.Request.Files.Count; i++)
            {
                //Fetch the Uploaded File.
                postedFile = context.Request.Files[i];
                fileName = Path.GetFileName(postedFile.FileName);
                //Save the File in Folder.
                string folderPath = "";
                if (i==0)
                {
                    folderPath = context.Server.MapPath("~/images/profile/temp/");
                        if (fileName != "") {
                            postedFile.SaveAs(folderPath + fileName);
                        }
                        break;
                }else if (i==1)
                {
                        folderPath = context.Server.MapPath("~/cv/temp/");
                        if (fileName != "") {
                            postedFile.SaveAs(folderPath + fileName);
                        }
                }

                
            }


            //Send File details in a JSON Response.
            string json = new JavaScriptSerializer().Serialize(
                new
                {
                    name = fileName
                });
            context.Response.StatusCode = (int)HttpStatusCode.OK;
            context.Response.ContentType = "text/json";
            context.Response.Write(json);
            context.Response.End();
        }
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}