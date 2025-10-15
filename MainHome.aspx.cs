using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IREL
{
    public partial class MainHome : System.Web.UI.Page
    {
        #region User-Defined Functions...

        private void Message(string s)
        {
            string script = @"alert('" + s + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "jscall", script, true);
        }

        #endregion

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
                Utilities.DataUtility objDataUtility = new Utilities.DataUtility();
                if (Session["UserId"] != null)
                {
                    string[] parm = new string[] { Session["UserId"].ToString() };
                    rbtnRoles.Items.Clear();
                    rbtnRoles.DataSource = objDataUtility.FillData("Pro_GetData_1_Parameter", "Tt_Emp_Roles", parm).Tables[0];
                    rbtnRoles.DataValueField = "Roleid";
                    rbtnRoles.DataTextField = "RoleName";
                    rbtnRoles.DataBind();
                    Session["RoleidCount"] = (rbtnRoles.Items.Count + rbtnRoles1.Items.Count + rbtnRoles2.Items.Count + rbtnRoles3.Items.Count + rbtnRoles4.Items.Count);

                    if (rbtnRoles.Items.Count == 0)
                    {
                        //Message("Sorry! you don't have any role");
                        //Response.Redirect("~/Login.aspx");
                        rbtnRoles.Visible = false;
                    }
                    //else if (rbtnRoles.Items.Count == 1)
                    //{
                    //    rbtnRoles.SelectedIndex = 0;
                    //    rbtnRoles_SelectedIndexChanged(sender, e);
                    //}

                    rbtnRoles1.Items.Clear();
                    rbtnRoles1.DataSource = objDataUtility.FillData("Pro_GetData_1_Parameter", "Tt_Emp_Roles_1", parm).Tables[0];
                    rbtnRoles1.DataValueField = "Roleid";
                    rbtnRoles1.DataTextField = "RoleName";
                    rbtnRoles1.DataBind();

                    if (rbtnRoles1.Items.Count == 0)
                    {
                        //Message("Sorry! you don't have any role");
                        //Response.Redirect("~/Login.aspx");
                        rbtnRoles1.Visible = false;
                    }
                    rbtnRoles2.Items.Clear();
                    rbtnRoles2.DataSource = objDataUtility.FillData("Pro_GetData_1_Parameter", "Tt_Emp_Roles_2", parm).Tables[0];
                    rbtnRoles2.DataValueField = "Roleid";
                    rbtnRoles2.DataTextField = "RoleName";
                    rbtnRoles2.DataBind();

                    if (rbtnRoles2.Items.Count == 0)
                    {
                        //Message("Sorry! you don't have any role");
                        //Response.Redirect("~/Login.aspx");
                        rbtnRoles2.Visible = false;
                    }
                    rbtnRoles3.Items.Clear();
                    rbtnRoles3.DataSource = objDataUtility.FillData("Pro_GetData_1_Parameter", "Tt_Emp_Roles_3", parm).Tables[0];
                    rbtnRoles3.DataValueField = "Roleid";
                    rbtnRoles3.DataTextField = "RoleName";
                    rbtnRoles3.DataBind();

                    if (rbtnRoles3.Items.Count == 0)
                    {
                        //Message("Sorry! you don't have any role");
                        //Response.Redirect("~/Login.aspx");
                        rbtnRoles3.Visible = false;
                    }
                    rbtnRoles4.Items.Clear();
                    rbtnRoles4.DataSource = objDataUtility.FillData("Pro_GetData_1_Parameter", "Tt_Emp_Roles_4", parm).Tables[0];
                    rbtnRoles4.DataValueField = "Roleid";
                    rbtnRoles4.DataTextField = "RoleName";
                    rbtnRoles4.DataBind();

                    if (rbtnRoles4.Items.Count == 0)
                    {
                        //Message("Sorry! you don't have any role");
                        //Response.Redirect("~/Login.aspx");
                        rbtnRoles4.Visible = false;
                    }
                    //else if (rbtnRoles1.Items.Count == 1)
                    //{
                    //    rbtnRoles1.SelectedIndex = 0;
                    //    rbtnRoles1_SelectedIndexChanged(sender, e);
                    //}
                    if ((rbtnRoles.Items.Count == 0) && (rbtnRoles1.Items.Count == 0) && (rbtnRoles2.Items.Count == 0) && (rbtnRoles3.Items.Count == 0) && (rbtnRoles4.Items.Count == 0))
                    {
                        Message("Sorry! you don't have any role");
                        Response.Redirect("~/Login.aspx");
                    }
                }
            }
        }

        protected void rbtnRoles_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Roleid"] = rbtnRoles.SelectedValue;
            Session["RoleName"] = rbtnRoles.SelectedItem.Text;
            Response.Redirect("~/Home.aspx");
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }

        protected void rbtnRoles1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Roleid"] = rbtnRoles1.SelectedValue;
            Session["RoleName"] = rbtnRoles1.SelectedItem.Text;
            Response.Redirect("~/Home.aspx");
        }

        protected void rbtnRoles2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Roleid"] = rbtnRoles2.SelectedValue;
            Session["RoleName"] = rbtnRoles2.SelectedItem.Text;
            Response.Redirect("~/Home.aspx");
        }
        protected void rbtnRoles3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Roleid"] = rbtnRoles3.SelectedValue;
            Session["RoleName"] = rbtnRoles3.SelectedItem.Text;
            Response.Redirect("~/Home.aspx");
        }

        protected void rbtnRoles4_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Roleid"] = rbtnRoles4.SelectedValue;
            Session["RoleName"] = rbtnRoles4.SelectedItem.Text;
            Response.Redirect("~/Home.aspx");
        }
    }
}