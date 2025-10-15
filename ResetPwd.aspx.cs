using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using IREL.Utilities;
using IREL.DBML;

//using MyRfc2898Encrypt;

namespace IREL
{
    public partial class ResetPwd : System.Web.UI.Page
    {
        DataUtility objDataUtility = new DataUtility();
        // MyEncrypt_Decrypt objEncDecr = new MyEncrypt_Decrypt(); 
        static int _firstLoad = 0;
        static string ipAddr = string.Empty, _uname = string.Empty, _phno= string.Empty, _dob = string.Empty;
        
        private void Message(string s)
        {
            string script = @"alert('" + s + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "jscall", script, true);
        }

        private void ClearAll()
        {
            txtLoginName.Text = "";
            txtDOB.Text = "";
            txtPhone1.Text = "";
            txtNewPassword.Text = "";
            txtConfirmNewPwd.Text = "";
            //lblStatus.Text = "";
            //lblStatus2.Text = "";
            div2.Visible = false;
            div1.Visible = true;
            Hidden1.Value = "";
            Hidden2.Value = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetCacheability(HttpCacheability.Private);

            Response.Buffer = true;
            Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
            Response.Expires = 0;
            Response.CacheControl = "no-cache";

            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetValidUntilExpires(false);

            if (!IsPostBack)
            {
                ClearAll();
                DataUtility._guid2 = Guid.NewGuid().ToString();
                _firstLoad = 1;
            }
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }

        protected void btnValidate_Click(object sender, EventArgs e)
        {
            MastersDBDataContext mdb = new MastersDBDataContext(objDataUtility.objConnection);
            Nullable<int> RecStatus = null;

            _uname = System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(txtLoginName.Text.Trim(), true);
            _phno = System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(txtPhone1.Text.Trim(), true);
            _dob = System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(txtDOB.Text.Trim(), true);

            txtLoginName.Text = "";
            txtPhone1.Text = "";
            txtDOB.Text = "";

            // Password verification ..
            mdb.Pro_Set_New_Password("", _uname, "emailid", _phno, _dob, "", 1, ref RecStatus);

            if (RecStatus > 0)
            {
                div2.Visible = true;  // if validated successfully
                div1.Visible = false;

                //lblStatus.Text = "Verified Successfully.";
                //lblStatus2.Text = "";
                Message("Verified Successfully.");
            }
            else if (RecStatus == 0)
            {
                //lblStatus.Text = "Verification Failed, Please check (Login-Name/ Phone1 / DOB).";
                Message("Verification Failed, Please check (Login-Name/ Phone1 / DOB).");
                div2.Visible = false;
                div1.Visible = true;
            }

            ipAddr = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (string.IsNullOrEmpty(ipAddr))
            {
                ipAddr = Request.ServerVariables["REMOTE_ADDR"];
            }

            ///-----------------------------------------------------------------------------------------
            if (_firstLoad == 1)
            {
                // inserting into login 
                ATEventLog.UpdAuditTrails(_uname, ipAddr, DataUtility._guid2, "", "Validating", "Reset Password");
                // Updating event log also
                ATEventLog.UpdInsAuditEventLogs(_uname, DataUtility._guid2, "Validating", "Reset Password");
                _firstLoad = 2;
            }                                                                                           
            else if (_firstLoad == 2)
            {
                // Updating event log only
                ATEventLog.UpdInsAuditEventLogs(_uname, DataUtility._guid2, "Validating", "Reset Password");
            }

            if (RecStatus == 0)///Clear tetx
            {
                txtLoginName.Text = "";
                txtDOB.Text = "";
                txtPhone1.Text = "";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MastersDBDataContext mdb = new MastersDBDataContext(objDataUtility.objConnection);
            Nullable<int> RecStatus = null; 
            //lblStatus2.Text = "";

            if (Page.IsValid)
            {
                // Updating New Password 
                mdb.Pro_Set_New_Password("", _uname, "emailid", _phno, _dob, Hidden1.Value, 2, ref RecStatus);

                if (RecStatus == 999)
                {
                     lblStatus2.Text = "New Password should not be same as last 3 old passwords.";
                    // Message("New Password should not be same as last 3 old passwords.");
                    ATEventLog.UpdInsAuditEventLogs(_uname, DataUtility._guid2, "Pwd change failed", "Reset Password");

                    //Response.Redirect("~/Login.aspx");
                }
                else if (RecStatus >= 0)
                {
                    lblStatus2.Text = "Your Password has been modified Successfully.";
                    //Message("Your Password has been modified Successfully.");
                    ATEventLog.UpdInsAuditEventLogs(_uname,   DataUtility._guid2, "Passoword changed", "Reset Password");
                }
                else if (RecStatus < 0)
                {
                    lblStatus2.Text = "Updation failed, please contact Admin.";
                    //Message("Updation failed, please contact Admin.");
                    //ATEventLog.UpdInsAuditEventLogs(_uname,  DataUtility._guid2,  "Pwd change failed", "Reset Password");
                }
            }
        }
    }
}