<%@ Page Title="" Language="C#" MasterPageFile="~/PMPortal/MasterPage.master" AutoEventWireup="true" CodeFile="MasterQPTask.aspx.cs" Inherits="PMPortal_MasterQPTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 65%">
        <center>

            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <center>
                        <asp:Label ID="lblName" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label>
                    </center>

                </div>
            </div>

            <br />
            <br />

            <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="false" DataKeyNames="MasterID" Width="600px"
                OnRowDataBound="gvData_RowDataBound" OnRowEditing="gvData_RowEditing" OnRowCancelingEdit="gvData_RowCancelingEdit"
                OnRowUpdating="gvData_RowUpdating" EmptyDataText="No records has been added." AllowPaging="true"
                OnPageIndexChanging="gvData_PageIndexChanging" PageSize="10">
                <Columns>
                    <asp:TemplateField HeaderText="Subject" ItemStyle-Width="500">
                        <ItemTemplate>
                            <asp:Label ID="lblSubject" runat="server" Text='<%# Eval("Subject") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IsActive" ItemStyle-Width="50">
                        <ItemTemplate>
                            <asp:CheckBox ID="IsActive" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="false"></asp:CheckBox>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:CheckBox ID="IsActive" runat="server" Checked='<%# Eval("IsActive") %>'></asp:CheckBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SavedPath" ItemStyle-Width="50">
                        <ItemTemplate>
                            <asp:Label ID="lblSavedPath" runat="server" Text='<%# Eval("Uploaded") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="fuUpload" runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="View" ItemStyle-Width="500">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" runat="server" OnClick="lnkView_Click" Text="View" OnClientClick="target ='_blank'"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="false" ItemStyle-Width="150" />
                </Columns>
            </asp:GridView>

        </center>

        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

