using IREL.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Web.SessionState;

//using MyRfc2898Encrypt;

namespace IREL
{
    public partial class Login : System.Web.UI.Page
    {

        #region Global Declarations...

        DataUtility objDataUtility = new DataUtility();
        ServerAddress objServerAddress = new ServerAddress();
        Authenticate objAuthenticate = new Authenticate();

        MySendSmsNow objSendSms;

        #endregion

        #region User-Defined Functions...

        private void Message(string s)
        {
            string script = @"alert('" + s + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "jscall", script, true);
        }

        private void LoadServer()
        {
            objServerAddress.ConfigFilePath = Server.MapPath("~/Web.config");
            if (objServerAddress.ServerReadSettings("connectionString") == "")
                Response.Redirect("~/ConfigurationSettings/DBConfigurationSettings.aspx");
        }

        private void ClearAll()
        {
            txtUsername.Text = "";
            txtPasswrd.Text = "";
            check_Code();
            txtVerifyCode.Text = "";
            txtOTP1.Text = "";
            Hidden1.Value = "";
            Hidden2.Value = "";
            txtUsername.Focus();
        }

        private void Get_User_Details(string AuType, string _UName, string _Pwd)
        {
            //First check whether valid user or not and then proceed..
            if (_UName != "" && _Pwd != "")
            {
                DBML.MastersDBDataContext objMastersDB = new DBML.MastersDBDataContext(objDataUtility.objConnection);
                Nullable<int> RecStatus = null;
                Nullable<int> EmpId = null;
                string EmpName = string.Empty;
                string LastVisitedDateTime = string.Empty;
                string IPAddressOut = string.Empty;
                string Mobile = string.Empty;
                string EmailId = string.Empty;
                Nullable<int> _SLCount = null;
                Nullable<int> _ULCount = null;

                string ipaddr = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
                if (string.IsNullOrEmpty(ipaddr))
                {
                    ipaddr = Request.ServerVariables["REMOTE_ADDR"];
                }
                //Ashok start
                objMastersDB.Pro_Get_LoginUserValidate(AuType, _UName, _Pwd, ipaddr, ref RecStatus, ref EmpName, ref EmpId, ref Mobile, ref EmailId, ref LastVisitedDateTime, ref IPAddressOut, ref _SLCount, ref _ULCount);

                switch (RecStatus)
                {
                    case 111:
                    {
                        //check_Code();                            
                        Message("Please enter valid credentials");
                        ClearAll();
                        //txtUsername.Focus();
                        break;
                    }
                    case 222:
                    {
                        //check_Code();                            
                        Message("Please enter valid credentials");
                        ClearAll();
                        //txtPasswrd.Focus();
                        break;
                    }
                    case 444:
                    {
                        Session["UserId"] = EmpId;
                        Session["EmpCode"] = _UName;
                        Session["EmpName"] = EmpName;
                        Session["LastVisitedDateTime"] = LastVisitedDateTime;
                        Session["IPAddressOut"] = IPAddressOut;
                        Session["ipaddr"] = ipaddr;
                        Session["Mobile"] = Mobile;
                        Session["EmailId"] = EmailId;
                        Session["SLCount"] = _SLCount;
                        Session["ULCount"] = _ULCount;
                        AdminLogDetails(_UName, ipaddr);
                        //Response.Redirect("~/MainHome.aspx");
                        OTPSend();//only run for irel
                        break;
                    }
                    case 333:
                    {
                        Session["Roleid"] = "0";//temp
                        Session["UserId"] = EmpId;
                        Session["EmpCode"] = _UName;
                        Session["EmpName"] = EmpName;
                        Session["LastVisitedDateTime"] = LastVisitedDateTime;
                        Session["IPAddressOut"] = IPAddressOut;
                        Session["ipaddr"] = ipaddr;
                        Session["Mobile"] = Mobile;
                        Session["EmailId"] = EmailId;
                        Session["SLCount"] = _SLCount;
                        Session["ULCount"] = _ULCount;
                        Response.Redirect("~/Home.aspx");//temp
                        break;
                    }
                    case 555:
                    {
                        //check_Code();                           
                        Message("Please enter valid credentials");
                        ClearAll();
                        break;
                    }
                    case 666:
                    {
                        //check_Code();                            
                        Message("Please enter valid credentials");
                        ClearAll();
                        break;
                    }
                    default:
                    {
                        //check_Code();
                        Message("Please enter valid credentials");
                        ClearAll();
                        break;
                    }
                }
            }
                //Ashok end
            else
            {
                //check_Code();               
                Message("Please enter valid credentials");
                ClearAll();
            }
        }

        private void Check_Authentication(string UName, string PWD)
        {
            string AuthType = System.Configuration.ConfigurationManager.AppSettings["AuthType"].ToString();
            if (AuthType != "")
            {
                // if the authentication is for AD domain users i.e. the authentication mode of the application is Windows
                if (AuthType == "ADS")
                {
                    //Check the Authentication through LDAP accessing the Active Directory (AD) 
                    Check_ADS_Authentication(UName, PWD);//
                }

                // if the authentication is only through database, i.e. the authentication mode of the application is Forms
                else
                {
                    //Get the complete User Details while login if the user is a valid user
                    Get_User_Details("DB", UName, PWD);
                }
            }
        }

        private void Check_ADS_Authentication(string UserName, string PWD)
        {

            //Get the DomainName defined in WebConfig File as <add key="DomainName" value="esoft.com" />
            string DomainName = System.Configuration.ConfigurationSettings.AppSettings["DomainName"].ToString();

            //Check the below condition by Calling the Function defined in Authenticate Class
            if ((objAuthenticate.IsAuthenticated(DomainName, UserName) == true))
            {
                //Get the complete User Details while login if the user is a valid user
                Get_User_Details("ADS", UserName, PWD);
            }
            else
            {
                ////Display the message in Login Error Label   
                //check_Code();                
                Message("Please enter valid credentials");
                ClearAll();
            }
        }

        public string CreateRandomCode(int codeCount)
        {
            string allChar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z";
            string[] allCharArray = allChar.Split(',');
            string randomCode = "";
            int temp = -1;

            Random rand = new Random();
            for (int i = 0; i < codeCount; i++)
            {
                if (temp != -1)
                {
                    rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
                }
                int t = rand.Next(36);
                if (temp != -1 && temp == t)
                {
                    return CreateRandomCode(codeCount);
                }
                temp = t;
                randomCode += allCharArray[t];
            }
            return randomCode;
        }

        //Then we generate verification code character string as exported image
        private void CreateImage(string checkCode)
        {
            Bitmap image = new Bitmap(Convert.ToInt32(Math.Ceiling((decimal)(checkCode.Length * 14))), 22);
            Graphics g = Graphics.FromImage(image);

            try
            {
                Random random = new Random();
                g.Clear(Color.AliceBlue);

                for (int i = 0; i < 25; i++)
                {
                    int x1 = random.Next(image.Width);
                    int x2 = random.Next(image.Width);
                    int y1 = random.Next(image.Height);
                    int y2 = random.Next(image.Height);

                    g.DrawLine(new Pen(Color.Silver), x1, y1, x2, y2);
                }

                Font font = new Font("Arial", 11, FontStyle.Bold);
                System.Drawing.Drawing2D.LinearGradientBrush brush = new System.Drawing.Drawing2D.LinearGradientBrush(new Rectangle(0, 0, image.Width, image.Height), Color.Blue, Color.DarkRed, 1.2f, true);
                g.DrawString(checkCode, font, new SolidBrush(Color.Black), 2, 2);

                for (int i = 0; i < 100; i++)
                {
                    int x = random.Next(image.Width);
                    int y = random.Next(image.Height);

                    image.SetPixel(x, y, Color.FromArgb(random.Next()));
                }

                g.DrawRectangle(new Pen(Color.Silver), 0, 0, image.Width - 1, image.Height - 1);
                // image.Save(Server.MapPath("UploadFolder_SI_Temp\\Login_VerificationCode.gif"), System.Drawing.Imaging.ImageFormat.Gif);

                if (File.Exists(Server.MapPath("~\\Images\\Login_VerificationCode.gif")))
                    File.Delete(Server.MapPath("~\\Images\\Login_VerificationCode.gif"));    //delete the file if it exists..

                image.Save(Server.MapPath("~\\Images\\Login_VerificationCode.gif"), System.Drawing.Imaging.ImageFormat.Gif);
                Random r1 = new Random();

                imgVerifyCode.ImageUrl = "~\\Images\\Login_VerificationCode.gif?" + r1.Next();

            }
            catch (Exception ex)
            {
                string strerr = ex.Message;
            }
            finally
            {
                g.Dispose();
                image.Dispose();
            }
        }

        private void check_Code()
        {
            txtVerifyCode.Text = "";
            string checkCode = this.CreateRandomCode(6);
            ViewState["CheckCode"] = checkCode;
            CreateImage(checkCode);
        }

        private void OTPSend()
        {
            tdLog.Visible = false;
            tdOTP.Visible = true;
            Random OTP = new Random();

            ViewState["OTP"] = OTP.Next(100000, 999999);
            // ViewState["OTP"] = "111111";

            if (Session["Mobile"] != null)
            {
                objSendSms = new MySendSmsNow();

                //objSendSms.SendBulkSmsCochin("Your IREL login OTP: " + ViewState["OTP"].ToString(), Session["Mobile"].ToString(), "OTP", "1707160067104742935");
            }
            else
                Message("Your Mobile No, is not updated");

            if (Session["EmailId"] != null)
            {
                MyMailMessage objMyMailMessage = new MyMailMessage();
                objMyMailMessage.SendMail(Session["EmailId"].ToString(), "Your IREL login OTP", "Your IREL login OTP: " + ViewState["OTP"].ToString());
            }
            txtOTP1.Focus();
            }
        private void AdminLogDetails(string _UName, string ipaddress)
        {
            DBML.MastersDBDataContext objMastersDB = new DBML.MastersDBDataContext(objDataUtility.objConnection);

            //objMastersDB.Tt_Pro_Tt_Audit_LoginUpdate(_UName, ipaddress, newId, "SL");
            objMastersDB.Tt_Pro_Tt_Audit_LoginUpdate(_UName, ipaddress, DataUtility._guid2, "SL");
            Session["ipAddrs"] = ipaddress;

        }
        private void SLUL(string _UName)
        {
            string ipaddr = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (string.IsNullOrEmpty(ipaddr))
            {
                ipaddr = Request.ServerVariables["REMOTE_ADDR"];
            }
            DBML.MastersDBDataContext objMastersDB = new DBML.MastersDBDataContext(objDataUtility.objConnection);
            //objMastersDB.Tt_Pro_Tt_Audit_LoginUpdate(_UName, ipaddr, Session.SessionID, "UL");
            objMastersDB.Tt_Pro_Tt_Audit_LoginUpdate(_UName, ipaddr, DataUtility._guid2, "UL"); // un-successfull login 
        }
        #endregion

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

            Response.Expires = 0;
            Response.AddHeader("pragma", "no-cache");
            Response.AddHeader("cache-content", "private");
            Response.CacheControl = "no-cache";
            Response.Cache.SetNoStore();

            if (!IsPostBack)
            {
                LoadServer();
                //--------------------------------------
                Session.Clear();//logout first and last time
                Session.Abandon();//logout first and last time
                Session.RemoveAll();//logout first and last time                
                FormsAuthentication.SignOut();//logout first and last time

                if (Request.Cookies["ASP.NET_SessionId"] != null)
                {
                    Response.Cookies["ASP.NET_SessionId"].Value = string.Empty;
                    Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddMonths(-20);
                }
                if (Request.Cookies["AuthToken"] != null)
                {
                    Response.Cookies["AuthToken"].Value = string.Empty;
                    Response.Cookies["AuthToken"].Expires = DateTime.Now.AddMonths(-20);
                }
                //--------------------------------------


                //LoadServer();
                //In order to create a random verification code,we create a method called CreateRandomCode at first
                check_Code(); //Captcha
                txtUsername.Focus();
                /*
                Random rd = new Random();
                string rno = System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Convert.ToString(rd.Next()), true);
                */
                btnlogin.Attributes.Add("onClick", "return MyEncryptPassword('');");
                //imgReset.Attributes.Add("onClick", "return MyEncryptPassword('');");
                imgReset.Attributes.Add("onClick", "return MyEncryptPasswordClear('');");

                btnClear.Attributes.Add("onClick", "return MyEncryptPasswordClear('');");
                lnkResetpwd.Attributes.Add("onClick", "return MyEncryptPasswordClear('');");
            }

            // Response.Redirect("~/abcde.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string _UName = Hidden2.Value, _Pwd = Hidden1.Value;
            DataUtility._guid2 = Guid.NewGuid().ToString();

            if (txtVerifyCode.Text.Trim() != "")
            {
                //if (txtVerifyCode.Text.Trim() == ViewState["CheckCode"].ToString())
                //{
                    if (_UName != "" && _Pwd != "")
                    {
                        //Get_User_Details();
                        Check_Authentication(_UName, _Pwd);
                    }
                    else
                    {
                        Message("Please enter valid credentials");
                        //check_Code();
                        ClearAll();
                    }
                //}
                //else
                //{
                //    //ClearAll();                  
                //    check_Code();
                //    Message("Enter the letters as they are shown in the image above.");
                //}
            }
            else
            {
                check_Code();
                Message("Enter the letters as they are shown in the image above.");
            }

            SLUL(_UName);

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }

        protected void imgReset_Click(object sender, ImageClickEventArgs e)
        {
            check_Code();
        }

        protected void btnOtpV_Click(object sender, EventArgs e)
        {
            //if (txtOTP1.Text.Trim() == ViewState["OTP"].ToString())
            //{
                Response.Redirect("~/MainHome.aspx");
            //}
            //else
            //{
            //    Message("Please Enter Valid OTP  ");
            //}
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            OTPSend();
        }

        protected void lnkResetpwd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ResetPwd.aspx");
        }
    }
}

