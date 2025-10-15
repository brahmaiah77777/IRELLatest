<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageAttachment.aspx.cs" Inherits="IREL.ImageAttachment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
        <fieldset>
            <table id="MainTable" border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td class="title">
                        Images Display
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Panel ID="pnlwebllink" runat="server">
                            <table cellpadding="1" cellspacing="1" width="80%">
                                <tr>
                                    <td>
                                        <fieldset>
                                            <table border="0" cellpadding="0" cellspacing="0" width="80%">
                                                <tr>
                                                    <td colspan="4" class="mandatory" align="right">
                                                        * Indicates Mandatory Field&nbsp;
                                                    </td>
                                                    <td align="right" class="mandatory">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3">
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="labelblack" align="left" width="20%">
                                                        Image Title&nbsp;<span class="mandatory">*</span>
                                                    </td>
                                                    <td class="labelblack" align="center" width="2%">
                                                        :
                                                    </td>
                                                    <td class="labelblack" align="left">
                                                        <asp:TextBox ID="txtimagetitle" runat="server" CssClass="textbox1" Width="230px"
                                                            MaxLength="100"></asp:TextBox>
                                                       <%-- <cc1:FilteredTextBoxExtender ID="txtimagetitle_FilteredTextBoxExtender" runat="server"
                                                            Enabled="True" TargetControlID="txtimagetitle" FilterType="LowercaseLetters,UppercaseLetters,Custom,Numbers"
                                                            InvalidChars=" ">
                                                        </cc1:FilteredTextBoxExtender>--%>
                                                        <asp:RequiredFieldValidator ID="Rfv_title" runat="server" ErrorMessage="Enter Image Title"
                                                            ControlToValidate="txtimagetitle">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style1" align="left">
                                                        Upload Images&nbsp;<span class="mandatory">*</span>
                                                    </td>
                                                    <td class="style1" align="center">
                                                        :
                                                    </td>
                                                    <td class="style1" align="left">
                                                        <asp:FileUpload ID="FileUpload1_Attach" runat="server" />&nbsp;&nbsp;
                                                        <asp:LinkButton ID="lnkbtnAttach" runat="server" CausesValidation="false" Text="ff "
                                                            OnClick="lnkbtnAttach_Click"></asp:LinkButton>&nbsp;&nbsp; &nbsp;&nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" class="labelblack">
                                                        &nbsp;
                                                    </td>
                                                    <td align="center" class="labelblack">
                                                        &nbsp;
                                                    </td>
                                                    <td align="left" class="labelblack">
                                                        <asp:Button ID="btnAttach" runat="server" CausesValidation="False" OnClick="btnAttach_Click"
                                                            Text="Attach" />
                                                        &nbsp;&nbsp;<asp:Button ID="btnClearAttach" runat="server" CausesValidation="False"
                                                            Text="Clear Attachments" OnClick="btnClearAttach_Click" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="labelblack" align="left">
                                                        Display Order&nbsp;<span class="mandatory">*</span>
                                                    </td>
                                                    <td class="labelblack" align="center">
                                                        :
                                                    </td>
                                                    <td class="labelblack" align="left">
                                                        <asp:TextBox ID="txtorder" runat="server" CssClass="textbox1" Width="50px" MaxLength="2"></asp:TextBox>
                                                       <%-- <cc1:FilteredTextBoxExtender ID="Filterorder" runat="server" Enabled="True" TargetControlID="txtorder"
                                                            FilterType="Numbers">
                                                        </cc1:FilteredTextBoxExtender>--%>
                                                        <asp:RequiredFieldValidator ID="Rfv_order" runat="server" ControlToValidate="txtorder"
                                                            ErrorMessage="Enter Order">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="labelblack" align="left">
                                                        Status&nbsp;
                                                    </td>
                                                    <td class="labelblack" align="center">
                                                        :
                                                    </td>
                                                    <td class="labelblack" align="left">
                                                        <asp:CheckBox ID="Chkstatus" runat="server" Text="Display" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        &nbsp;&nbsp;&nbsp;
                                                    </td>
                                                    <td colspan="2" align="left">
                                                        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="button" Height="21"
                                                            OnClick="btnsave_Click" />
                                                        &nbsp;&nbsp;
                                                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="button" Height="21"
                                                            CausesValidation="False" OnClick="btnClear_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td align="left">
                                    <asp:GridView ID="gvImageDisplay" runat="server" Width="780px" AllowPaging="True"
                                        PageSize="7" HeaderStyle-CssClass="gridheader" FooterStyle-CssClass="gridfooter"
                                        AutoGenerateColumns="False" OnPageIndexChanging="gvImageDisplay_PageIndexChanging"
                                        OnRowDataBound="gvImageDisplay_RowDataBound" OnRowDeleting="gvImageDisplay_RowDeleting"
                                        OnRowEditing="gvImageDisplay_RowEditing">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sno">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="ImgId" HeaderText="Img Id" />
                                            <asp:BoundField DataField="ImageTitle" HeaderText="Image Title" />
                                            <asp:BoundField DataField="ImagePath" HeaderText="Image Path " />
                                            <asp:BoundField DataField="DisplayOrder" HeaderText="Display Order" />
                                            <asp:BoundField DataField="Status" HeaderText="Status" />
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:Button ID="btnEdit" runat="server" CausesValidation="false" CommandName="Edit"
                                                        Text="Edit" />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:Button ID="btnDelete" runat="server" CausesValidation="false" CommandName="Delete"
                                                        Text="Delete" />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle CssClass="gridfooter"></FooterStyle>
                                        <PagerStyle CssClass="gridfooter" ForeColor="White" HorizontalAlign="Center" />
                                        <EmptyDataTemplate>
                                            No Data avaliable
                                        </EmptyDataTemplate>
                                        <HeaderStyle CssClass="gridheader"></HeaderStyle>
                                        <RowStyle CssClass="griditem" />
                                        <AlternatingRowStyle CssClass="griditem1" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:ValidationSummary ID="valsErrors" runat="server" ShowMessageBox="True" ShowSummary="False" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
    
    </form>
</body>
</html>
