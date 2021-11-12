<%@ Page Title="" Language="C#" MasterPageFile="~/PMPortal/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="PMPortal_Dashboard" %>

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
            <br /><br />
            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <center>
                        <asp:DropDownList ID="ddlSelect" runat="server" OnSelectedIndexChanged="ddlSelect_SelectedIndexChanged" AutoPostBack="true"
                            Style="height: 30px; border-radius: 10px; width: 270px;">
                            <asp:ListItem Text="--SELECT--" Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="APPLICATION WISE" Value="1"></asp:ListItem>
                            <asp:ListItem Text="COURSE WISE" Value="2"></asp:ListItem>
                            <asp:ListItem Text="DATE AND SHIFT WISE" Value="3"></asp:ListItem>
                        </asp:DropDownList>
                    </center>

                </div>
            </div>

            <br />

            <br />
            <br />
            <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblCount" runat="server" Font-Bold="true" Font-Size="14px"></asp:Label>

            <br />
            <br />

            <asp:GridView ID="gvData" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowDataBound="gvData_RowDataBound">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
        </center>
    </div>


</asp:Content>

