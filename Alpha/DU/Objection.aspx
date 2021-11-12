<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Objection.aspx.cs" Inherits="DU_Objection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <meta http-equiv="X-UA-Compatible" content="IE=11" />
    <!-- IE7 mode -->
    <title>Delhi University</title>

    <link href="../Portal/Examinations/Css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Portal/headers/PortalStyle.css" type="text/css" rel="stylesheet" />
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/WriteConstants.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/ErrorHandler.js" type="text/javascript"></script>
    <script type="text/javascript">
        langid = 'en-US';
        userName = 'Guest';
        ToggleURL = "Confirmation.aspx";
        logindt = "Date";
        Header = "subheaderblank()";
        ServerName = "Ctrl";
        timeServer = new Date;
        lblHome = "Home";
        lblAboutMPOnline = "About MSETCL";
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

    <form id="form1" runat="server">



        <div class="container">
            <div class="inner_content ">
                <div style="text-align: left; background: #4B0082; color: white">
                    <table style="width: 100%;">
                        <tr>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <td style="width: 90%;"></td>
                            <%--<td align="center" style="width: 10%;">
                                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/Logout.jpg" Style="width: 35px; height: 30px;" title="Logout" OnClick="ImageButton1_Click" /><br>
                                Logout
                            </td>--%>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td style="width: 50%;"><span style="font-size: 14px;" align="left">LOGIN ID:</span>&nbsp;<asp:Label ID="lblregno" runat="server" Text="" Font-Size="14px"></asp:Label></td>
                            <td></td>
                        </tr>
                    </table>
                    <%--Recruitment Examination for the post of Personal Assistant <br />
                    <br />

                    <span style="font-size: 14px;">Registration No:</span>&nbsp;
                    <asp:Label ID="lblregno" runat="server" Text="A" Font-Size="14px"></asp:Label>--%>
                </div>


                <br />
                <br />
                <br />
                <div id="pnlMain">
                    <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>--%>
                    <table class="Hrftable">
                        <tr>
                            <td class="exam_list_head"></td>
                        </tr>

                        <tr>

                            <td>

                                <table class="Hrftable" runat="server" id="save">

                                    <tr>


                                        <th colspan="3">Objection Form 
                                        </th>

                                    </tr>

                                    <tr>

                                        <td colspan="3">
                                            <asp:Label ID="lblCMessage" runat="server" ForeColor="Red"></asp:Label>
                                        </td>

                                    </tr>

                                    

                                    <tr>

                                        <td>1.<span style="color: #ff0000">*</span> </td>

                                        <td>

                                            <asp:Label ID="Section" runat="server">SUBJECT</asp:Label>
                                        </td>

                                        <td>
                                            <asp:DropDownList ID="ddlsubject" runat="server" CssClass="select"  AutoPostBack="true" Style="width: 315px;" OnSelectedIndexChanged="ddlsubject_SelectedIndexChanged">
                                            </asp:DropDownList>

                                        </td>

                                    </tr>
                                      <tr>

                                        <td>2.<span style="color: #ff0000">*</span> </td>

                                        <td>
                                            <asp:Label ID="lblQNo" runat="server">QUESTION ID.</asp:Label>
                                        </td>

                                        <td>
                                            <asp:DropDownList ID="ddlQno" runat="server" CssClass="select" Style="width: 315px;" AutoPostBack="True" OnSelectedIndexChanged="ddlQno_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>

                                    </tr>
                                    <tr>

                                        <td>3.<span style="color: #ff0000">*</span> </td>

                                        <td>

                                            <asp:Label ID="Label5" runat="server">OPTION ID</asp:Label>
                                        </td>

                                        <td>
                                            <asp:DropDownList ID="ddloptionid"  runat="server" CssClass="select" Style="width: 315px;">
                                            </asp:DropDownList>

                                        </td>

                                    </tr>
                                  
                                    <tr>

                                        <td>4.<span style="color: #ff0000">*</span> </td>

                                        <td>
                                            <asp:Label ID="Label3" runat="server">NATURE OF OBJECTIONS </asp:Label>
                                        </td>

                                        <td>
                                            <asp:DropDownList ID="ddlquerytype" runat="server" CssClass="select" Style="width: 315px;" AutoPostBack="True" OnSelectedIndexChanged="ddlquerytype_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:TextBox ID="txtobjection" Visible="false" runat="server" MaxLength="50" name="txtobjection" oncopy="return false" oncut="return false"
                                                onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();}" onkeypress="return CreateStringTextBoxForOthers(this,event)"
                                                onpaste="return false" Style="text-transform: uppercase; width: 50%; height: 20px" type="text"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>

                                        <td>5.<span style="color: #ff0000">*</span> </td>

                                        <td>
                                            <asp:Label ID="Label4" runat="server">REMARKS</asp:Label>
                                        </td>

                                        <td>
                                            <%-- <input id="txtremarks1" runat="server" maxlength="150" name="txtdetails" oncopy="return false" oncut="return false" 
                                                        onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();}" onkeypress="return CreateStringTextBoxForOthers(this,event)" 
                                                        onpaste="return false" style="text-transform: uppercase; width: 95%" type="text" />--%>
                                            <asp:TextBox ID="txtremarks" runat="server" MaxLength="150" name="txtdetails" oncopy="return false" oncut="return false"
                                                onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();}" onkeypress="return CreateStringTextBoxForOthers(this,event)"
                                                onpaste="return false" Style="text-transform: uppercase; width: 95%; height: 50px" type="text" TextMode="MultiLine" Wrap="true" Rows="2"></asp:TextBox>
                                            <br />

                                            <asp:Label ID="Label2" runat="server" Text="Maximum length 150 characters" Font-Size="Small"></asp:Label>
                                        </td>

                                    </tr>

                                    <tr>

                                        <td>6.<span style="color: #ff0000"></span> </td>

                                        <td>
                                            <asp:Label ID="lbluploadCandidatePhoto" runat="server" Text="CHOOSE FILE"></asp:Label>
                                        </td>

                                        <td>
                                            <asp:FileUpload ID="uploadCandidatephoto" runat="server" />
                                            <br />

                                            <asp:Label ID="Label1" runat="server" Text="File size should be less than 80 KB in JPEG and JPG format" Font-Size="Small"></asp:Label>
                                        </td>

                                    </tr>



                                </table>


                            </td>

                        </tr>

                        <tr>
                            <td align="center">
                                <%-- <asp:Button ID="btnsubmit" runat="server" Text="Proceed to Pay Online.." class="btn" OnClientClick="return ValidateDataUsingTinyFramework();" OnClick="btnsubmit_Click" />--%>
                                <asp:Button ID="btnsubmit" runat="server" Text="Add Objection" BackColor="#4B0082" Style="color: white;" Width="120px" OnClick="btnsubmit_Click" />&nbsp;&nbsp;
                                <asp:Button ID="btnExit" runat="server" Text="Add More Objection" BackColor="#4B0082" Style="color: white;" Width="150px" OnClick="btnExit_Click" />&nbsp;&nbsp;
                                <asp:Button ID="btnsaveExit" runat="server" Text="Save & Exit" BackColor="#4B0082" Style="color: white;" Width="150px" OnClick="btnsaveExit_Click" />

                                <asp:Button ID="btnBack" runat="server" Text="Back" BackColor="#4B0082" Style="color: white;" Width="150px" OnClick="btnBack_Click" />
                            </td>
                        </tr>

                        <tr>
                            <td align="center">

                                <div style='overflow: scroll; width: 950px; height: 400px;'>


                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" RowStyle-Wrap="true">
                                        <Columns>
                                            <asp:BoundField DataField="Row" HeaderText="Sr.No" />
                                            <asp:BoundField DataField="canid" HeaderText="Roll Number" />
                                            <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                            <asp:BoundField DataField="Qno" HeaderText="Question ID" />
                                            <asp:BoundField DataField="optionid" HeaderText="option ID" />
                                            <asp:BoundField DataField="QueryType" HeaderText="Nature of Objection" />
                                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" ItemStyle-Wrap="true" ItemStyle-Width="200px" />
                                            <asp:BoundField DataField="Uploaddoucument" HeaderText="Attached" />

                                        </Columns>
                                    </asp:GridView>
                                </div>

                            </td>
                        </tr>
                    </table>

                    <%-- </ContentTemplate>
                       </asp:UpdatePanel>--%>
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
