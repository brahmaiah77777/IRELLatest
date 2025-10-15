<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="autosms.aspx.cs" Inherits="IREL.autosms" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Testing Page </title>
    <style type="text/css">
        .panel-heading {
            height: 50px;
        }
    </style>

    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">

        //function ShowConfirm() {
        //    var ddl1 = document.getElementById("ddlFYear");
        //    var selectedLocation = e.options[ddl1.selectedIndex].value;

        //    var r = confirm("Are you sure about F.Year?")
        //    if (r == true) {
        //        alert(selectedLocation);
        //    }
        //    else {
        //        //
        //    }
        //    return r;
        //}

    </script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <table id="tbl1" cellpadding="2" cellspacing="2" border="0">
            <tr>
                <td colspan="3">Financial Year :
                    <asp:DropDownList ID="ddlFYear" runat="server" Width="99px">
                        <asp:ListItem Value="16" Text="2016-2017"></asp:ListItem>
                        <asp:ListItem Value="17" Text="2017-2018"></asp:ListItem>
                        <asp:ListItem Value="18" Text="2018-2019" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="19" Text="2019-2020"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <input  id="Button1" runat="server" type="button" value="click me"   />
                </td>
            </tr>
            <tr>
                <td>
                    <div id="divMRS" runat="server" style="height: 150px; width: 450px; border: double #C0C0C0;">
                        <a href="#">
                            <div class="panel-default">
                                <div class="panel-heading" style="background-color: #007acc; color: #FFFFFF;">
                                    1. MainPage + RatingScale + Section A1  
                                </div>
                                <div class="panel-body">
                                    <ol type="I">
                                        <li>1st Announcement to all Appraisees</li>
                                        <li>2nd Announcement to all Appraisees (For Non-submitted cases only)
                                        </li>
                                        <li>3rd Announcement to all Appraisees (For Non-submitted cases only)
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </a>
                    </div>
                </td>
                <td>&nbsp;
                </td>
                <td>
                    <div id="divMid" runat="server" style="height: 150px; width: 450px; border: double #C0C0C0;">
                        <a href="#">
                            <div class="panel-default">
                                <div class="panel-heading" style="background-color: #388d2f; color: #FFFFFF;">
                                    2. MID YEAR REVIEW 
                                </div>
                                <div class="panel-body">
                                    <br />
                                    <ol type="I">
                                        <li>1st Announcement to all Reporting Offciers + Appraisees
                                        </li>
                                        <li>2nd Announcement to all Appraisees (For Non-submitted cases only)</li>
                                    </ol>
                                </div>
                            </div>
                        </a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="divA2self" runat="server" style="height: 150px; width: 450px; border: double #C0C0C0;">
                        <a href="#">
                            <div class="panel-default">
                                <div class="panel-heading" style="background-color: #e47a2f; color: #FFFFFF;">
                                    3. Annual Assessment of (Section A2) - SELF ASSESSMENT BY APPRAISEE
                                </div>
                                <div class="panel-body">
                                    <ol type="I">
                                        <li>1st Announcement to all Appraisees</li>
                                        <li>2nd Announcement to all Appraisees (For Non-submitted cases only)</li>
                                    </ol>
                                </div>
                            </div>
                        </a>
                    </div>
                </td>
                <td>&nbsp;
                </td>
                <td>
                    <div id="divA2report" runat="server" style="height: 150px; width: 450px; border: double #C0C0C0;">
                        <a href="#">
                            <div class="panel-default">
                                <div class="panel-heading" style="background-color: #ceb631; color: #FFFFFF;">
                                    4. Annual Assessment (Section A2, B, C, D, E) - REPORTING OFFICER ASSESSMENT 
                                </div>
                                <div class="panel-body">
                                    <ol type="I">
                                        <li>1st Announcement to all Reporting Offciers</li>
                                        <li>2nd Announcement to all Reporting Offciers</li>
                                    </ol>
                                </div>
                            </div>
                        </a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="divA2review" runat="server" style="height: 150px; width: 450px; border: double #C0C0C0;">
                        <a href="#">
                            <div class="panel-default">
                                <div class="panel-heading" style="background-color: #dc2f93; color: #FFFFFF;">
                                    5. Annual Assessment (Section A2, B, C, D, E) - REVIEWING OFFICER ASSESSMENT 
                                </div>
                                <div class="panel-body">
                                    <ol type="I">
                                        <li>1st Announcement to all Reviewing Offciers</li>
                                        <li>2nd Announcement to all Reviewing Offciers</li>
                                    </ol>
                                </div>
                            </div>
                        </a>
                    </div>
                </td>
                <td>&nbsp;
                </td>
                <td>&nbsp;
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
