<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WelcomePage.aspx.cs" Inherits="DU_WelcomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <meta http-equiv="X-UA-Compatible" content="IE=11" />
    <!-- IE7 mode -->
    <title>Delhi University</title>
    <link rel="shortcut icon" type="image/x-icon" href="../headers/lo.ico" />
    <link href="../Portal/Examinations/Css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Portal/headers/PortalStyle.css" type="text/css" rel="stylesheet" />
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/WriteConstants.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/ErrorHandler.js" type="text/javascript"></script>
    <script type="text/javascript">
        langid = 'en-US';
        userName = 'Guest';
        ToggleURL = "FrmEntryForm.aspx";
        logindt = "Date";
        Header = "subheaderblank()";
        ServerName = "Ctrl";
        timeServer = new Date;
        //lblHome = "Home";
        lblAboutMPOnline = "About MPOnline";
        lblContactUs = "Contact us";
        lblLogin = "Login";

    </script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/jquery.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/slide.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/SevicesLogo.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/subheader.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/PortalHeaderforall.js" type="text/javascript"></script>
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

    <script type="text/javascript">
        document.onkeydown = ShowKeyCode;
        function ShowKeyCode(evt) {
            if (evt.keyCode == '123')
                return false;
        }
        document.oncontextmenu = document.body.oncontextmenu = function () { return false; }
    </script>





    <!-- End Google Tag Manager -->
    <link href="../Portal/Examinations/Css/VyapamForm.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Portal/headers/epoch_classes.js"></script>
    <script type="text/javascript" language="javascript" src="../Portal/headers/portal_validations.js"></script>
    <script type="text/javascript" language="javascript" src="../Portal/headers/newPortal_validations.js"></script>
    <link href="../Portal/Headers/epoch_styles.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript">
        //var dat = new Date();
        var curday = 01; //dat.getDate();
        var curmon = 01; //dat.getMonth()+1;
        var curyear = 2016; //dat.getFullYear();


        //Rahul singh: cleaner way of validation,
        function CheckMandatoryInput(input, message) {
            if (input.value.length == 0) {
                input.style.borderColor = "Red";
                input.focus();
                alert("This field is mandatory: " + message);
                return false;
            }

            input.style.borderColor = "";
            input.title = "";
            return true;
        };


        //Vaibhav Singh : New Check only non mandatory file uppload type
        function CheckNonMandatoryUploadInput(input, message) {
            if (input.value.length != 0) {

                var FL = input;

                var FileFormats = new Array(".jpg");
                if (!ValidateFile_Formats(FL, false, FileFormats, message)) {
                    input.style.borderColor = "Red";
                    input.focus();
                    return false;
                }
                {
                    input.style.borderColor = "";
                    input.title = "";
                    return true;
                }

            }
            else {

                return true;
            }


        };


        function CheckMandatoryRadio(input, len, message) {

            for (var i = 0; i < len; ++i) {
                if (document.getElementById(input + "_" + i).checked == true) {
                    document.getElementById(input).style.color = "";
                    input.title = "";
                    return true;
                }
            }

            document.getElementById(input).style.color = "Red";
            alert("This field is mandatory: " + message);
            return false;
        };
        function CheckMandatoryRadioQual(input, len, message) {
            if (document.getElementById(input).disabled == false) {
                for (var i = 0; i < len; ++i) {

                    if (document.getElementById(input + "_" + i).checked == true) {
                        document.getElementById(input).style.color = "";
                        input.title = "";
                        return true;
                    }
                }

                document.getElementById(input).style.color = "Red";
                alert("This field is mandatory: " + message);
                return false;
            }
        }

        function DaysInMonth(Y, M) {
            with (new Date(Y, M, 1, 12)) {
                setDate(0);
                return getDate();
            }
        }



        function IsNumeric(strString) {
            var strValidChars = "0123456789";
            var strChar;
            var blnResult = true;

            if (strString.length == 0) return false;

            for (i = 0; i < strString.length && blnResult == true; i++) {
                strChar = strString.charAt(i);
                if (strValidChars.indexOf(strChar) == -1) {
                    blnResult = false;
                }
            }
            return blnResult;
        }


        function ValidateDataUsingTinyFramework() {

            if (CheckMandatoryInput(document.getElementById("uploadCandidatephoto"), "Upload Applicant's Photo") == false) {
                document.getElementById("uploadCandidatephoto").focus(); return false;
            }
            if (CheckMandatoryInput(document.getElementById("uploadCandidateSign"), "Upload Applicant's Signature") == false) {
                document.getElementById("uploadCandidateSign").focus(); return false;
            }

        }
        function trim(s) {
            var l = 0; var r = s.length - 1;
            while (l < s.length && s[l] == ' ')
            { l++; }
            while (r > l && s[r] == ' ')
            { r -= 1; }
            return s.substring(l, r + 1);
        }

    </script>
    <style type="text/css">
        .vred {
            background: url('dot2.jpg') center no-repeat;
            color: white;
            text-align: center; /*background-color:green;*/
        }

        .vgray {
            background-color: none;
            color: black;
        }

        .visiTrue {
            display: block;
        }

        .visiFalse {
            display: none;
        }

        .btn {
        }
    </style>
    <link href="../Portal/Crop/js/style.css" rel="stylesheet" />
    <script type="text/javascript" language="javascript">

        //EXTRA ADDED FUNCTIONS

        function CheckFileUpload() {
            if (document.getElementById('pnlDomicile') != null) {
                if (document.getElementById('drpcat_0').checked == false) {
                    document.getElementById('FileUCastCertificate').disabled = false;

                }
                else {
                    document.getElementById('FileUCastCertificate').disabled = true;

                }
            }
        }

        function ChangeIDProof(Name) {
            document.getElementById('lblIdNoCap').innerHTML = Name.value + ' No.';
            document.getElementById('txtidno').value = '';
        }



        function ValidateUseLessText(id, text) {
            var toCheck = id.toUpperCase();
            if (toCheck.replace(" ", "") == "OTHER" || toCheck.replace(" ", "") == "NA" ||
               toCheck.replace(" ", "") == "NILL" || toCheck.replace(" ", "") == "NONE" ||
                toCheck == "NOT AVAILABLE" || toCheck.replace(" ", "") == "NO" || toCheck.replace(" ", "") == "YES" || toCheck.replace(" ", "") ==
                "N/A") {
                alert("Please Enter Valid Text With " + text);
                return false;
            }

            return true;
        }

    </script>
    <script type="text/javascript" language="javascript">
        var ColorName = 'Red';
        //radio button validation
        function ValidateRadio(theField, fieldName) {
            if (theField == null) { return true; }
            var flag = false;
            for (i = 0; i < theField.length; i++) {
                if (!theField[i].disabled) { if (theField[i].checked) { flag = true; } }
                else { flag = true; }

            }

            if (flag == false)
            { for (i = 0; i < theField.length; i++) { theField[i].style.background = ColorName; } }

            if (flag == true) { for (i = 0; i < theField.length; i++) { theField[i].style.background = ''; } }
            if (!flag) {
                alert("Please " + fieldName + "");

                return false;
            }
            return true;

        }

        //Dropdown Validation
        function _ValidateDropdownp(theField, fieldName) {
            if (theField.selectedIndex == 0) {
                theField.style.background = ColorName;
                alert("Please " + fieldName);

                return false;
            }
            else { theField.style.background = 'white'; }
            return true;
        }


        function trim(str) {
            return str.replace(/^\s+|\s+$/g, '');
        }
        function Rtrim(str) {
            return s.replace(/s*$/, '');
        }


        function ValidateFileUpload(Input, Msg) {
            var Textval = trim(Input.value);
            if (Textval == "") {
                WriteLabel(Input, "true", "Please Upload " + Msg);
            }
            else {
                WriteLabel(Input, "false", "");
            }
        }

        function CommonValidate(Input, Exp, Msg, isMandatory) {

            if (Input == null) { return true; }

            var proceed = false;
            var CreateId = Input.id + "_" + "ValidText";

            if (isMandatory) {
                var Textval = trim(Input.value);
                if (Textval == "") {

                    var Elem = CreateSpan("notetext", "Please Enter " + Msg);
                    AppendChild(Input, Elem, CreateId);
                    Input.style.borderColor = "red";
                    return false;
                }
                else if (Textval == "00" || Textval == "ID Proof.") {

                    var Elem = CreateSpan("notetext", "Please Select " + Msg);
                    AppendChild(Input, Elem, CreateId);
                    Input.style.borderColor = "red";
                    return false;

                }
                else {
                    Input.style.borderColor = "";
                    proceed = true;
                }

            }
            else {
                if (Input.value != "") {
                    proceed = true;
                }

            }

            if (proceed) {

                var x = validRExpression(Input.value, Exp);


                if (x) {
                    //Claer Prev Messages
                    var Elem = CreateSpan("notetext", "");
                    AppendChild(Input, Elem, CreateId);
                    Input.style.borderColor = "";
                    return true;
                }
                else {
                    var Elem = CreateSpan("notetext", "Please Enter valid " + Msg);
                    AppendChild(Input, Elem, CreateId);
                    Input.style.borderColor = "";
                    // MsgBox("Please  "+Msg,Input);
                    return false;
                }
            }
            else {
                //ClearPrevMess if any  
                var Elem = CreateSpan("notetext", "");
                AppendChild(Input, Elem, CreateId);

                //CreateElement(Input,Elem,CreateId);   

                Input.style.background = 'white';
                return true;
            }



        }
        function validRExpression(Value, Exp) {
            //This Function added on 20 Aug 2007 by Dileep.M

            //Declare regular expression
            var RegEx = new RegExp(Exp);
            //Match Value to Regular Expression
            //Match method returns a boolean value
            if (Value.match(RegEx)) {
                return true;
            }
            else {

                return false;
            }

        }
        function CreateSpan(CSSClass, textVal) {
            var Elem = document.createElement("span");
            Elem.className = CSSClass;
            Elem.appendChild(document.createElement("br"));
            Elem.appendChild(document.createTextNode(textVal));
            return Elem;
        }
        function AppendChild(Input, Elem, Id) {

            var CElem = document.getElementById(Id);
            if (CElem == null) {
                //Assaign Id..        
                //and Create it.
                Elem.setAttribute("id", Id);
                AppendControl(Input, Elem);

            }
            else {
                //Already Exists
                //So Change Message
                //alert(Elem.innerHTML);
                CElem.innerHTML = Elem.innerHTML;

            }
        }
        function AppendControl(Input, Elem) {
            //alert("Tag: "+Input.parentNode);
            Input.parentNode.appendChild(Elem);
            //alert("Id: "+Elem.id);
        }


        function validationnew(Input, Msg, Ismandatory, FType) {

            var mandatory;
            if (Ismandatory == 'T') {
                mandatory = true;
            }
            else {
                mandatory = false;
            }

            var day;
            switch (FType) {
                case 'Name':
                    FType = '^[a-zA-Z .]{1,50}$';
                    break;

                case 'Address':
                    FType = '^[a-zA-Z0-9., %/()|#-]{1,200}$';
                    break;

                case 'Pincode':
                    FType = "([1-9][^2])";
                    break;


                case 'Mobile':
                    FType = "^[7-9]{1}[0-9]{9}$";
                    break;

                case 'Numeric':
                    FType = "^[0-9]+$";
                    break;

                case 'Email':
                    FType = "\\S+@\\S+\\.\\S+";
                    break;

            }
            /* var Form=document.getElementById('Doform1nation');
            var DonarName='^[a-zA-Z .]{1,50}$';
            var DFName='^[a-zA-Z .]{1,50}$';
            var Address="^[a-zA-Z0-9., %/()|#-]{1,200}$";
            var MobileNumber="^[0-9]{10}$";
            var Numeric="^[0-9]+$";  
            var Email="\\S+@\\S+\\.\\S+";*/

            if (!CommonValidate(Input, FType, Msg, mandatory)) { return false; }
            //    	}
            //    	if(CType=="radio")
            //        {
            //    	    if(!ValidateRadio(Input,Msg)){return false;}
            //    	}
            //    	if(CType=="select")
            //        {
            //    	    if(!CommonValidate(Input,FType,Msg,mandatory)){return false;}
            //    	}

        }
    </script>
    <script type="text/javascript" language="javascript">


        function WriteLabel(field, visible, Message) {
            if (visible == "true") {
                //ErrMsg = "Please Enter Date of Birth."
                //alert(ErrMsg);
                var CreateId = field.id + "_" + "ValidText"
                var Elem = CreateSpan("notetext", Message);
                AppendChild(field, Elem, CreateId);
                field.style.borderColor = "red";
            }

            else {
                var CreateId = field.id + "_" + "ValidText"
                var Elem = CreateSpan("notetext", "");
                AppendChild(field, Elem, CreateId);
                field.style.borderColor = "";
            }
        }

    </script>
    <script type="text/javascript" language="javascript">



       
    </script>
    <script language="javascript">        window.onback = history.forward();</script>
    <script type="text/javascript">
        function burstCache() {
            if (!navigator.onLine) {
                document.body.innerHTML = 'Loading...';
                window.location = 'ErrorPage.html';
            }
        }
    </script>

    <script language="javascript" type="text/javascript">


        function IsNumerici(input, event, AllowDot) {
            var keyCode = event.which ? event.which : event.keyCode;

            if (parseInt(keyCode) >= 48 && parseInt(keyCode) <= 57) { return true; }

            if (AllowDot) {
                if (parseInt(keyCode) == 46) {
                    if (input.value.indexOf(".") == -1) { return true; }
                    else { return false; }
                }
            }
            return false;
        }
    </script>
</head>
<body>
    <style>
        .Glow {
            background-color: #004A7F;
            -webkit-border-radius: 10px;
            border-radius: 10px;
            border: none;
            color: #FFFFFF;
            cursor: pointer;
            display: inline-block;
            font-family: Arial;
            font-size: 14px;
            font-weight: bold;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
        }

        @-webkit-keyframes glowing {
            0% {
                background-color: #B20000;
                -webkit-box-shadow: 0 0 3px #B20000;
            }

            50% {
                background-color: #FF0000;
                -webkit-box-shadow: 0 0 40px #FF0000;
            }

            100% {
                background-color: #B20000;
                -webkit-box-shadow: 0 0 3px #B20000;
            }
        }

        @-moz-keyframes glowing {
            0% {
                background-color: #B20000;
                -moz-box-shadow: 0 0 3px #B20000;
            }

            50% {
                background-color: #FF0000;
                -moz-box-shadow: 0 0 40px #FF0000;
            }

            100% {
                background-color: #B20000;
                -moz-box-shadow: 0 0 3px #B20000;
            }
        }

        @-o-keyframes glowing {
            0% {
                background-color: #B20000;
                box-shadow: 0 0 3px #B20000;
            }

            50% {
                background-color: #FF0000;
                box-shadow: 0 0 40px #FF0000;
            }

            100% {
                background-color: #B20000;
                box-shadow: 0 0 3px #B20000;
            }
        }

        @keyframes glowing {
            0% {
                background-color: #B20000;
                box-shadow: 0 0 3px #B20000;
            }

            50% {
                background-color: #FF0000;
                box-shadow: 0 0 40px #FF0000;
            }

            100% {
                background-color: #B20000;
                box-shadow: 0 0 3px #B20000;
            }
        }

        .Glow {
            -webkit-animation: glowing 1500ms infinite;
            -moz-animation: glowing 1500ms infinite;
            -o-animation: glowing 1500ms infinite;
            animation: glowing 1500ms infinite;
        }

        .auto-style1 {
            font-weight: bold;
        }
    </style>

    <form id="form1" runat="server">
        <div class="container">
            <div class="inner_content ">
                <div id="pnlMain">

                    <table class="Hrftable">
                        <tr>
                            <th colspan="2">
                                <asp:Label ID="lblTitle" runat="server"></asp:Label>
                            </th>
                        </tr>

                        <tr>

                            <%--<td class="auto-style2">
                                <img src="../Portal/Examinations/Images/gettingStarted-confirm.png" /></td>--%>

                            <td style="border-width: 0px; vertical-align: top; color: #d40d10;" colspan="2">
                                <br />

                                <asp:Label ID="lblMessage" Font-Size="Medium" Font-Bold="true" runat="server"></asp:Label>
                                <%-- <br />
                                <br />--%>
                                <asp:Label ID="lblName" Font-Size="Medium" Font-Bold="true" runat="server"></asp:Label>
                                <%--<br />
                                <br />--%>

                            </td>
                        </tr>
                        <tr runat="server" visible="false">
                            <td colspan="2"></td>
                        </tr>

                        <tr>

                            <td colspan="2">

                                <%--<asp:TextBox ID="textBoxURL" Width="3px" runat="server" BackColor="WhiteSmoke" BorderColor="White" BorderStyle="None" ForeColor="White"></asp:TextBox>--%>
                                <center>
                                    <div style="border: 1px solid black; font-size: 15px; background-color: white; width: 700px;text-align:left;">
                                        &nbsp;&nbsp;&nbsp;Steps for Submitting Objections:
                                    <div style="height:10px"></div>
                                        &nbsp;&nbsp;&nbsp;1. Download your ‘Response sheet’ (Questions and Options will appear in the same pattern as 
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;they appeared in the examination)
                                    <br />
                                        &nbsp;&nbsp;&nbsp;2. Download ‘Master QP PDF’ for viewing Correct Keys(Questions and Options will appear in <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Master copy pattern). 
                                    <br />
                                        &nbsp;&nbsp;&nbsp;3. Question and Option text OR ‘Question ID’ and ‘Option ID’ to be referred for comparing <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;‘Response Sheet’ and ‘Master QP PDF’. 
                                        <br />
                                        &nbsp;&nbsp;&nbsp;<span style="color: black;">4. </span>To raise any Objection, Click on ‘Objection Form’ and submit the Objection. 
                                     <br />
                                        <span style="color: red; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                The ‘Question ID’and ‘Option ID’ needs to be referred for submitting Objections. </span>
                                    </div>
                                </center>
                            </td>

                        </tr>

                        <tr>

                            <td align="center">
                                <table>


                                    <tr runat="server" id="trbtnResultCat2">
                                        <td>
                                            <strong>
                                                <asp:Button ID="btnResultCat2" runat="server" BackColor="#4B0082" Style="color: white;" Text="Download Your Response Sheet"
                                                    OnClick="btnResultCat_Click" Width="250px" Height="36px" CssClass="auto-style1" />
                                            </strong>
                                            <br />

                                        </td>
                                    </tr>
                                    <tr runat="server" id="tr1">
                                        <td>
                                            <strong>
                                                <asp:Button ID="btnAns" runat="server" BackColor="#4B0082" Style="color: white;" Text="View Answer Keys (MASTER QP PDF)"
                                                    Width="250px" OnClick="btnAns_Click" Height="36px" CssClass="auto-style1" />
                                            </strong>

                                        </td>
                                    </tr>
                                    <tr runat="server" id="trbtnsubmit">
                                        <td>
                                            <strong>
                                                <asp:Button ID="btnsubmit" runat="server" Text="Objection Form" Width="250px" BackColor="#4B0082"
                                                    Style="color: white;" OnClick="btnsubmit_Click" Height="36px" CssClass="auto-style1" />
                                            </strong>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" BackColor="#4B0082" Style="color: white;" Text="Exit"
                                                Width="250px" PostBackUrl="~/DU/HomePage.aspx" Height="36px" CssClass="auto-style1" />



                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </tr>

                    </table>

                </div>


                <br />
                <div style="text-align: center">
                    <%-- <input type="hidden" name="hdHash" id="hdHash" value="fb329e63-22f8-414e-b8c1-f0a532f7b99c" />
                <input type="hidden" name="hdKIOSKID" id="hdKIOSKID" value="LoginID" />
                <input type="hidden" name="HdnEligibleUR" id="HdnEligibleUR" />--%>
                </div>
            </div>
        </div>
    </form>
    <%--<script type="text/javascript" language="javascript" src="../Portal/headers/creditsfootermp.js"></script>--%>
</body>
</html>


