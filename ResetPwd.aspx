<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPwd.aspx.cs" Inherits="IREL.ResetPwd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>INDIAN RARE EARTHS LIMITED</title>
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
    <%--<script src="Scripts/jquery-3.3.1.min.js"></script>--%>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            //$("#btnSubmit").click(function () {
            //    $("#txtNewPassword").filter(function () {
            //        var ps1 = $("#txtNewPassword").val();
            //        alert(ps1);
            //    });

            //});
        });

    </script>

    <style type="text/css">
        .invalid {
            background: url(../images/invalid.png) no-repeat 0 50%;
            padding-left: 22px;
            line-height: 24px;
            color: #ec3f41;
        }

        .valid {
            background: url(../images/valid.png) no-repeat 0 50%;
            padding-left: 22px;
            line-height: 24px;
            color: #3a7d34;
        }

        ul, li {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" method="post" autocomplete="off">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server" AsyncPostBackTimeout="3600"></asp:ToolkitScriptManager>
        <div class="pagebg">
            <div class="row col-xl-12 col-sm-12 col-md-12 col-lg-12" style="margin: 0px; background-color: #00B3FE;">
                <div class="logobg col-xl-2 col-sm-2 col-md-2 col-lg-2"></div>
                <div class="headertitle col-xl-7 col-sm-7 col-md-7 col-lg-7"></div>
                <div class="topright col-xl-3 col-sm-3 col-md-3 col-lg-3" style="margin: 0px; background-color: #00B3FE;">&nbsp; </div>
            </div>
            <div class="row  col-xl-12 col-sm-12 col-md-12 col-lg-12" style="background-color: #CC0000; margin: 0px;">
                &nbsp;
            </div>
            <div class="innerpagebg col-xl-12 col-sm-12 col-md-12 col-lg-12">
                <table cellpadding="0" cellspacing="0" border="0" align="center">
                    <tr>
                        <td>
                            <fieldset>
                                <legend>Reset Password </legend>
                                <table cellpadding="2" cellspacing="2" border="0" width="500px">
                                   <%-- <tr>
                                        <td>
                                            <asp:Label ID="lblStatus" runat="server" ForeColor="Blue" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
                                            <br />
                                        </td>
                                    </tr>--%>
                                    <tr>
                                        <td align="left">
                                            <div id="div1" runat="server">
                                                Login Name :<span class="mandatory">*</span>
                                                <br />
                                                <asp:TextBox ID="txtLoginName" runat="server" Width="200px" MaxLength="50" ValidationGroup="G1" AutoCompleteType="Disabled" autocomplete="off"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="fte_txtLoginName" runat="server" Enabled="true" TargetControlID="txtLoginName" ValidChars="-&()/'., "
                                                    FilterType="LowercaseLetters,UppercaseLetters,Numbers,Custom">
                                                </asp:FilteredTextBoxExtender>
                                                <asp:RequiredFieldValidator ID="rfv_txtLoginName" runat="server" ControlToValidate="txtLoginName" ForeColor="Red" ValidationGroup="G1"
                                                    ErrorMessage="Enter Login Name">*</asp:RequiredFieldValidator>
                                                <br />
                                                <br />

                                                Registered Mobile Number : <span class="mandatory">*</span>
                                                <br />
                                                <asp:TextBox ID="txtPhone1" runat="server" MaxLength="10" Width="200px" ValidationGroup="G1" AutoCompleteType="Disabled" autocomplete="off"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="fte_txtPhone1" runat="server" Enabled="true" TargetControlID="txtPhone1" ValidChars="1234567890" FilterType="Numbers">
                                                </asp:FilteredTextBoxExtender>
                                                <asp:RequiredFieldValidator ID="rfv_txtPhone1" runat="server" ControlToValidate="txtPhone1" ForeColor="Red" ValidationGroup="G1"
                                                    ErrorMessage="Enter Registered Phone Number">*</asp:RequiredFieldValidator>
                                                <br />
                                                <br />
                                                DOB : 
                                                <br />
                                                <asp:TextBox ID="txtDOB" runat="server" MaxLength="10" Width="200px" ValidationGroup="G1" AutoCompleteType="Disabled" autocomplete="off"></asp:TextBox>
                                                <asp:TextBoxWatermarkExtender ID="txtwme_txtDOB" runat="server" Enabled="true" TargetControlID="txtDOB" WatermarkText="dd/MM/yyyy"></asp:TextBoxWatermarkExtender>
                                                <asp:FilteredTextBoxExtender ID="ftb_txtDOB" runat="server" Enabled="true" TargetControlID="txtDOB" ValidChars="1234567890/"></asp:FilteredTextBoxExtender>
                                                <asp:CalendarExtender ID="ce_txtDOB" runat="server" Enabled="true" Format="dd/MM/yyyy" TargetControlID="txtDOB" PopupButtonID="ImgDOB"></asp:CalendarExtender>
                                                <asp:RegularExpressionValidator ID="rev_txtDOB" runat="server" ErrorMessage="Enter Valid Date of DOB" ControlToValidate="txtDOB" ValidationGroup="G1"
                                                    ValidationExpression="^(((0?[1-9]|[12]\d|3[01])[\.\-\/](0?[13578]|1[02])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|((0?[1-9]|[12]\d|30)[\.\-\/](0?[13456789]|1[012])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|((0?[1-9]|1\d|2[0-8])[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|(29[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00)))$">.</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="rfv_txtDOB" runat="server" ControlToValidate="txtDOB" ForeColor="Red" ErrorMessage="Enter DOB" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnValidate" runat="server" Text="Validate" CssClass="button" OnClick="btnValidate_Click" ValidationGroup="G1" />
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="btnClear" runat="server" Text="Clear" CausesValidation="false" CssClass="button" OnClick="btnClear_Click" />
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="btnExit" runat="server" Text="Back" CausesValidation="false" CssClass="button" OnClick="btnExit_Click" />
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" ValidationGroup="G1" />
                                            </div>
                                            <div id="div2" runat="server" visible="false">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>
                                                                <asp:Label ID="lblStatus2" runat="server" ForeColor="Blue" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
                                                                <br />
                                                            </p>
                                                            <fieldset>
                                                                <legend>Submit New Password</legend>
                                                                <br />
                                                                <input id="Hidden1" type="hidden" runat="server" />
                                                                <input id="Hidden2" type="hidden" runat="server" />
                                                                Your New Password :
                                                                <br />
                                                                <asp:TextBox ID="txtNewPassword" runat="server" Width="200px" placeholder="New Password" Text="New Password"
                                                                    CssClass="text-success" TextMode="Password" ValidationGroup="G2" >
                                                                </asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfv_txtNewPassword" runat="server" ControlToValidate="txtNewPassword" ForeColor="Red"
                                                                    ErrorMessage="Enter New Password Name" ValidationGroup="G2">*</asp:RequiredFieldValidator>
                                                                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Password is not strong enough" ForeColor="Red" Text="*"
                                                                    ControlToValidate="txtNewPassword" ClientValidationFunction="MyEncryptPasswords" ValidationGroup="G2"> 
                                                                </asp:CustomValidator>
                                                                <br />
                                                                <br />
                                                                Your Confirm New Password :
                                                                <br />
                                                                <asp:TextBox ID="txtConfirmNewPwd" runat="server" Width="200px" placeholder="Confirm New Password" Text="Confirm New Password"
                                                                    CssClass="text-success" TextMode="Password" ValidationGroup="G2" >
                                                                </asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfv_txtConfirmNewPwd" runat="server" ControlToValidate="txtConfirmNewPwd" ForeColor="Red" ValidationGroup="G2"
                                                                    ErrorMessage="Enter Confirm New Password Name" Text="*"></asp:RequiredFieldValidator>
                                                                <asp:CompareValidator ID="cv_txtConfirmNewPwd" runat="server" ErrorMessage="Passwords Must be Matching." ForeColor="Red" Text="*"
                                                                    ControlToValidate="txtConfirmNewPwd" ControlToCompare="txtNewPassword" Operator="Equal" ValidationGroup="G2">
                                                                </asp:CompareValidator>
                                                                <br />
                                                                <br />
                                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" ValidationGroup="G2" OnClick="btnSubmit_Click" />
                                                                &nbsp;&nbsp;&nbsp;
                                                                <asp:Button ID="btnExit2" runat="server" Text="Go Back to Login" CausesValidation="false" CssClass="button" OnClick="btnExit_Click" />
                                                                <br />
                                                                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" ValidationGroup="G2" />
                                                                <script type="text/javascript"> 
                                                                    function MyEncryptPasswords(source, args) {

                                                                        if ((document.getElementById('txtNewPassword').value).trim() == '') {
                                                                            document.getElementById('txtNewPassword').focus();
                                                                            args.IsValid = false;
                                                                        }
                                                                        else if ((document.getElementById('txtConfirmNewPwd').value).trim() == '') {
                                                                            document.getElementById('txtConfirmNewPwd').focus();
                                                                            args.IsValid = false;
                                                                        }
                                                                        else if (document.getElementById('txtNewPassword').value != document.getElementById('txtConfirmNewPwd').value) {
                                                                            args.IsValid = false;
                                                                        }
                                                                        else {
                                                                            var _strongRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,15}/;
                                                                            //_strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,15})");
                                                                            //_strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,15}");

                                                                            var _np = _strongRegex.test(document.getElementById('txtNewPassword').value);
                                                                            var _cp = _strongRegex.test(document.getElementById('txtConfirmNewPwd').value);

                                                                            if (_np == true && _cp == true) {

                                                                                var md5encypt1 = SHA512(document.getElementById('txtNewPassword').value);
                                                                                var md5encypt2 = SHA512(document.getElementById('txtConfirmNewPwd').value);

                                                                                //var passstr1 = md5encypt1;
                                                                                document.getElementById('txtNewPassword').value = "";
                                                                                document.getElementById('txtNewPassword').value = SHA512(md5encypt1);
                                                                                form1.Hidden1.value = SHA512(md5encypt1);

                                                                                //var passstr2 = md5encypt2;
                                                                                document.getElementById('txtConfirmNewPwd').value = "";
                                                                                document.getElementById('txtConfirmNewPwd').value = SHA512(md5encypt2);
                                                                                //alert(form1.Hidden1.value);
                                                                                args.IsValid = true;
                                                                            }
                                                                            else {
                                                                                args.IsValid = false;
                                                                            }
                                                                        }
                                                                    }
                                                                </script>
                                                            </fieldset>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            <i><u>Note:</u> <b>Password</b> must have Minimum (8 to 15) characters length, at least one uppercase letter, one lowercase letter, one number and one special character. </i>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>

                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                        </td>
                    </tr>
                </table>
                <br />
            </div>
        </div>
    </form>
</body>
</html>

