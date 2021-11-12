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
            <img src="NTA.png" style="width: 500px;">
        
              </div>
            <br /> <br /><br />

                <div style="width:50%; height:75%; background-color: #A3BCDE;" class="containerBox">
                    <br />
                    <br />
            <table>
                  <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Font-Bold="true"></asp:Label>
                        <br />  <br />
                    </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="lbl" runat="server" Font-Bold="true" Text="CLICK BELOW TO DOWNLOAD ADMIT CARD "></asp:Label>
                        <br />  <br />
                    </td>
                </tr>
                <tr id="trDownload1" runat="server" visible="false">
                    <td>
                        <asp:Button ID="btnDownload1" runat="server" Visible="true" CssClass="input-btn" OnClick="btnDownload1_Click" />
                    </td>
                </tr>
                <tr id="trDownload2" runat="server" visible="false">
                    <td>
                        <asp:Button ID="btnDownload2" runat="server" Visible="true" CssClass="input-btn" OnClick="btnDownload2_Click" />
                    </td>
                </tr>


                <tr id="trDownload3" runat="server" visible="false">
                    <td>
                        <asp:Button ID="btnDownload3" runat="server" Visible="true" CssClass="input-btn" OnClick="btnDownload3_Click" /> 
                    </td>
                </tr>

                <tr id="trDownload4" runat="server" visible="false">
                    <td>
                        <asp:Button ID="btnDownload4" runat="server" Visible="true" CssClass="input-btn" OnClick="btnDownload4_Click" />
                    </td>
                </tr>

                <tr id="trDownload5" runat="server" visible="false">
                    <td>
                        <asp:Button ID="btnDownload5" runat="server" Visible="true" CssClass="input-btn" OnClick="btnDownload5_Click" />
                    </td>
                </tr>

                <tr id="trDownload6" runat="server" visible="false">
                    <td>
                        <asp:Button ID="btnDownload6" runat="server" Visible="true" CssClass="input-btn" OnClick="btnDownload6_Click" />
                    </td>
                </tr>

                <tr id="trDownload7" runat="server" visible="false">
                    <td>
                        <asp:Button ID="btnDownload7" runat="server" Visible="true" CssClass="input-btn" OnClick="btnDownload7_Click" />
                    </td>
                </tr>
                 <tr id="tr1" runat="server" visible="true">
                    <td>
                        <asp:Button ID="Button1" runat="server" Visible="true" CssClass="input-btn" Width="200px" Text="Exit" PostBackUrl="~/CandidatePortal/LoginPage.aspx" />
                    </td>
                </tr>
            </table>

                     <br />
                    <br />
                </div>
        </div>
        </center>
    </form>
</body>
</html>
