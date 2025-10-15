<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IREL.Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="icon" type="image/png" href="/images/favicon.ico"/>
    <title>IREL (India) Limited</title>
    <link href="App_Themes/YellowTheme/controlsStyle.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/YellowTheme/bgStyle.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/YellowTheme/Styles.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/YellowTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="App_Themes/YellowTheme/modern-business.css" rel="stylesheet" />

    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="cache-control" content="private" />
    <meta http-equiv="cache-control" content="no-store" />
    <meta http-equiv="cache-control" content="Must-revalidate" />
    <meta http-equiv="cache-control" content="Proxy-revalidate" />

    <script type="text/javascript" src="Scripts/MyEncrypt.js"></script>
    <script src="Scripts/jquery-3.3.1.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            $("#imgReset").click(function () {
                $("#txtPasswrd").text("");
                $("#txtPasswrd").val("");

            });
        });

        //function myfunc1() {
        //    var nameOffset, verOffset, ix;
        //    var nAgt = navigator.userAgent;
        //    alert(nAgt);

        //    //if ((verOffset = nAgt.indexOf("Firefox")) != -1) {
        //    //    browserName = "Firefox";
        //    //    fullVersion = nAgt.substring(verOffset + 8);
        //    //}

        //    if (navigator.cookieEnabled = true) {
        //        navigator.cookieEnabled = false;
        //        if (navigator.cookieEnabled = false)
        //            alert("done");
        //    }
        //}

        function clears() {
            document.getElementById('txtPasswrd').setAttribute('autocomplete', 'off');
            document.getElementById('txtPasswrd').value = "";
           // alert(123);

        }

    </script>

    <style type="text/css">
        #txtPasswrd {
            /* text-security: disc; */
            -webkit-text-security: disc;
            -moz-text-security: disc;
        }
    </style>
</head>
<body style="background-image: url(images/wm.jpg)" onload="clears()">
    <form id="form1" runat="server" method="post" autocomplete="off" asp-antiforgery="false" defaultbutton="btnlogin">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server" AsyncPostBackTimeout="3600"></asp:ToolkitScriptManager>
        <input id="Hidden2" type="hidden" runat="server" />
        <input id="Hidden1" type="hidden" runat="server" />
        <div class="pagebg">
            <div class="row col-xl-12 col-sm-12 col-md-12 col-lg-12" style="margin: 0px; background: -webkit-linear-gradient(#648880, #293f50);
  background:    -moz-linear-gradient(#648880, #293f50);
  background:         linear-gradient(#648880, #293f50);">
                <div class="logobg col-xl-2 col-sm-2 col-md-2 col-lg-2"></div>
                <div align="center" class="col-xl-8 col-sm-8 col-md-8 col-lg-8"><br /> <b style="color:wheat; font-size:20px">ONLINE PERFORMANCE APPRAISAL MANAGEMENT SYSTEM (OPAMS)</b><br />
                   <b style="color:white; font-size:30px"> IREL (India) Limited</b>    <br />
                    <b style="color:#7272b0">(Formerly Indian Rare Earths Limited)</b>
                </div>
                <div class=" col-xl-2 col-sm-2 col-md-2 col-lg-2" style="margin: 0px; ">&nbsp; </div>
            </div>
            <div class="row  col-xl-12 col-sm-12 col-md-12 col-lg-12" style="background-color:#181818; margin: 0px; background:radial-gradient(#1B1C1B, #0A4C02);">
                &nbsp;
            </div>
            <div class="innerpagebg1 col-xl-12 col-sm-12 col-md-12 col-lg-12">
                <table cellpadding="0" cellspacing="0" border="0" align="left">
                    <tr>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="45%" align="left">&nbsp;</td>
                        <td width="5%">&nbsp;</td>
                        <td style="vertical-align: top">
                            <fieldset>
                                <table cellpadding="0" cellspacing="0" border="0" align="right">
                                    <tr>
                                        <td>
                                            <img src="images/template-1_2_2_01.gif">
                                        </td>
                                        <td>
                                            <img src="images/template-1_2_2_02.gif">
                                        </td>
                                        <td>
                                            <img src="images/template-1_2_2_03.gif">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="background-image: url(images/template-1_2_2_04.gif); background-repeat: repeat-y"></td>
                                        <td runat="server" id="tdLog">

                                            <table cellpadding="0" cellspacing="0" border="0" align="center">
                                                <tr>
                                                    <td>User Name
                                                        <br />
                                                        <asp:TextBox ID="txtUsername" runat="server" name="form-username" CssClass="text-success" placeholder="Username" Width="100%"
                                                            MaxLength="25" AutoCompleteType="Disabled"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Password
                                                        <br />
                                                        <%-- <asp:UpdatePanel runat="server" ID="UpdatePanel3">
                                                            <ContentTemplate>--%>
                                                        <asp:TextBox ID="txtPasswrd" runat="server" placeholder="Password" Text="Password" CssClass="text-success" Width="100%"
                                                            MaxLength="25" TextMode="Password" AutoCompleteType="Disabled" autocomplete="off" onfocus="this.removeAttribute('readonly');"></asp:TextBox>
                                                        <%--</ContentTemplate>
                                                        </asp:UpdatePanel>--%>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                                                            <ContentTemplate>
                                                                <table cellpadding="0" cellspacing="0" border="0">
                                                                    <tr>
                                                                        <td>
                                                                        <br />
                                                                            <asp:Image ID="imgVerifyCode" runat="server" Width="175px" Height="30px" />
                                                                        </td>
                                                                        <td>
                                                                         <br />
                                                                            <asp:ImageButton ID="imgReset" runat="server" ImageUrl="~/Images/reset1.jpg" CausesValidation="false" AutoPostback="false"
                                                                                Height="26px" ToolTip="Regenerate your Captcha" OnClick="imgReset_Click" />

                                                                            <%-- <script type="text/javascript">
                                                                                function ClearData() {
                                                                                    if ((document.getElementById('txtPasswrd').value).trim() == '') {
                                                                                        document.getElementById('txtPasswrd').value = '';
                                                                                        document.getElementById('txtPasswrd').focus();
                                                                                        return false;
                                                                                    }
                                                                                }
                                                                            </script>--%>
                                                                            <script type="text/javascript">

                                                                                function MyEncryptPasswordClear(str) {
                                                                                    document.getElementById('<%= txtPasswrd.ClientID %>').value = '';
                                                                                }
                                                                            </script>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                       
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Type Captcha - in the box below
                                                    <br />
                                                        <asp:UpdatePanel runat="server" ID="UpdatePanel2">
                                                            <ContentTemplate>
                                                                <asp:TextBox ID="txtVerifyCode" placeholder="Captcha" runat="server" MaxLength="6" AutoCompleteType="Disabled" Width="100%"></asp:TextBox><br />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                        <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="loginbutton" OnClick="btnlogin_Click" />&nbsp;  
                                                        <asp:Button ID="btnClear" runat="server" CssClass="clearbutton" Text="Clear" CausesValidation="False" OnClick="btnClear_Click" />

                                                        <script type="text/javascript">

                                                            function MyEncryptPassword(str) {
                                                                debugger;
                                                                if (document.getElementById('<%= txtUsername.ClientID %>').value == '') {
                                                                    document.getElementById('<%= txtPasswrd.ClientID %>').value = '';
                                                                    document.getElementById('<%= txtUsername.ClientID %>').focus();
                                                                    return false;
                                                                }

                                                                if (document.getElementById('<%= txtPasswrd.ClientID %>').value == '') {
                                                                    // alert('Enter password');
                                                                    document.getElementById('<%= txtPasswrd.ClientID %>').value = '';
                                                                    document.getElementById('<%= txtPasswrd.ClientID %>').focus();
                                                                    return false;
                                                                }

                                                                if (document.getElementById('<%= txtPasswrd.ClientID %>').value != "") {

                                                                    var md5encypt = SHA512(document.getElementById('<%= txtPasswrd.ClientID %>').value);
                                                                    var md5encypt1 = document.getElementById('<%= txtUsername.ClientID %>').value;

                                                                    var passstr = md5encypt;
                                                                    form1.Hidden1.value = SHA512(passstr);

                                                                    document.getElementById('<%= txtPasswrd.ClientID %>').value = "";

                                                                    form1.Hidden2.value = md5encypt1;
                                                                    document.getElementById('<%= txtUsername.ClientID %>').value = "";

                                                                    //alert(form1.Hidden1.value);
                                                                }
                                                            }
                                                        </script>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        
                                                        <asp:LinkButton ID="lnkResetpwd" runat="server" OnClick="lnkResetpwd_Click" CausesValidation="false" ForeColor="#281d6b">Forgot Password ???</asp:LinkButton>
                                                        <br />
                                                        <asp:Label ID="lblP1" runat="server" Visible="False" ForeColor="#281d6b"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td runat="server" visible="false" id="tdOTP" align="center">
                                            <table cellpadding="0" cellspacing="0" border="0" align="center">
                                                <tr>
                                                    <td>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        Enter OTP                                                       
                                                        <br />
                                                        <asp:TextBox ID="txtOTP1" name="form-username" placeholder="Enter OTP" runat="server" Width="100%" MaxLength="6" TextMode="Password"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="btnOtpV" runat="server" Text="Submit" CssClass="loginbutton" OnClick="btnOtpV_Click" />
                                                        <asp:Button ID="btnCancel" runat="server" Text="Resend OTP" CssClass="loginbutton" OnClick="btnCancel_Click" Width="100px" />
                                                        <br />
                                                        <br />
                                                        <br />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="background-image: url(images/template-1_2_2_06.gif); background-repeat: repeat-y"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/template-1_2_2_07.gif">
                                        </td>
                                        <td>
                                            <img src="images/template-1_2_2_08.gif">
                                        </td>
                                        <td>
                                            <img src="images/template-1_2_2_09.gif">
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                     <tr>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    
                    
                </table>
                <table width="100%">
                <tr>
                        <td style="font-style:oblique;background-color:ButtonShadow; content:close-quotes" colspan="3" align="center"><b>Designed & Developed by:</b> <asp:HyperLink ID="esoft" runat="server" ImageUrl="~/Images/esoft-logo-small.png" NavigateUrl="https://www.consultesoft.com/" ImageHeight="25px" Target="_blank"></asp:HyperLink></td>
                       
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
