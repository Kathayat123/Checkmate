<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="DU_HomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void btnapply_Click(object sender, EventArgs e)
    {
        string ApplicationId = Request.QueryString["PostId"].ToString();
        Session.Abandon();
        Session["CurrentPage"] = "Registration.aspx";

        Response.Redirect("../home/Registration.aspx?PostId=" + ApplicationId);
    }
</script>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Delhi University</title>
    <link rel="shortcut icon" type="image/x-icon" href="../headers/lo.ico" />
    <link href="../Portal/Examinations/Css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Portal/headers/PortalStyle.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" src="../Js/jquery.anythingzoomer.js"></script>

    <script language="javascript" src="../Portal/headers/MPOnlineHeader/WriteConstants.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/ErrorHandler.js" type="text/javascript"></script>
    <script type="text/javascript">
        langid = 'en-US';
        userName = 'Guest';
        ToggleURL = "ListsofExam.aspx";
        logindt = "Date";
        Header = "subheaderblank()";
        ServerName = "Ctrl";
        timeServer = new Date;
        lblHome = "Home";
        lblAboutMPOnline = "About U.P Power Corporation";
        lblContactUs = "Contact us";
        lblLogin = "Login";

    </script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/jquery.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/slide.js" type="text/javascript"></script>
    <%--<script language="javascript" src="../Portal/headers/MPOnlineHeader/SevicesLogo.js" type="text/javascript"></script>
     <script language="javascript" src="../Portal/headers/MPOnlineHeader/subheader.js" type="text/javascript"></script>
  <script language="javascript" src="../Portal/headers/MPOnlineHeader/PortalHeader.js" type="text/javascript"></script>--%>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/Kiosk.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/Ticker.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/TimeTick.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/Zoom.js" type="text/javascript"></script>



    <script type="text/javascript">var MsgDiv = document.createElement("div"); MsgDiv.id = "divclMsg"; document.body.appendChild(MsgDiv);</script>
    <style id="antiClickjack">
        body {
            display: none !important;
        }

        </style>

    <script type="text/javascript">
        jQuery(function () {
            var comm = 0;
            jQuery("#zoom").anythingZoomer({
                clone: true
            });
            jQuery('#zoom').anythingZoomer('disable');
            jQuery("#zoom_in_out_img").addClass("imgDeactive");
            jQuery('.zoom_in_out').click(function () {
                if (comm == 0) {
                    jQuery('#zoom').anythingZoomer('enable');
                    //document.getElementById('zoom_in_out_img').src='img/pause.png';
                    jQuery("#zoom_in_out_img").removeClass("imgDeactive");
                    jQuery("#zoom_in_out_img").addClass("imgActive");
                    comm = 1;
                } else {
                    jQuery('#zoom').anythingZoomer('disable');
                    //document.getElementById('zoom_in_out_img').src='img/play.png';
                    jQuery("#zoom_in_out_img").removeClass("imgActive");
                    jQuery("#zoom_in_out_img").addClass("imgDeactive");
                    comm = 0;
                }
            });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#incfont').click(function () {
                curSize = parseInt($('.innerPanel').css('font-size')) + 2;
                if (curSize <= 18)
                    $('.innerPanel').css('font-size', curSize);
            });

            $('#decfont').click(function () {
                curSize = parseInt($('.innerPanel').css('font-size')) - 2;
                if (curSize >= 11)
                    $('.innerPanel').css('font-size', curSize);
            });

            $('#resetfont').click(function () {
                curSize = parseInt($('.innerPanel').css('font-size')) - 0;
                if (curSize = 13)
                    $('.innerPanel').css('font-size', curSize);
            });
        });
    </script>


    <script type="text/javascript">
        window.onload = function () {
            setInterval('changestate()', 300);
        };
        var currentState = 'show';
        function changestate() {
            if (currentState == 'show') {
                document.getElementById('<%= btnapply.ClientID %>').style.backgroundColor = "#FFFFFF"
              
                currentState = 'hide';
            }
            else {
                document.getElementById('<%= btnapply.ClientID %>').style.backgroundColor = "#CD5555"
               
                currentState = 'show';
            }
        }
    </script>

    <script type="text/javascript">

        if (self === top) {
            var antiClickjack = document.getElementById("antiClickjack");
            antiClickjack.parentNode.removeChild(antiClickjack);
        } else {
            if (ToggleURL.match('/ShowReciept.aspx')) {
                var antiClickjack = document.getElementById("antiClickjack");
                antiClickjack.parentNode.removeChild(antiClickjack);
            }
            else { top.location = self.location; }
        }

        $(document).ready(function () {
            try {
                var AnchSlide = document.getElementById('AnchSlide');
                AnchSlide.click();
            }
            catch (err) { }
            if (!navigator.onLine) {
                document.body.innerHTML = 'Loading...';
                window.location = '/Portal/Errors.htm';
            }
        });
        var e = setInterval("TimeTick()", 10)
        var counse_disclaimer_msg = "The information contained in this document and/or receipt contains confidential information. Please do not share this information with anybody."
    </script>
    <!--[if lt IE 7]>
	<link href="/Portal/headers/MPOnlineHeader/ie9.css" rel="stylesheet" type="text/css" />
<![endif]-->
    <!--[if lt IE 8]>
	<link href="/Portal/headers/MPOnlineHeader/ie9.css" rel="stylesheet" type="text/css" />
<![endif]-->
    <!--[if lt IE 9]>
	<link href="/Portal/headers/MPOnlineHeader/ie9.css" rel="stylesheet" type="text/css" />
<![endif]-->
    <!--[if lt IE 10]>
	<link href="/Portal/headers/MPOnlineHeader/ie10.css" rel="stylesheet" type="text/css" />
<![endif]-->
    <!--[if lt IE 11]>
	<link href="/Portal/headers/MPOnlineHeader/ie10.css" rel="stylesheet" type="text/css" />
<![endif]-->

    <script type="text/javascript">
        document.onkeydown = ShowKeyCode;
        function ShowKeyCode(evt) {
            if (evt.keyCode == '123')
                return false;
        }
        document.oncontextmenu = document.body.oncontextmenu = function () { return false; }
    </script>
   
</head>
<body>


    <form id="form1" runat="server">



        <div class="header">
            <div class="header-inner">
                <div class="service-logo" style="border-style: groove; width: 99.3%">
                    <a href="ListsofExam.aspx">
                        <img src="Header.jpg" alt="" style="height: 98px; width: 990px;" /></a>
                </div>

                <div>
                </div>
            </div>
        </div>

        <div class="container">
            <%--<div class="left-align-col ">
                <div class="service-col">

                    <div class="guide-col">
                    </div>
                </div>
            </div>--%>

            <script language="javascript" type="text/javascript">

                function ValidateUser() {

                    if (document.getElementById("UserId").value == "") {
                        alert("Please enter Login Id");
                        document.getElementById("UserId").focus();
                        return false;
                    }

                    if (document.getElementById("ddPassword").value == "" || document.getElementById("mmPassword").value == "" || document.getElementById("yyPassword").value == "") {
                        alert("Please enter Password");
                        document.getElementById("ddPassword").focus();
                        return false;
                    }
                }
            </script>

            <br /><br />

            <div style="padding-left:380px;">
                <div id="loginpanel" class="login-col">
                    <div class="login-inner">
                       
                       
                        <strong>
                       
                       
                        <asp:Label ID="btnapply" Style="color: white;" runat="server" Text="Candidate Login" BackColor="#9370DB" class="input-btn" Font-Size="Small" Width="180px"></asp:Label>
                        </strong>
                        <br />
                        <br />
                        

                        <table id="radio" border="0" style="font-size: 13px; color: White;">
                            <tr>
                                <td>
                                    <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label><br />


                                </td>
                            </tr>

                        </table>
                        <span style="color: white; text-align: center">ROLL NUMBER</span>
                        <br />
                        <input name="UserId" type="text" runat="server" id="UserId" class="LoginUserInput" placeholder="ROLL NUMBER" onkeydown="return (event.keyCode!=13);" />
                        <br />
                        <span style="color: white; text-align: center">FORM NO</span>
                        <br />
                        <input name="ddPassword" type="Password" runat="server" id="ddPassword" class="LoginPasswordInput" placeholder="FORM NO" onkeydown="return (event.keyCode!=13);" />
                       
                        <br /><br />
                        <strong>
                        <asp:Button ID="btnLogin1" BackColor="#9370DB" Style="color: white;" runat="server" Text="Login" Font-Size="Small" Font-Bold="true" class="input-btn" OnClientClick="return ValidateUser();" OnClick="btnLogin1_Click" />

                        </strong>

                    </div>
                </div>
                <div id="divext">
                </div>

                
            </div>
            <div class="clearfix">
            </div>

        </div>
    </form>
    <%--<script src="../Portal/headers/creditsfootermp.js" type="text/javascript"></script>--%>
</body>
</html>

