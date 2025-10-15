using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using IREL.Utilities;
using System.Text; 

namespace IREL
{
    public partial class autosms : System.Web.UI.Page, IPostBackEventHandler
    {
        // ANIL N ...
        DataUtility objUtil = new DataUtility();
        string[] parm;
        List<string> MobileNos;
        MySendSmsNow objSendSMS;
        static int _smsFloodCnt1;

        private void Message(string s)
        {
            string script = @"alert('" + s + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "jscall", script, true);
        }
         
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                divMRS.Attributes["onclick`"] = ClientScript.GetPostBackEventReference(this, "divMRS");
                divMid.Attributes["onclick"] = ClientScript.GetPostBackEventReference(this, "divMid");
                divA2self.Attributes["onclick"] = ClientScript.GetPostBackEventReference(this, "divA2self");
                divA2report.Attributes["onclick"] = ClientScript.GetPostBackEventReference(this, "divA2report");
                divA2review.Attributes["onclick"] = ClientScript.GetPostBackEventReference(this, "divA2review");

            }
            
        }

        // Raises the postback event 
        public void RaisePostBackEvent(string eventArgument)
        {
            if (!string.IsNullOrEmpty(eventArgument))
            {
                if (eventArgument == "divMRS")
                {
                    // sending notifications about ( Mainpage, Rating scale, Section-A1 )
                    SendNotifications("divMRS");
                }
                else if (eventArgument == "divMid")
                {
                    SendNotifications("divMid");
                }
                else if (eventArgument == "divA2self")
                {
                    SendNotifications("divA2self");
                }
                else if (eventArgument == "divA2report")
                {
                    SendNotifications("divA2report");
                }
                else if (eventArgument == "divA2review")
                {
                    SendNotifications("divA2review");
                }
            }
        }

        private void MainPage_RatingScale_A1(string _remainder)
        {
            string[] _params = new string[] { _remainder, "0" };
            DataSet ds1 = new DataSet();
            string _MsgToSend = string.Empty, _reply = string.Empty, _to = string.Empty;
            StringBuilder _toContacts = new StringBuilder("");

            ds1 = objUtil.FillData("Pro_GetSMS_Notifications", _params);

            string _ActStartDate = ds1.Tables[0].Rows[0]["ActivityStartDate"].ToString();
            string _ActivityEndDate = ds1.Tables[0].Rows[0]["ActivityEndDate"].ToString();

            DateTime _ActivityStartDate1 = Convert.ToDateTime(ds1.Tables[0].Rows[0]["ActivityStartDate"].ToString());
            DateTime _currntDate = DateTime.Now;

            var _daysdiff = (_ActivityStartDate1 - _currntDate).Days;
            int count = 0;

            // 1st Announcement to all appraisees (15 days)
            if (_daysdiff == 15)
            {
                objSendSMS = new MySendSmsNow();
                _MsgToSend = "OPAMS ALERT! The performance planning (KRA/CR setting) process 2018-19 will commence on " + _ActStartDate + ". Please visit https://irelonline.in to submit your KRA’s and CR’s to your Reporting Officer. The submission facility will be available till " + _ActivityEndDate + " 23:59:59 HRS and will be closed thereafter. For any assistance please contact your Reporting Officer <Corporate HRM Department>";

                for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                {
                    _to = "";
                    _to = ds1.Tables[0].Rows[i]["PhoneNo1"].ToString();

                    if (_to.Length == 10)
                    {
                        if (count == 0)
                            _toContacts.Append(_to);
                        else
                            _toContacts.Append("," + _to);
                    }
                    count++;
                }

                _reply = objSendSMS.SendBulkSmsCochin(_MsgToSend, _toContacts.ToString(), "");

                if (_reply == "FAIL") // Exception
                {
                    Message("Message delivery Failed");
                    ATEventLog.UpdInsAuditEventLogs(Session["UserId"].ToString(), DataUtility._guid2, "SMS Failed", "Message Center");
                }
                else if (_reply == "ZERO")
                {
                    Message("SMS Credits are reached to 'ZERO'");
                    ATEventLog.UpdInsAuditEventLogs(Session["UserId"].ToString(), DataUtility._guid2, "SMS Failed", "Message Center");
                }
                else
                {
                    Message("Message has been delivered successfully");
                    ATEventLog.UpdInsAuditEventLogs(Session["UserId"].ToString(), DataUtility._guid2, "SMS sent", "Message Center");
                }
            }
            // 2nd Announcement to all appraisees (10 days or 5 days) (Not submitted cases)
            else if (_daysdiff == 10 || _daysdiff == 5)
            {
                _MsgToSend = "OPAMS ALERT! The performance planning (KRA/CR setting) process 2018-19 has resumed. Please visit https://irelonline.in to submit your KRA’s and CR’s to your Reporting Officer. The submission facility will be available till " + _ActivityEndDate + " 23:59:59 HRS and will be closed thereafter. For any assistance please contact your Reporting Officer <Corporate HRM Department>";
                for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                {
                    string _SubmitStatus = ds1.Tables[0].Rows[i]["SubmitStatus"].ToString();
                    if (_SubmitStatus == "0") // for not submitted cases only
                    {
                        _to = "";
                        _to = ds1.Tables[0].Rows[i]["PhoneNo1"].ToString();

                        if (_to.Length == 10)
                        {
                            if (count == 0)
                                _toContacts.Append(_to);
                            else
                                _toContacts.Append("," + _to);
                        }
                        count++;
                    }
                }

                _reply = objSendSMS.SendBulkSmsCochin(_MsgToSend, _toContacts.ToString(), "");

                if (_reply == "FAIL") // Exception
                {
                    Message("Message delivery Failed");
                    ATEventLog.UpdInsAuditEventLogs(Session["UserId"].ToString(), DataUtility._guid2, "SMS Failed", "Message Center");
                }
                else if (_reply == "ZERO")
                {
                    Message("SMS Credits are reached to 'ZERO'");
                    ATEventLog.UpdInsAuditEventLogs(Session["UserId"].ToString(), DataUtility._guid2, "SMS Failed", "Message Center");
                }
                else
                {
                    Message("Message has been delivered successfully");
                    ATEventLog.UpdInsAuditEventLogs(Session["UserId"].ToString(), DataUtility._guid2, "SMS sent", "Message Center");
                }

            }
            // 3rd Announcement to all (2 days or 1 day) (Not submitted cases)
            else if (_daysdiff == 2 || _daysdiff == 1)
            {
                _MsgToSend = "OPAMS ALERT! The performance planning process 2018-19 is in progress. As per our records you have not submitted your KRA/CR so far. Please submit the same immediately. The submission facility will be available only till " + _ActivityEndDate + " and will be closed thereafter. For any assistance please contact your Reporting Officer <Corporate HRM Department>";
                for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                {
                    string _SubmitStatus = ds1.Tables[0].Rows[i]["SubmitStatus"].ToString();
                    if (_SubmitStatus == "0") // for not submitted cases only
                    {
                        _to = "";
                        _to = ds1.Tables[0].Rows[i]["PhoneNo1"].ToString();

                        if (_to.Length == 10)
                        {
                            if (count == 0)
                                _toContacts.Append(_to);
                            else
                                _toContacts.Append("," + _to);
                        }
                        count++;
                    }
                }

                _reply = objSendSMS.SendBulkSmsCochin(_MsgToSend, _toContacts.ToString(), "");

                if (_reply == "FAIL") // Exception
                {
                    Message("Message delivery Failed");
                    ATEventLog.UpdInsAuditEventLogs(Session["UserId"].ToString(), DataUtility._guid2, "SMS Failed", "Message Center");
                }
                else if (_reply == "ZERO")
                {
                    Message("SMS Credits are reached to 'ZERO'");
                    ATEventLog.UpdInsAuditEventLogs(Session["UserId"].ToString(), DataUtility._guid2, "SMS Failed", "Message Center");
                }
                else
                {
                    Message("Message has been delivered successfully");
                    ATEventLog.UpdInsAuditEventLogs(Session["UserId"].ToString(), DataUtility._guid2, "SMS sent", "Message Center");
                }
            }

        }

        private void MidYearReview_Notifications(string _remainder)
        {

        }
        private void AnualAssessment_SelfA2(string _remainder)
        {

        }
        private void AnualAssessment_Reporting(string _remainder)
        {

        }
        private void AnualAssessment_Reviewing(string _remainder)
        {

        }

        public void SendNotifications(string _remainder)
        {
            if (_remainder == "divMRS")
            { 
               // MainPage_RatingScale_A1(_remainder);

                Message("you clicked A1");
            }
            else if (_remainder == "divMid")
            {
                //MidYearReview_Notifications("divMid");
                Message("you clicked MYR ");

            }
            else if (_remainder == "divA2self")
            {
                //AnualAssessment_SelfA2("divA2self");

                Message("you clicked A2 self");

            }
            else if (_remainder == "divA2report")
            {
                //AnualAssessment_Reporting("divA2report");
                Message("you clicked A2 report");

            }
            else if (_remainder == "divA2review")
            {
                //AnualAssessment_Reviewing("divA2review");
                Message("you clicked A2 review");

            }
        }
         


    }
}