using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Web.UI.HtmlControls;
using IREL.Utilities;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using IREL;

namespace IREL
{
    public partial class Home : System.Web.UI.Page
    {
        DataUtility objUtil = new DataUtility();
        string[] parm;

        private void Message(string s)
        {
            string script = @"alert('" + s + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "jscall", script, true);
        } 

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Expires = 0;
            Response.AddHeader("pragma", "no-cache");
            Response.AddHeader("cache-content", "private");
            Response.CacheControl = "no-cache";
            Response.Cache.SetNoStore();

            string referer = Request.ServerVariables["HTTP_REFERER"];
            if (string.IsNullOrEmpty(referer))
            {
                Response.Redirect("~/Login.aspx");
            }
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            if (!IsPostBack)
            {
                FillingPageload();
                FillGrid1();

                if (Session["LastVisitedDateTime"] != null)
                {
                    if (Session["LastVisitedDateTime"].ToString() == "")
                    {
                        lblLastVisitedDateTime.Text = "Welcome";
                    }
                    else
                    {
                        lblLastVisitedDateTime.Text = Session["LastVisitedDateTime"].ToString();
                    }
                }
                if (Session["IPAddressOut"] != null)
                {
                    if (Session["IPAddressOut"].ToString() == "")
                    {
                        lblipaddr.Text = "Welcome";
                    }
                    else
                    {
                        lblIPAddressOut.Text = Session["IPAddressOut"].ToString();
                    }
                }
                if (Session["ipaddr"] != null)
                {
                    if (Session["ipaddr"].ToString() == "")
                    {
                        lblipaddr.Text = "Welcome";
                    }
                    else
                    {
                        lblipaddr.Text = Session["ipaddr"].ToString();
                    }
                }
                if (Session["SLCount"] != null)
                {
                    if (Session["SLCount"].ToString() == "")
                    {
                        lblSL.Text = "Welcome";
                    }
                    else
                    {
                        lblSL.Text = Session["SLCount"].ToString();
                    }
                }
                if (Session["ULCount"] != null)
                {
                    if (Session["ULCount"].ToString() == "")
                    {
                        lblUL.Text = "Welcome";
                    }
                    else
                    {
                        lblUL.Text = Session["ULCount"].ToString();
                    }
                }
                // Dashboard info
                //ValidateDashBoard();
                // Response.Redirect("~/Testing.aspx");
            }
        }

        protected void ddlFYId_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillGrid();
        }

        private void FillDropDown(DropDownList ddl, string Procedure, string Table, string ValueField, string TextField, string[] parm)
        {
            ddl.Items.Clear();
            ddl.Items.Insert(0, new ListItem("--Select--", "0"));
            ddl.AppendDataBoundItems = true;
            ddl.DataSource = objUtil.FillData(Procedure, Table, parm).Tables[0];
            ddl.DataValueField = ValueField;
            ddl.DataTextField = TextField;
            ddl.DataBind();
        }

        private void FillingPageload()
        {
            parm = new string[] { };
            FillDropDown(ddlFYId, "Pro_Dropdown", "Mt_FinancialYear", "FYID", "FYFull", parm);
            FillGrid1();

            if ((Session["Roleid"].ToString() == "1") || (Session["Roleid"].ToString() == "2") || (Session["Roleid"].ToString() == "14") || (Session["Roleid"].ToString() == "15"))//for Admin, Unit HRM, Unit Admin, HO HRM 
            {
                Message("You are in" + " " + Session["RoleName"].ToString() + " " + "Role");
                
                Panel1.Visible = false;
            }
        }

        private void FillGrid()
        {
            parm = new string[] { ddlFYId.SelectedValue.ToString(), Session["UserId"].ToString(), Session["Roleid"].ToString(), Session["UserId"].ToString() };
            DataSet ds = new DataSet();
            ds = objUtil.FillData("Pro_GetData_4_Parameter", "Appraisal_Calendar_HOME", parm);
            if (ds.Tables.Count > 0)
            {
                gvAppraisalSectionCalendar.DataSource = ds.Tables[0];
                gvAppraisalSectionCalendar.DataBind();
            }
            else
            {
                gvAppraisalSectionCalendar.DataSource = null;
                gvAppraisalSectionCalendar.DataBind();
            }
        }
        
        private void FillGrid1()
        {
            string[] parm = new string[] { };
            gvCircularView.DataSource = objUtil.FillData("Pro_GridFill", "Mt_Circular_Home", parm).Tables[0];
            gvCircularView.DataBind();
        }

        protected void gvCircularView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCircularView.PageIndex = e.NewPageIndex;
            FillGrid1();
        }
        //protected void gvCircularView_SelectedIndexChanged(object sender, GridViewPageEventArgs e)
        //{
        //    gvCircularView.PageIndex = e.NewPageIndex;
        //    FillGrid1();
        //}

        protected void lnkAttachment_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton Attach = (LinkButton)sender;
                GridViewRow row = (GridViewRow)Attach.Parent.Parent;
                int idx = row.RowIndex;
                LinkButton attach = (LinkButton)gvCircularView.Rows[idx].Cells[2].FindControl("lblAttachments1");
                FileInfo objFile = new FileInfo(attach.Text);
                Response.ClearHeaders();
                Response.ClearContent();
                Response.ContentType = "Application/octet-stream";
                Response.AddHeader("content-disposition", "attachment; filename = " + objFile.Name);
                string MyAttach = "C:\\inetpub\\wwwroot\\irelonline.in\\Masters\\Circular\\" + Attach.Text;//For Ctrl+S live application
                //string MyAttach = "C:\\inetpub\\wwwroot\\IREL\\Masters\\Circular\\" + Attach.Text;
                Response.WriteFile( MyAttach.ToString());
                Response.End();
            }
            catch (Exception ex)
            {
                Message(ex.Message);
            }
        }

        //private void ValidateDashBoard()
        //{
        //    rvwDIV.Visible = false;
        //    rptDIV.Visible = false;
        //    hlAllApprsi.Text = " -Nos"; // Reporting 
        //    hlRpCa1.Text = " -Nos";     
        //    hlRpNCa1.Text = " -Nos";    
        //    hlRpCa2.Text = " -Nos";     
        //    hlRpNCa2.Text = " -Nos";     
        //    //--------------------------------
        //    hlAllRvs.Text = " -Nos";   // Reviewing    
        //    hlRvCa1.Text = " -Nos";      
        //    hlRvNCa1.Text = " -Nos";
        //    hlRvCa2.Text = " -Nos";    
        //    hlRvNCa2.Text = " -Nos";    
           
        //    if (Session["UserId"] != null && Session["Roleid"] != null)
        //    { 
        //        int? _allCnt = 0, _rpcCnta1 = 0, _rpncCnta1 = 0, _rpcCnta2 = 0, _rpncCnta2 = 0;
        //        int? _allrvCnt = 0, _rvcCnta1 = 0, _rvncCnta1 = 0, _rvcCnta2 = 0, _rvncCnta2 = 0; 
        //        parm = new string[] { "" };  
              
        //        //--------------------------------------------------------
        //        DataSet ds = objUtil.FillData("usp_RptGetCount", parm);

        //        if (ds.Tables.Count > 0)
        //        {
        //            if (ds.Tables[0].Rows.Count > 0)
        //            { 
        //                // Reporting 
        //                _allCnt = Convert.ToInt16(ds.Tables[0].Rows[0]["allCnt"].ToString());
        //                _rpcCnta1 = Convert.ToInt16(ds.Tables[0].Rows[0]["rpcCnta1"].ToString());
        //                _rpncCnta1 = Convert.ToInt16(ds.Tables[0].Rows[0]["rpncCnta1"].ToString());
        //                _rpcCnta2 = Convert.ToInt16(ds.Tables[0].Rows[0]["rpcCnta2"].ToString());
        //                _rpncCnta2 = Convert.ToInt16(ds.Tables[0].Rows[0]["rpncCnta2"].ToString()); 
                          
        //                //  Reviewing
        //                _allrvCnt = Convert.ToInt16(ds.Tables[0].Rows[0]["allrvCnt"].ToString());
        //                _rvcCnta1 = Convert.ToInt16(ds.Tables[0].Rows[0]["rvcCnta1"].ToString());
        //                _rvncCnta1 = Convert.ToInt16(ds.Tables[0].Rows[0]["rvncCnta1"].ToString());
        //                _rvcCnta2 = Convert.ToInt16(ds.Tables[0].Rows[0]["rvcCnta2"].ToString());
        //                _rvncCnta2 = Convert.ToInt16(ds.Tables[0].Rows[0]["rvncCnta2"].ToString()); 
        //            } 
        //            else
        //                Message("No Data found");
        //        }
        //        else
        //            Message("No Data found");
        //        //--------------------------------------------------------
        //        if (Session["Roleid"].ToString() == "3")  // Appraisee 
        //        {
        //            // proceed to appraisal process

        //        }
        //        else if (Session["Roleid"].ToString() == "4")  // Reporting Officer
        //        {
        //            rptDIV.Visible = true;
        //            rvwDIV.Visible = false;
        //            hlAllApprsi.Text = _allCnt + " -Nos";
        //            hlRpCa1.Text = _rpcCnta1 + " -Nos";    // A1
        //            hlRpNCa1.Text = _rpncCnta1 + " -Nos";
        //            hlRpCa2.Text = _rpcCnta2 + " -Nos";    // A2
        //            hlRpNCa2.Text = _rpncCnta2 + " -Nos"; 
        //        }
        //        else if (Session["Roleid"].ToString() == "5")  // Reviewing Officer 
        //        {
        //            rptDIV.Visible = false;
        //            rvwDIV.Visible = true;
        //            hlAllRvs.Text = _allrvCnt + " -Nos";
        //            hlRvCa1.Text = _rvcCnta1 + " -Nos";         // A1
        //            hlRvNCa1.Text = _rvncCnta1 + " -Nos";
        //            hlRvCa2.Text = _rvcCnta2 + " -Nos";   // A2
        //            hlRvNCa2.Text = _rvncCnta2 + " -Nos";
        //        }
        //        else  // All others 
        //        {

        //        }
        //    }
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    decimal val = Convert.ToDecimal(TextBox1.Text);
        //    val = Math.Round(val, 2);
        //    Label1.Text = val.ToString();
        //}
    }
}