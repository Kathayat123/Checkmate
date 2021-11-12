<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListOfMasterQps.aspx.cs" Inherits="PMPortal_ListOfMasterQps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NTA - DUET</title>
    <link rel="shortcut icon" type="image/x-icon" href="header.ico" />
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap" />
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div style="margin-left: 35%;">

            <div>
                <img src="NTA.png" style="width: 500px;">
            </div>




        </div>
        <div class="container" style="font-size: 18px; font-weight: bold;">
            <center>
                    <span>
                        DOWNLOAD MASTER QP PDF FOR DUET 2019 EXAM.
                    </span>
       <br />
                <span class="blink" style="font-size: 14px; color:red; font-weight: bold;">
                        PLEASE IGNORE THE CORRECT ANSWER KEYS SHOWN IN MASTER QP AS ANSWERS ARE DUMMY.
                    </span>
     <br />
                <span class="blink" style="font-size: 14px; color:red; font-weight: bold;">
                        CORRECT ANSWER KEYS WILL BE UPLOADED LATER.
                    </span>
					
					 <br />
                <span style="font-size: 14px; color:red; font-weight: bold;">
                        PLEASE IGNORE THE CORRECT ANSWER KEYS SHOWN IN MASTER QP AS ANSWERS ARE DUMMY.
                    </span>
     <br />
                <span style="font-size: 14px; color:red; font-weight: bold;">
                        CORRECT ANSWER KEYS WILL BE UPLOADED LATER.
                    </span>
      
      
       <br /><br />

                <div>

              <table style="width:100%">
                        <tr id="tr0301" runat="server" visible="false">
                            <td>
                                EXAM DATE : 03 July 2019 Shift - 1
                                <br />
                                <asp:PlaceHolder ID="ph03072019Shift1" runat="server" />
                            </td>
                        </tr>
                       <tr id="tr0302" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 03 July 2019 Shift - 2
                                 <br />
                                <asp:PlaceHolder ID="ph03072019Shift2" runat="server" />
                            </td>
                        </tr>
                        <tr id="tr0303" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 03 July 2019 Shift - 3
                                 <br />
                                <asp:PlaceHolder ID="ph03072019Shift3" runat="server" />
                            </td>
                        </tr>
                    <tr id="tr0401" runat="server" visible="false">
                            <td>
                                EXAM DATE : 04 July 2019 Shift - 1
                                <br />
                                <asp:PlaceHolder ID="ph04072019Shift1" runat="server" />
                            </td>
                        </tr>
                       <tr id="tr0402" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 04 July 2019 Shift - 2
                                 <br />
                                <asp:PlaceHolder ID="ph04072019Shift2" runat="server" />
                            </td>
                        </tr>
                        <tr id="tr0403" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 04 July 2019 Shift - 3
                                 <br />
                                <asp:PlaceHolder ID="ph04072019Shift3" runat="server" />
                            </td>
                        </tr>

                    <tr id="tr0501" runat="server" visible="false">
                            <td>
                                EXAM DATE : 05 July 2019 Shift - 1
                                <br />
                                <asp:PlaceHolder ID="ph05072019Shift1" runat="server" />
                            </td>
                        </tr>
                       <tr id="tr0502" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 05 July 2019 Shift - 2
                                 <br />
                                <asp:PlaceHolder ID="ph05072019Shift2" runat="server" />
                            </td>
                        </tr>
                        <tr id="tr0503" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 05 July 2019 Shift - 3
                                 <br />
                                <asp:PlaceHolder ID="ph05072019Shift3" runat="server" />
                            </td>
                        </tr>

                    <tr id="tr0601" runat="server" visible="false">
                            <td>
                                EXAM DATE : 06 July 2019 Shift - 1
                                <br />
                                <asp:PlaceHolder ID="ph06072019Shift1" runat="server" />
                            </td>
                        </tr>
                       <tr id="tr0602" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 06 July 2019 Shift - 2
                                 <br />
                                <asp:PlaceHolder ID="ph06072019Shift2" runat="server" />
                            </td>
                        </tr>
                        <tr id="tr0603" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 06 July 2019 Shift - 3
                                 <br />
                                <asp:PlaceHolder ID="ph06072019Shift3" runat="server" />
                            </td>
                        </tr>
                    <tr id="tr0701" runat="server" visible="false">
                            <td>
                                EXAM DATE : 07 July 2019 Shift - 1
                                <br />
                                <asp:PlaceHolder ID="ph07072019Shift1" runat="server" />
                            </td>
                        </tr>
                       <tr id="tr0702" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 07 July 2019 Shift - 2
                                 <br />
                                <asp:PlaceHolder ID="ph07072019Shift2" runat="server" />
                            </td>
                        </tr>
                        <tr id="tr0703" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 07 July 2019 Shift - 3
                                 <br />
                                <asp:PlaceHolder ID="ph07072019Shift3" runat="server" />
                            </td>
                        </tr>
                   <tr id="tr0801" runat="server" visible="false">
                            <td>
                                EXAM DATE : 08 July 2019 Shift - 1
                                <br />
                                <asp:PlaceHolder ID="ph08072019Shift1" runat="server" />
                            </td>
                        </tr>
                       <tr id="tr0802" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 08 July 2019 Shift - 2
                                 <br />
                                <asp:PlaceHolder ID="ph08072019Shift2" runat="server" />
                            </td>
                        </tr>
                        <tr id="tr0803" runat="server" visible="false">
                            <td>
                                 EXAM DATE : 08 July 2019 Shift - 3
                                 <br />
                                <asp:PlaceHolder ID="ph08072019Shift3" runat="server" />
                            </td>
                        </tr>
                    </table>
                    </div>
            </center>
        </div>
        <br />
        <br />
        <br />
    </form>

    <style>
        .blink {
            animation: blinker 1s step-start infinite;
        }

        @keyframes blinker {
            50% {
                opacity: 0;
            }
        }

        .btn {
            flex: 1 1 auto;
            margin: 10px;
            padding: 10px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;
            /* text-shadow: 0px 0px 10px rgba(0,0,0,0.2);*/
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            height: 40px;
            width: 100%;
            color: #0c3b89;
            font-size: 16px;
        }

            /* Demo Stuff End -> */

            /* <- Magic Stuff Start */

            .btn:hover {
                font-weight: bold;
                text-decoration: underline;
                background-position: right center; /* change the direction of the change here */
            }

        .btn-1 {
            background-image: linear-gradient(to right, #f6d365 0%, #fda085 51%, #f6d365 100%);
        }

        .btn-2 {
            background-image: linear-gradient(to right, #fbc2eb 0%, #a6c1ee 51%, #fbc2eb 100%);
        }

        .btn-3 {
            background-image: linear-gradient(to right, #84fab0 0%, #8fd3f4 51%, #84fab0 100%);
        }

        .btn-4 {
            background-image: linear-gradient(to right, #a1c4fd 0%, #c2e9fb 51%, #a1c4fd 100%);
        }

        .btn-5 {
            background-image: linear-gradient(to right, #ffecd2 0%, #fcb69f 51%, #ffecd2 100%);
        }

        /* Magic Stuff End -> */
    </style>

    <style>
        .Highlight {
            background-color: red;
        }

        .swing:hover {
            -webkit-animation: swing 1s ease;
            animation: swing 1s ease;
            -webkit-animation-iteration-count: 1;
            animation-iteration-count: 1;
        }

        .grow:hover {
            -webkit-transform: scale(1.1);
            -ms-transform: scale(1.1);
            transform: scale(1.1);
        }

        @-webkit-keyframes swing {
            15% {
                -webkit-transform: translateX(5px);
                transform: translateX(5px);
            }

            30% {
                -webkit-transform: translateX(-5px);
                transform: translateX(-5px);
            }

            50% {
                -webkit-transform: translateX(3px);
                transform: translateX(3px);
            }

            65% {
                -webkit-transform: translateX(-3px);
                transform: translateX(-3px);
            }

            80% {
                -webkit-transform: translateX(2px);
                transform: translateX(2px);
            }

            100% {
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }
        }

        @keyframes swing {
            15% {
                -webkit-transform: translateX(5px);
                transform: translateX(5px);
            }

            30% {
                -webkit-transform: translateX(-5px);
                transform: translateX(-5px);
            }

            50% {
                -webkit-transform: translateX(3px);
                transform: translateX(3px);
            }

            65% {
                -webkit-transform: translateX(-3px);
                transform: translateX(-3px);
            }

            80% {
                -webkit-transform: translateX(2px);
                transform: translateX(2px);
            }

            100% {
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }
        }
    </style>

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
    </script>
</body>


</html>
