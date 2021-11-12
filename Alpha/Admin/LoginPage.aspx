<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="DUET2018_LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap" />
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>


    <div style="margin-left: 35%;">

        <div>
            <img src="aptechlog.png">
        </div>
        
        <br />
        <form id="form1" runat="server" class="form-signin mg-btm">

            <div class="container" style="background-color: #A3BCDE;">
                <center>
          
               <br /><br />
               
                  <div class="row">
                <span style="font-weight:bold; font-size:16px;">
                    ADMIN LOGIN
                    </span>
              
                <div class="main">

                    <input type="text" class="form-control" placeholder="LOGIN ID" runat="server" id="txtLogin" maxlength="50" />
                    <input type="password" class="form-control" placeholder="PASSWORD" runat="server" id="txtPassword" maxlength="15" />
                    <br />
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" CssClass="input-btn" OnClientClick="return ValidateControls();" />
                </div>

            </div> 

            </center>
            </div>
    </div>
    </form>
    <style>
        .input-btn {
            background-color: #186ca3;
            border: none;
            border-radius: 4px;
            margin: 3px 0;
            padding: 10px;
            width: 250px;
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
    </style>


    <script type="text/javascript">
        function ValidateControls() {
            var txtLogin = document.getElementById("txtLogin");
            var txtPassword = document.getElementById("txtPassword");

            if (txtLogin.value == "") {
                alert('Please enter Form No.')
                return false;
            }

            if (txtPassword.value == "") {
                alert('Please enter Date Of Birth.')
                return false;
            }
            return true;
        }
    </script>
</body>


</html>
