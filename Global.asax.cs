using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using IREL;
using IREL.Utilities;

namespace IREL
{
       
    
    public class Global : HttpApplication
    {
        
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterOpenAuth();
            //HttpContext.Current.Response.AddHeader("x-frame-options", "DENY");
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            //try
            //{
            //    if (HttpContext.Current.Session != null)
            //    {
            //        Session.Abandon();
            //        // Code that runs when an unhandled error occurs
            //        Response.Redirect("~/Utilities/GenericErr.html");
            //    }
            //    else if (HttpContext.Current.Session == null)
            //    {
            //        //Response.Redirect("Login.aspx");
            //    }

            //}
            //catch (Exception ex)
            //{

            //}

        }
        void Session_Start(object sender, EventArgs e)
        {
            try
            {
                if (Request.IsSecureConnection == true)
                {
                    Response.Cookies["ASP.NET_SessionId"].Secure = true;
                }
            }
            catch (Exception)
            {
            }
        }
        protected void Session_End(object sender, EventArgs e)
        {
            // Note: The Session_End event is raised only when the sessionstate mode is set to InProc in the Web.config file. 
            // If session mode is set to StateServer or SQLServer, the event is not raised.
            DataUtility objDataUtility = new DataUtility();
            DBML.MastersDBDataContext objMastersDB = new DBML.MastersDBDataContext(objDataUtility.objConnection);
            //objMastersDB.Tt_Pro_Tt_Audit_LogOutUpdate(Session.SessionID);

            objMastersDB.Tt_Pro_Tt_Audit_LogOutUpdate(DataUtility._guid2);
            DataUtility._guid2 = string.Empty;
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            //if (Request.Cookies["ASP.NET_SessionId"] != null)
            //{
            //    Response.Cookies["ASP.NET_SessionId"].Value = string.Empty;
            //    Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddMonths(-20);
            //}  
            //if (Request.Cookies["AuthToken"] != null)
            //{
            //    Response.Cookies["AuthToken"].Value = string.Empty;
            //    Response.Cookies["AuthToken"].Expires = DateTime.Now.AddMonths(-20);
            //} 
        }
    }
}
