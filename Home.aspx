<%@ Page Title="" Language="C#" MasterPageFile="~/IRELMain.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="IREL.Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .datatable
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="OPAMSHome" runat="server">
        <ContentTemplate>
            <table cellpadding="0" cellspacing="0" border="0" align="center">
                <tr>
                    <td>
                        <fieldset>
                            <table cellpadding="2" cellspacing="2" border="0" class="title1">
                                <tr>
                                    <td align="left">Last Visited Date/Time :<asp:Label ID="lblLastVisitedDateTime" runat="server"
                                        Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">Last Visited IP :<asp:Label ID="lblIPAddressOut" runat="server"
                                        Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">Current IP :<asp:Label ID="lblipaddr" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">Successful Login Count :<asp:Label ID="lblSL" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">Unsuccessful Login Count :<asp:Label ID="lblUL" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <%--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
                                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br /><br />
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        --%>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>

                <asp:Panel ID="Panel1" runat="server">
                    <tr>
                        <td>
                            <fieldset>
                                <legend>Know Your Appraisal Calendar</legend>
                                Financial Year 
                                    <asp:DropDownList ID="ddlFYId" runat="server" CssClass="DropDown" Width="200px" AutoPostBack="true"
                                        OnSelectedIndexChanged="ddlFYId_SelectedIndexChanged">
                                    </asp:DropDownList>
                                <br />
                                <br />
                                <asp:GridView ID="gvAppraisalSectionCalendar" runat="server" AutoGenerateColumns="False"
                                    CssClass="datatable" Width="100%">
                                    <Columns>
                                        <asp:TemplateField HeaderText="SNo">
                                            <ItemStyle HorizontalAlign="Center" Width="3%" />
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Appraisal Format">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEnclosed" runat="server" Text='<%#Eval("Enclosed") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Section Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSectionName" runat="server" Text='<%#Eval("SectionName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="From Date (00:00:00)">
                                            <ItemStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFromDate" runat="server" Text='<%#Eval("FromDate") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="To Date (23:59:59)">
                                            <ItemStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblToDate" runat="server" Text='<%#Eval("ToDate") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No Data avaliable
                                    </EmptyDataTemplate>
                                </asp:GridView>
                            </fieldset>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <fieldset>
                                <legend class="title">Circular View</legend>
                                <asp:GridView ID="gvCircularView" runat="server" OnPageIndexChanging="gvCircularView_PageIndexChanging"
                                    AutoGenerateColumns="false" AutoGenerateSelectButton="True" CssClass="datatable" PageSize="5" AllowPaging="true"
                                    Width="357px">
                                     <%--OnSelectedIndexChanged="gvCircularView_SelectedIndexChanged"--%>
                                     
                                    <Columns>
                                        <asp:TemplateField HeaderText="CircularId">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCircularId" runat="server" Text='<%#Eval("CircularId") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Circular Code">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCircularCode" runat="server" Text='<%#Eval("CircularCode") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Circular Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCircularName" runat="server" Text='<%#Eval("CircularName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Circular Description">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCircularDescription" runat="server" Text='<%#Eval("CircularDescription") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Circular From Date">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCFrom" runat="server" Text='<%#Eval("CFrom") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Circular To Date" ControlStyle-Font-Bold="true">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCTo" runat="server" Text='<%#Eval("CTo") %>' Font-Bold="true" ForeColor="Tomato"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Attachments">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lblAttachments1" CausesValidation="false" runat="server" Text='<%#Eval("Attachments") %>'
                                                    OnClick="lnkAttachment_Click"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast"
                                        NextPageText="&gt;&gt;" PageButtonCount="6" Position="Bottom" PreviousPageText="&lt;&lt;" />
                                    <PagerStyle CssClass="pager-row" />
                                    <RowStyle CssClass="row1" />
                                    <EmptyDataTemplate>
                                        No Data avaliable
                                    </EmptyDataTemplate>
                                    <AlternatingRowStyle CssClass="row1" />
                                </asp:GridView>
                            </fieldset>
                        </td>
                    </tr>
                </asp:Panel>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="gvCircularView" />
        </Triggers>
    </asp:UpdatePanel>
    <%--<table width="555px" cellpadding="0" cellspacing="0" border="0" align="center">
        <tr>
            <td align="center">
                <fieldset>
                    <div id="rptDIV" runat="server" style="background-color: #DFEAD9">
                        <table border="1" cellpadding="10">
                            <tr>
                                <td colspan="2">
                                    <h3><u>My DASH Board as Reporting Officer</u></h3>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">No.Of appraisees reported upon me : &nbsp;       
                                    <asp:HyperLink ID="hlAllApprsi" runat="server" NavigateUrl="~/Masters/AppraiseeList.aspx"></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td>Section A1 : </td>
                                <td>Completed -
                                    <asp:HyperLink ID="hlRpCa1" runat="server" NavigateUrl="~/Masters/AppraiseeList.aspx"></asp:HyperLink>
                                    ;&nbsp;&nbsp;
                                    Not Completed -
                                    <asp:HyperLink ID="hlRpNCa1" runat="server" NavigateUrl="~/Masters/AppraiseeList.aspx"></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td>Section A2 : </td>
                                <td>Completed -
                                    <asp:HyperLink ID="hlRpCa2" runat="server" NavigateUrl="~/Masters/AppraiseeList.aspx"></asp:HyperLink>
                                    ;&nbsp;&nbsp;
                                    Not Completed -
                                    <asp:HyperLink ID="hlRpNCa2" runat="server" NavigateUrl="~/Masters/AppraiseeList.aspx"></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br />

                    <div id="rvwDIV" runat="server" style="background-color: #E9C9A3" >
                        <table border="1" cellpadding="10">
                            <tr>
                                <td colspan="2">
                                    <h3><u>My DASH Board as Reviewing Officer</u></h3>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">No.Of appraisals review : &nbsp;
                                    <asp:HyperLink ID="hlAllRvs" runat="server" NavigateUrl="~/Masters/AppraiseeList.aspx"></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td>Section A1 : </td>
                                <td>Completed -
                                    <asp:HyperLink ID="hlRvCa1" runat="server" NavigateUrl="~/Masters/AppraiseeList.aspx"></asp:HyperLink>
                                    ;&nbsp;&nbsp;
                                    Not Completed -
                                    <asp:HyperLink ID="hlRvNCa1" runat="server" NavigateUrl="~/Masters/AppraiseeList.aspx"></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td>Section A2 : </td>
                                <td>Completed -
                                    <asp:HyperLink ID="hlRvCa2" runat="server" NavigateUrl="~/Masters/AppraiseeList.aspx"></asp:HyperLink>
                                    ;&nbsp;&nbsp;
                                    Not Completed -
                                    <asp:HyperLink ID="hlRvNCa2" runat="server" NavigateUrl="~/Masters/AppraiseeList.aspx"></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                </fieldset>
            </td>
        </tr>
    </table>--%>
</asp:Content>

