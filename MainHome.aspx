<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainHome.aspx.cs" Inherits="IREL.MainHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="icon" type="image/png" href="/images/favicon.ico" />
    <title>IREL (India) Limited</title>
    <link href="App_Themes/YellowTheme/controlsStyle.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/YellowTheme/bgStyle.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/YellowTheme/Styles.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/YellowTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="App_Themes/YellowTheme/modern-business.css" rel="stylesheet" />
</head>
<body style="margin: 0px">
    <form id="form1" runat="server" method="post" asp-antiforgery="false">

        <div class="pagebg">
            <div class="row col-xl-12 col-sm-12 col-md-12 col-lg-12" style="margin: 0px; background-color: #134B0D; background: -webkit-linear-gradient(#648880, #293f50); background: -moz-linear-gradient(#648880, #293f50); background: linear-gradient(#648880, #293f50);">
                <div class="logobg col-xl-2 col-sm-2 col-md-2 col-lg-2"></div>
                <div align="center" class="col-xl-8 col-sm-8 col-md-8 col-lg-8">
                    <br />
                    <b style="color: wheat; font-size: 20px">ONLINE PERFORMANCE APPRAISAL MANAGEMENT SYSTEM
                        (OPAMS)</b><br />
                    <b style="color: white; font-size: 30px">IREL (India) Limited</b>
                    <br />
                    <b style="color: #7272b0">(Formerly Indian Rare Earths Limited)</b>
                </div>
                <div class=" col-xl-2 col-sm-2 col-md-2 col-lg-2" style="margin: 0px;">&nbsp; </div>
            </div>
            <div class="row  col-xl-12 col-sm-12 col-md-12 col-lg-12" style="background-color: #181818; margin: 0px; background: radial-gradient(#1B1C1B, #0A4C02);">
                <table>
                    <tr>
                        <td width="90%">&nbsp;</td>
                        <td width="10%">
                            <asp:LinkButton ID="lbLogout" runat="server" Font-Bold="True" ForeColor="White" OnClick="lbLogout_Click">Logout</asp:LinkButton>
                        </td>
                        <td>&nbsp;
                        </td>
                    </tr>
                </table>
            </div>
            <div class="innerpagebg col-xl-12 col-sm-12 col-md-12 col-lg-12">
                <div class="row col-xl-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="  col-xl-5 col-sm-5 col-md-5 col-lg-5"></div>

                    <table cellpadding="2" cellspacing="2" border="0" width="100%">
                        <tr>
                            <td align="center">
                                <div class="  col-xl-6 col-sm-6 col-md-6 col-lg-6">


                                    <br />
                                    <br />

                                    <fieldset class="welcomebg" style="width: 175%; height: auto">
                                        <br />
                                        <table cellpadding="2" cellspacing="2" border="0" width="100%">
                                            <tr>
                                                <td align="right">
                                                    <b style="color: wheat">Kindly Choose Your Role</b>

                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <div class="row rdo  col-xl-12 col-sm-12 col-md-12 col-lg-12">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:RadioButtonList ID="rbtnRoles" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtnRoles_SelectedIndexChanged"
                                                            RepeatLayout="Flow">
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </td>

                                                <td align="left">
                                                    <div class="row rdo  col-xl-12 col-sm-12 col-md-12 col-lg-12">
                                                        <asp:RadioButtonList ID="rbtnRoles1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtnRoles1_SelectedIndexChanged"
                                                            RepeatLayout="Table">
                                                        </asp:RadioButtonList>
                                                    </div>

                                                </td>
                                                <td align="left">
                                                    <div class="row rdo  col-xl-12 col-sm-12 col-md-12 col-lg-12">
                                                        <asp:RadioButtonList ID="rbtnRoles2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtnRoles2_SelectedIndexChanged"
                                                            RepeatLayout="Table">
                                                        </asp:RadioButtonList>
                                                    </div>

                                                </td>
                                                <td align="left">
                                                    <div class="row rdo  col-xl-12 col-sm-12 col-md-12 col-lg-12">
                                                        <asp:RadioButtonList ID="rbtnRoles3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtnRoles3_SelectedIndexChanged"
                                                            RepeatLayout="Table">
                                                        </asp:RadioButtonList>
                                                    </div>

                                                </td>
                                                <td align="left">
                                                    <div class="row rdo  col-xl-12 col-sm-12 col-md-12 col-lg-12">
                                                        <asp:RadioButtonList ID="rbtnRoles4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtnRoles4_SelectedIndexChanged"
                                                            RepeatLayout="Table">
                                                        </asp:RadioButtonList>
                                                    </div>

                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>

                <br />
                <br />
                <br />
                <br />

            </div>
        </div>
        <div class="footer col-xl-12 col-sm-12 col-md-12 col-lg-12">
            Best viewed in 1024 X 768 resolution and above
        </div>
        </div>
    </form>
</body>
</html>
