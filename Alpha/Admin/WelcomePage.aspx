<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WelcomePage.aspx.cs" Inherits="CandidatePortal_WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <style>
            .input-btn {
                background-color: #186ca3;
                border: none;
                border-radius: 4px;
                margin: 3px 0;
                padding: 10px;
                width: 550px;
                color: #fff;
                font-size: 15px;
                -webkit-border-radius: 10px;
                color: #FFFFFF;
                cursor: pointer;
                display: inline-block;
                font-family: Arial;
                text-decoration: none;
            }

                .input-btn:hover {
                    background-color: #027baf;
                    border: none;
                    color: #fff;
                    font-size: 15px;
                    border-radius: 4px;
                }

            .form-signin {
                max-width: 500px;
                display: block;
                background-color: #f7f7f7;
                -moz-box-shadow: 0 0 3px 3px #888;
                -webkit-box-shadow: 0 0 3px 3px #888;
                box-shadow: 0 0 3px 3px #888;
                border-radius: 2px;
                background-color: #e8d8ef;
            }

            .main {
                padding: 38px;
            }

            .social-box {
                margin: 0 auto;
                padding: 38px;
                border-bottom: 1px #ccc solid;
            }

                .social-box a {
                    font-weight: bold;
                    font-size: 18px;
                    padding: 8px;
                }

                    .social-box a i {
                        font-weight: bold;
                        font-size: 20px;
                    }

            .heading-desc {
                font-size: 20px;
                font-weight: bold;
                padding: 38px 38px 0px 38px;
            }

            .form-signin .form-signin-heading,
            .form-signin .checkbox {
                margin-bottom: 10px;
            }

            .form-signin .checkbox {
                font-weight: normal;
            }

            .form-signin .form-control {
                position: relative;
                font-size: 16px;
                height: 20px;
                padding: 20px;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }

                .form-signin .form-control:focus {
                    z-index: 2;
                }

            .form-signin input[type="text"] {
                margin-bottom: 10px;
                border-radius: 5px;
            }

            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-radius: 5px;
            }

            .login-footer {
                background: #f0f0f0;
                margin: 0 auto;
                border-top: 1px solid #dadada;
                padding: 20px;
            }

                .login-footer .left-section a {
                    font-weight: bold;
                    color: #8a8a8a;
                    line-height: 19px;
                }

            .mg-btm {
                margin-bottom: 20px;
            }

            .containerBox {
                position: relative;
                font-size: 16px;
                height: 20px;
                padding: 20px;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                border-radius: 5px;
            }
        </style>

        <div>
            <center>
              <div>
            <img src="aptechlog.png">
        
              </div>
                <div style="width:50%; height:75%; background-color: #A3BCDE;" class="containerBox">
            <table>
                  <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Font-Bold="true"></asp:Label>
                        <br />  <br />
                    </td>
                </tr>
             <tr>
                 <td style="">
                     
                        <asp:Label ID="lblCount" runat="server" Font-Bold="true"></asp:Label>
                        <br />  <br />
                    </td>
             </tr>

                <tr>
                    <td>
                        <asp:DropDownList ID="ddlSelect" runat="server" OnSelectedIndexChanged="ddlSelect_SelectedIndexChanged" AutoPostBack="true"
                             style="height:30px; border-radius:10px; width:270px;">
                            <asp:ListItem Text="--SELECT--" Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="APPLICATION WISE" Value="1"></asp:ListItem>
                            <asp:ListItem Text="COURSE WISE" Value="2"></asp:ListItem>
                            <asp:ListItem Text="DATE AND SHIFT WISE" Value="3"></asp:ListItem>
                        </asp:DropDownList>
                         <br />
                    <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="gvData" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </td>
                </tr>

                 <tr id="tr1" runat="server" visible="true">
                    <td>
                         <br />
                    <br />
                        <asp:Button ID="Button1" runat="server" Visible="true" CssClass="input-btn" Width="200px" Text="Exit" PostBackUrl="~/Admin/LoginPage.aspx" />
                    </td>
                </tr>
            </table>

                     <br />
                    <br />
                </div>
                 </center>
        </div>

    </form>
</body>
</html>
