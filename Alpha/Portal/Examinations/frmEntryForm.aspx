<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmEntryForm.aspx.cs" Inherits="Portal_Examinations_frmEntryForm" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><meta http-equiv="X-UA-Compatible" content="IE=11" />
    <!-- IE7 mode -->
    <title>
	Sub-Engineer (Civil/Electrical/Mechanical) and Draftsman Recruitment Test-2016
    
</title><link rel="shortcut icon" href="../headers/favicon.ico" />
    <link href="../../headers/Examinations/Css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../headers/PortalStyle.css" type="text/css" rel="stylesheet" />
<script language="javascript" src="../headers/MPOnlineHeader/WriteConstants.js" type="text/javascript"></script>
<script language="javascript" src="../headers/MPOnlineHeader/ErrorHandler.js" type="text/javascript"></script>
<script type="text/javascript">
    langid = 'hi-IN';
    userName = 'Guest';
    ToggleURL = "/Portal/Examinations/vyapam/Forms/ENG_2016/frmEntryForm.aspx";
    kioskid = "kioskID";
    kioskDate = "Date";
    logindt = "Date";
    balnce = "Balnce";
    Header = "subheaderblank()";
    ServerName = "Ctrl";
    timeServer = new Date('2/18/2016 10:45:33 AM');
    lblHome = "Home";
    lblAboutMPOnline = "About MPOnline";
    lblCitizenServices = "Citizen Services";
    lblLocateKIOSK = "Locate KIOSK/CSCs";
    lblApplyfornewKOISK = "Apply for new KIOSK";
    lblContactUs = "Contact us";
    lblLogin = "Login";
    lblCitizen = "Citizen";
    lnkKiosk = "Kiosk";
    lblG2G = "G2G ";
    lblFooterLocateKIOSK1 = "Locate KIOSK/CSCs";
    lblFaq = "FAQ's";
    lblCareer = "Career";
    lblContactHelpDesk = "Contact HelpDesk";
    lblMPOnlineWebsite = "MPOnline Website";
    lblDepartmentofPublicRelationMP = "Department of Public Relation MP";
    lblMadhyaPradeshGovernment = "Madhya Pradesh Government";
    lblChiefMinistersReliefFund = "Chief Ministers Relief Fund";
    lblMPSEDC = "MPSEDC";
    lblMPOnlineSurvey = "MPOnline Survey";
    lblPrivacyPolicy = "Privacy Policy";
    lblDisclaimer = "Disclaimer";
    lblCopyright = "Copyright \u00a9 2014 MPOnline Limited";
    lblSiteBestView = "Site best viewed in Microsoft Internet Explorer 10+, Mozilla Firefox and Google Chrome in 1024x768 resolution.";
    lblMPOnlineChanakya = "MPOnline Chanakya";
    lblSkiptoMainContent = "Skip to Main Content";
    lblSkiptoNavigation = "Skip to Navigation";
    lblA1 = "A";
    lblGrievances = "Grievances";
    lblFeedback = "Feedback";
    lblWorkshopGallery = "Workshop Picture Gallery";
    lblWorkshopGalleryBPL = "Workshop - Bhopal";
    lblWorkshopGalleryIND = "Workshop - Indore";
    lblWorkshopGalleryIND = "Workshop - Jabalpur";
    lblWorkshopGalleryREWA = "Workshop - Satna";
    lblWorkshopGalleryGWL = "Workshop - Gwalior";
    lblMPONews = "MPOnline News";
    lblDate = "Date";
    LgTime = "1800000";
    counsuser_add_capt = "192.168.0.202";
    lblAdmin = "Employee";
    lblPaymentPolicy = "Payment Terms & Conditions";
    lblCancellation = "Cancellation / Refund Policy";
    lblTermsOfUse = "Terms of Use";
    lblKioskDTECounseling = "Kiosk [DTE Counselling]";
    lblG2GDTECounseling = "G2G [DTE Counselling]";
    lblAchievements = "Achievements";
</script>
<script language="javascript" src="../headers/MPOnlineHeader/jquery.js" type="text/javascript"></script>
<script language="javascript" src="../headers/MPOnlineHeader/slide.js" type="text/javascript"></script>
<script language="javascript" src="../headers/MPOnlineHeader/SevicesLogo.js" type="text/javascript"></script> 
<script language="javascript" src="../headers/MPOnlineHeader/subheader.js" type="text/javascript"></script> 
<script language="javascript" src="../headers/MPOnlineHeader/PortalHeader.js" type="text/javascript"></script>
<script language="javascript" src="../headers/MPOnlineHeader/Kiosk.js" type="text/javascript"></script>
<script language="javascript" src="../headers/MPOnlineHeader/Ticker.js" type="text/javascript"></script>
<script language="javascript" src="../headers/MPOnlineHeader/TimeTick.js" type="text/javascript"></script>
<script language="javascript" src="../headers/MPOnlineHeader/Zoom.js" type="text/javascript"></script>
<script type="text/javascript">var MsgDiv = document.createElement("div"); MsgDiv.id = "divclMsg"; document.body.appendChild(MsgDiv);</script>
<style id="antiClickjack">body{display:none !important;}</style>
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

<!-- Google Analytics Code -->
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-65077243-1', 'auto');
    ga('send', 'pageview');

</script>
<!-- Google Analytics Code -->

<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-TNWGK7"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function (w, d, s, l, i) {
w[l] = w[l] || []; w[l].push({
'gtm.start':
new Date().getTime(), event: 'gtm.js'
}); var f = d.getElementsByTagName(s)[0],
j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
'//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', 'GTM-TNWGK7');</script>
<!-- End Google Tag Manager --><link href="../Examinations/Css/VyapamForm.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../headers/epoch_classes.js"></script>
    <script type="text/javascript" language="javascript" src="../headers/portal_validations.js"></script>
    <script type="text/javascript" language="javascript" src="../headers/newPortal_validations.js"></script>
    <link href="../Headers/epoch_styles.css" type="text/css" rel="stylesheet" />
    <script language="javascript" type="text/javascript">
        window.onload = function () {

            if (document.getElementById('txtdob') != null) {
                dp_cal1 = new Epoch('epoch_popup', 'popup', document.getElementById('txtdob'));
            }
            if (document.getElementById('txtmarrdate') != null) {
                dp_cal2 = new Epoch('epoch_popup', 'popup', document.getElementById('txtmarrdate'));
            }

            if (document.getElementById('txtdoblastchild') != null) {
                dp_cal3 = new Epoch('epoch_popup', 'popup', document.getElementById('txtdoblastchild'));
            }
            //onEligibleStatusChange();

            //OnDomicileCheckChange();

            if (document.getElementById('tbldtls') != null) {
                OnDomicilePropertiesCheck();

                CheckFileUpload();
                //MarriedStatusCheckChange();

                //FunChkTwins(); //well try
            }

        }
        //onPostStatus();

        try { history.go(1); } catch (e) { }

    </script>
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

        function datediff(date1, date2) {
            var y1 = date1.getFullYear(), m1 = date1.getMonth(), d1 = date1.getDate(),
     y2 = date2.getFullYear(), m2 = date2.getMonth(), d2 = date2.getDate();

            if (d1 < d2) {
                m1--;
                d1 += DaysInMonth(y2, m2);
            }
            if (m1 < m2) {
                y1--;
                m1 += 12;
            }
            return [y1 - y2, m1 - m2, d1 - d2];
        }

        function calAge() {
            if (document.getElementById('txtdob').value != "" && document.getElementById('txtdob').value.length == 10) {
                var dataobj = document.getElementById('txtdob').value;
                var calday;
                var calmon;
                var calyear;
                var Val = dataobj.split('/');
                if (Val.length == 3) {
                    calday = Val[0];
                    calmon = Val[1];
                    calyear = Val[2];
                } else { }
                var totalage;
                if (curday == "" || curmon == "" || curyear == "" || calday == "" || calmon == "" || calyear == "") {
                    //alert("please fill all the values and click go -");
                } else {
                    var curd = new Date(curyear, curmon - 1, curday);
                    var cald = new Date(calyear, calmon - 1, calday);
                    var diff = Date.UTC(curyear, curmon, curday, 0, 0, 0) - Date.UTC(calyear, calmon, calday, 0, 0, 0);
                    var dife = datediff(curd, cald);
                    var totalage = dife[0] + " years, " + dife[1] + " months, and " + dife[2] + " days";
                }

                document.getElementById('txtAge').innerHTML = totalage;
                document.getElementById('lblAge').value = totalage;

            }
        }

        function calage(dataobj) {

            var calday;
            var calmon;
            var calyear;
            var Val = dataobj.split('/');
            if (Val.length == 3) {
                calday = Val[0];
                calmon = Val[1];
                calyear = Val[2];
            }
            else {

            }

            var totalage;
            if (curday == "" || curmon == "" || curyear == "" || calday == "" || calmon == "" || calyear == "") {
                //alert("please fill all the values and click go -");
            }
            else {
                var curd = new Date(curyear, curmon - 1, curday);
                var cald = new Date(calyear, calmon - 1, calday);
                var diff = Date.UTC(curyear, curmon, curday, 0, 0, 0) - Date.UTC(calyear, calmon, calday, 0, 0, 0);
                var dife = datediff(curd, cald);
                var totalage = dife[0] + " years, " + dife[1] + " months, and " + dife[2] + " days";

                //document.getElementById('TextBox1').value=totalage;
                //document.getElementById('Label1').innerHTML =dife[0]+" years, "+dife[1]+" months, and "+dife[2]+" days";
                //document.getElementById('Label1').value =totalage;

            }

            document.getElementById('txtAge').innerHTML = totalage;
            document.getElementById('lblAge').value = totalage;


            //            var curd = new Date('2015', curmon - 1, curday);
            //            var cald = new Date('2015', calmon - 1, calday);
            //            var diff = Date.UTC('2015', curmon, curday, 0, 0, 0) - Date.UTC('2015', calmon, calday, 0, 0, 0);
            //            var dife = datediff(curd, cald);
            //            var totalage1 = dife[0] + " years, " + dife[1] + " months, and " + dife[2] + " days";
            //            document.getElementById('txtAge1').innerHTML = totalage1;

            //		
        }

        function GetyearsOfAge(dataobj) {

            var calday;
            var calmon;
            var calyear;
            var Val = dataobj.split('/');
            if (Val.length == 3) {
                calday = Val[0];
                calmon = Val[1];
                calyear = Val[2];
            }
            else {

            }

            var totalage;
            if (curday == "" || curmon == "" || curyear == "" || calday == "" || calmon == "" || calyear == "") {
                //alert("please fill all the values and click go -");
            }
            else {
                var curd = new Date(curyear, curmon - 1, curday);
                var cald = new Date(calyear, calmon - 1, calday);
                var diff = Date.UTC(curyear, curmon, curday, 0, 0, 0) - Date.UTC(calyear, calmon, calday, 0, 0, 0);
                var dife = datediff(curd, cald);
                return dife[0];
            }
        }
        function ValidateAge() {
            var years = Number(GetyearsOfAge(document.getElementById('txtdob').value));

            if (years < 18) {
                alert("You should be atleast 18 years of age on 01/01/2016");
                document.getElementById('txtdob').value = '';
                return false;
            }
        }
        function onsexchange() {
            if (document.getElementById('pnlDomicile') == null)
            { }
            else {
                if (document.getElementById("rdosex_0").checked == true || document.getElementById("rdomarried_1").checked == true) {
                    document.getElementById("rdodivircee").disabled = true;
                    document.getElementById("rdodivircee_0").checked = false;
                    document.getElementById("rdodivircee_1").checked = false;
                }
                else {
                    document.getElementById("rdodivircee").disabled = false;
                }
            }
        }
        function MarriedStatusCheckChange() {

            if (document.getElementById("rdomarried_0").checked == true) {

                document.getElementById('ManMarriedDate').innerHTML = '<span style="color: #ff0000">*</span> ';
                document.getElementById('ManNoOfChild').innerHTML = '<span style="color: #ff0000">*</span> ';

                document.getElementById("txtmarrdate").disabled = false;
                document.getElementById("txtmarrdate").style.backgroundColor = "";
                document.getElementById("txtnoofchild").disabled = false;
                document.getElementById("txtnoofchild").style.backgroundColor = "";
                document.getElementById("txtdoblastchild").disabled = false;
                document.getElementById("txtdoblastchild").style.backgroundColor = "";
                document.getElementById("rdoTwin_0").disabled = false;
                document.getElementById("rdoTwin_1").disabled = false;

                if (document.getElementById('pnlDomicile') != null) {
                    if (document.getElementById("rdosex_1").checked == true) {
                        document.getElementById("rdodivircee_0").disabled = false;
                        document.getElementById("rdodivircee_1").disabled = false;
                    }
                    document.getElementById("rdointercast_0").disabled = false;
                    document.getElementById("rdointercast_1").disabled = false;
                    document.getElementById("rdofamily_0").disabled = false;
                    document.getElementById("rdofamily_1").disabled = false;
                }
            }
            else if (document.getElementById("rdomarried_1").checked == true) {

                document.getElementById('ManMarriedDate').innerHTML = '';
                document.getElementById('ManNoOfChild').innerHTML = '';

                document.getElementById("txtmarrdate").disabled = true;
                //document.getElementById("txtmarrdate").style.backgroundColor = "Grey"; 
                document.getElementById("txtmarrdate").value = "";
                document.getElementById("txtnoofchild").disabled = true;
                //document.getElementById("txtnoofchild").style.backgroundColor = "Grey";
                document.getElementById("txtnoofchild").value = "";
                document.getElementById("txtdoblastchild").disabled = true;
                // document.getElementById("txtdoblastchild").style.backgroundColor = "Grey"; 
                document.getElementById("txtdoblastchild").value = "";
                document.getElementById("rdoTwin_0").disabled = true;
                document.getElementById("rdoTwin_1").disabled = true;
                document.getElementById("rdoTwin_0").checked = false;
                document.getElementById("rdoTwin_1").checked = false;
                if (document.getElementById('pnlDomicile') != null) {

                    document.getElementById("rdodivircee_0").disabled = true;
                    document.getElementById("rdodivircee_1").disabled = true;
                    document.getElementById("rdointercast_0").disabled = true;
                    document.getElementById("rdointercast_1").disabled = true;
                    document.getElementById("rdofamily_0").disabled = true;
                    document.getElementById("rdofamily_1").disabled = true;
                }
            }

            onsexchange();

        }

        function OnDomicileCheckChangeEdit() {


            if (document.getElementById("rdodomicile_0").checked == true) {
                //document.getElementById("drpcat_0").checked = false;
                document.getElementById("drpcat_1").disabled = false;
                document.getElementById("drpcat_2").disabled = false;
                document.getElementById("drpcat_3").disabled = false;


                //document.getElementById("RdoClass_2").checked = false;
                document.getElementById("RdoClass_0").disabled = false;
                document.getElementById("RdoClass_1").disabled = false;
                document.getElementById("RdoClass_2").disabled = false;

            }
            else if (document.getElementById("rdodomicile_1").checked == true) {
                document.getElementById("drpcat_0").checked = true;
                document.getElementById("drpcat_1").disabled = true;
                document.getElementById("drpcat_2").disabled = true;
                document.getElementById("drpcat_3").disabled = true;


                document.getElementById("RdoClass_2").checked = true;
                document.getElementById("RdoClass_0").disabled = true;
                document.getElementById("RdoClass_1").disabled = true;
                // document.getElementById("RdoClass_2").disabled = true;

            }
        }



        //        function OnDomicileCheckChange() {


        //            if (document.getElementById("rdodomicile_0").checked == true) {
        //                document.getElementById("drpcat_0").checked = false;
        //                document.getElementById("drpcat_1").disabled = false;
        //                document.getElementById("drpcat_2").disabled = false;
        //                document.getElementById("drpcat_3").disabled = false;
        //                document.getElementById("txtNewCheckEmp").disabled = false;


        //                document.getElementById("RdoClass_2").checked = false;
        //                document.getElementById("RdoClass_0").disabled = false;
        //                document.getElementById("RdoClass_1").disabled = false;
        //                document.getElementById("RdoClass_2").disabled = false;

        //            }
        //            else if (document.getElementById("rdodomicile_1").checked == true) {
        //                
        //                document.getElementById("drpcat_0").checked = true;
        //                document.getElementById("drpcat_1").disabled = true;
        //                document.getElementById("drpcat_2").disabled = true;
        //                document.getElementById("drpcat_3").disabled = true;


        //                document.getElementById("RdoClass_2").checked = true;
        //                document.getElementById("RdoClass_0").disabled = true;
        //                document.getElementById("RdoClass_1").disabled = true;

        //                document.getElementById("txtNewCheckEmp").disabled = true;
        //                document.getElementById("txtNewCheckEmp").value = "";
        //                document.getElementById("rdoNewEmpCheck_0").checked = false;
        //                document.getElementById("rdoNewEmpCheck_1").checked = false;
        //                document.getElementById("rdoNewCheckSupervisor_0").checked = false;
        //                document.getElementById("rdoNewCheckSupervisor_1").checked = false;
        //                // document.getElementById("RdoClass_2").disabled = true;

        //            }

        //            if (document.getElementById('pnlDomicile') != null) {

        //                if (document.getElementById("rdodomicile_0").checked == true) {
        //                    document.getElementById("pnlDomicile").disabled = false;
        //                    document.getElementById("txtsolex").disabled = false;
        //                    document.getElementById("txtHomeGuardEx").disabled = false;
        //                    ////            document.getElementById("txtGovExp").disabled = false;      
        //                    document.getElementById("txtgovex").disabled = false;
        //                    document.getElementById("txtNewCheckEmp").disabled = false;

        //                    //                      document.getElementById("txtsolex").style.backgroundColor = "";
        //                    //                      document.getElementById("txtExpNagarSainik").style.backgroundColor = "";

        //                    //            document.getElementById("drpHomegardCity").disabled = false;
        //                    //            document.getElementById("drpHomegardCity").style.backgroundColor = "";

        //                    //            document.getElementById("drocity").disabled = true; 
        //                    //              document.getElementById("drocity").value ="00";  


        //                    //            document.getElementById("txtGovExp").style.backgroundColor = "";                
        //                    //                      document.getElementById("txtgovex").style.backgroundColor = "";

        //                    document.getElementById("drpcat_1").disabled = false;
        //                    document.getElementById("drpcat_2").disabled = false;
        //                    document.getElementById("drpcat_3").disabled = false;
        //                }
        //                else if (document.getElementById("rdodomicile_1").checked == true) {
        //                    document.getElementById("pnlDomicile").disabled = true;
        //                    document.getElementById("txtsolex").disabled = true;
        //                    document.getElementById("txtHomeGuardEx").disabled = true;
        //                    //document.getElementById("txtExpNagarSainik").disabled = true;
        //                    //              document.getElementById("txtGovExp").disabled = true;    
        //                    document.getElementById("txtgovex").disabled = true;

        //                    document.getElementById("drpcat_0").checked = true;
        //                    document.getElementById("drpcat_1").disabled = true;
        //                    document.getElementById("drpcat_2").disabled = true;
        //                    document.getElementById("drpcat_3").disabled = true;
        //                    //document.getElementById("rdoexsol_0").checked = false;
        //                    //document.getElementById("rdoexsol_1").checked = false;
        //                    //                document.getElementById("rdoHandi_0").checked = false;    
        //                    //                document.getElementById("rdoHandi_1").checked = false;  
        //                    //document.getElementById("rdoNagarSainik_0").checked = false;
        //                    //document.getElementById("rdoNagarSainik_1").checked = false;
        //                    //              document.getElementById("drpHomegardCity").disabled = true; 
        //                    //              document.getElementById("drpHomegardCity").value ="00";  
        //                    //document.getElementById("drpHomegardCity").style.backgroundColor = "Grey";  

        //                    //               document.getElementById("drocity").disabled = false;
        //                    //            document.getElementById("drocity").style.backgroundColor = "";

        //                    //              document.getElementById("rdoemp_0").checked = false;    
        //                    //              document.getElementById("rdoemp_1").checked = false;    
        //                    //              document.getElementById("rdoinform_0").checked = false;    
        //                    //              document.getElementById("rdoinform_1").checked = false;             
        //                    document.getElementById("rdoexgov_0").checked = false;
        //                    document.getElementById("rdoexgov_1").checked = false;
        //                    document.getElementById("rdodivircee_0").checked = false;
        //                    document.getElementById("rdodivircee_1").checked = false;
        //                    document.getElementById("rdointercast_0").checked = false;
        //                    document.getElementById("rdointercast_1").checked = false;
        //                    document.getElementById("rdofamily_0").checked = false;
        //                    document.getElementById("rdofamily_1").checked = false;
        //                    document.getElementById("rdovikram_0").checked = false;
        //                    document.getElementById("rdovikram_1").checked = false;
        //                    document.getElementById("txtNewCheckEmp").disabled = true;
        //                    document.getElementById("txtNewCheckEmp").value = "";
        //                    document.getElementById("rdoNewEmpCheck_0").checked = false;
        //                    document.getElementById("rdoNewEmpCheck_1").checked = false;
        //                    document.getElementById("rdoNewCheckSupervisor_0").checked = false;
        //                    document.getElementById("rdoNewCheckSupervisor_1").checked = false;
        //                }

        //                OnDomicilePropertiesCheck();

        //            }
        //        }

        function OnDomicileCheckChange() {


            if (document.getElementById("rdodomicile_0").checked == true) {
                document.getElementById("drpcat_0").checked = false;
                document.getElementById("drpcat_1").disabled = false;
                document.getElementById("drpcat_2").disabled = false;
                document.getElementById("drpcat_3").disabled = false;


                document.getElementById("RdoClass_2").checked = false;
                document.getElementById("RdoClass_0").disabled = false;
                document.getElementById("RdoClass_1").disabled = false;
                document.getElementById("RdoClass_2").disabled = false;

            }
            else if (document.getElementById("rdodomicile_1").checked == true) {
                document.getElementById("drpcat_0").checked = true;
                document.getElementById("drpcat_1").disabled = true;
                document.getElementById("drpcat_2").disabled = true;
                document.getElementById("drpcat_3").disabled = true;


                document.getElementById("RdoClass_2").checked = true;
                document.getElementById("RdoClass_0").disabled = true;
                document.getElementById("RdoClass_1").disabled = true;
                // document.getElementById("RdoClass_2").disabled = true;

            }

            if (document.getElementById('pnlDomicile') != null) {

                if (document.getElementById("rdodomicile_0").checked == true) {
                    document.getElementById("pnlDomicile").disabled = false;
                    document.getElementById("txtsolex").disabled = false;
                    //document.getElementById("txtExpNagarSainik").disabled = false;
                    ////            document.getElementById("txtGovExp").disabled = false;      
                    document.getElementById("txtgovex").disabled = false;

                    //                      document.getElementById("txtsolex").style.backgroundColor = "";
                    //                      document.getElementById("txtExpNagarSainik").style.backgroundColor = "";

                    //            document.getElementById("drpHomegardCity").disabled = false;
                    //            document.getElementById("drpHomegardCity").style.backgroundColor = "";

                    //            document.getElementById("drocity").disabled = true; 
                    //              document.getElementById("drocity").value ="00";  


                    //            document.getElementById("txtGovExp").style.backgroundColor = "";                
                    //                      document.getElementById("txtgovex").style.backgroundColor = "";

                    document.getElementById("drpcat_1").disabled = false;
                    document.getElementById("drpcat_2").disabled = false;
                    document.getElementById("drpcat_3").disabled = false;
                }
                else if (document.getElementById("rdodomicile_1").checked == true) {
                    document.getElementById("pnlDomicile").disabled = true;
                    document.getElementById("txtsolex").disabled = true;
                    //document.getElementById("txtExpNagarSainik").disabled = true;
                    //              document.getElementById("txtGovExp").disabled = true;    
                    document.getElementById("txtgovex").disabled = true;

                    document.getElementById("drpcat_0").checked = true;
                    document.getElementById("drpcat_1").disabled = true;
                    document.getElementById("drpcat_2").disabled = true;
                    document.getElementById("drpcat_3").disabled = true;
                    //document.getElementById("rdoexsol_0").checked = false;
                    //document.getElementById("rdoexsol_1").checked = false;
                    //                document.getElementById("rdoHandi_0").checked = false;    
                    //                document.getElementById("rdoHandi_1").checked = false;  
                    //document.getElementById("rdoNagarSainik_0").checked = false;
                    //document.getElementById("rdoNagarSainik_1").checked = false;
                    //              document.getElementById("drpHomegardCity").disabled = true; 
                    //              document.getElementById("drpHomegardCity").value ="00";  
                    //document.getElementById("drpHomegardCity").style.backgroundColor = "Grey";  

                    //               document.getElementById("drocity").disabled = false;
                    //            document.getElementById("drocity").style.backgroundColor = "";

                    //              document.getElementById("rdoemp_0").checked = false;    
                    //              document.getElementById("rdoemp_1").checked = false;    
                    //              document.getElementById("rdoinform_0").checked = false;    
                    //              document.getElementById("rdoinform_1").checked = false;             
                    document.getElementById("rdoexgov_0").checked = false;
                    document.getElementById("rdoexgov_1").checked = false;
                    document.getElementById("rdodivircee_0").checked = false;
                    document.getElementById("rdodivircee_1").checked = false;
                    document.getElementById("rdointercast_0").checked = false;
                    document.getElementById("rdointercast_1").checked = false;
                    document.getElementById("rdofamily_0").checked = false;
                    document.getElementById("rdofamily_1").checked = false;
                    document.getElementById("rdovikram_0").checked = false;
                    document.getElementById("rdovikram_1").checked = false;
                }

                OnDomicilePropertiesCheck();

            }
        }

        //        function OnDomicilePropertiesCheck() {
        //            if (document.getElementById('pnlDomicile') != null) {

        //                if (document.getElementById("RdoClass_0").checked == true) {
        //                    document.getElementById("txtsolex").disabled = false;
        //                    //  document.getElementById("txtsolex").style.backgroundColor = "";
        //                }
        //                else if (document.getElementById("RdoClass_1").checked == true || document.getElementById("RdoClass_2").checked == true) {
        //                    document.getElementById("txtsolex").disabled = true;
        //                    document.getElementById("txtsolex").value = "";
        //                    //document.getElementById("txtsolex").innerText = "";
        //                    // document.getElementById("txtsolex").style.backgroundColor = "Grey";
        //                }

        //                if (document.getElementById("rdoNagarSainik_0").checked == true) {
        //                    document.getElementById("txtExpNagarSainik").disabled = false;
        //                    //  document.getElementById("txtsolex").style.backgroundColor = "";
        //                }
        //                else if (document.getElementById("rdoNagarSainik_1").checked == true) {
        //                    document.getElementById("txtExpNagarSainik").disabled = true;
        //                    document.getElementById("txtExpNagarSainik").value = "";
        //                    //document.getElementById("txtsolex").innerText = "";
        //                    // document.getElementById("txtsolex").style.backgroundColor = "Grey";
        //                }
        //                if (document.getElementById("rdoCad_0").checked == true) {

        //                    document.getElementById("txtCadex").disabled = false;
        //                    //document.getElementById("txtCadextxtsolex").style.backgroundColor = "";
        //                }
        //                else if (document.getElementById("rdoCad_1").checked == true) {
        //                    document.getElementById("txtCadex").disabled = true;
        //                    document.getElementById("txtCadex").value = "";
        //                    //document.getElementById("txtCadex").innerText = "";
        //                    // document.getElementById("txtsolex").style.backgroundColor = "Grey";
        //                }
        //                if (document.getElementById("rdoemp_0").checked == true) {
        //                    document.getElementById("txtGovExp").disabled = false;
        //                    //document.getElementById("txtGovExp").style.backgroundColor = "";
        //                    document.getElementById("rdoinform").disabled = false;
        //                }
        //                else if (document.getElementById("rdoemp_1").checked == true) {
        //                    document.getElementById("txtGovExp").disabled = true;
        //                    document.getElementById("txtGovExp").value = "";
        //                    //                    document.getElementById("txtGovExp").innerText = "";
        //                    //                    // document.getElementById("txtGovExp").style.backgroundColor = "Grey";
        //                    document.getElementById("rdoinform").disabled = true;
        //                    document.getElementById("rdoinform_0").checked = false;
        //                    document.getElementById("rdoinform_1").checked = false;
        //                }

        //                if (document.getElementById("rdoexgov_0").checked == true) {
        //                    document.getElementById("txtgovex").disabled = false;
        //                    // document.getElementById("txtgovex").style.backgroundColor = "";
        //                }
        //                else if (document.getElementById("rdoexgov_1").checked == true) {
        //                    document.getElementById("txtgovex").disabled = true;
        //                    document.getElementById("txtgovex").value = "";
        //                    //document.getElementById("txtgovex").innerText = "";
        //                    // document.getElementById("txtgovex").style.backgroundColor = "Grey";
        //                }

        //                if (document.getElementById("rdoNewEmpCheck_0").checked == true) {
        //                    document.getElementById("txtNewCheckEmp").disabled = false;
        //                    document.getElementById("rdoNewCheckSupervisor").disabled = false;
        //                }
        //                else if (document.getElementById("rdoNewEmpCheck_1").checked == true) {
        //                    document.getElementById("txtNewCheckEmp").disabled = true;
        //                    document.getElementById("rdoNewCheckSupervisor_0").checked = false;
        //                    document.getElementById("rdoNewCheckSupervisor_1").checked = false;
        //                    document.getElementById("rdoNewCheckSupervisor").disabled = true;
        //                    document.getElementById("txtNewCheckEmp").value = "";
        //                    //document.getElementById("txtNewCheckEmp").innerText = "";
        //                }
        //            } // Else Null

        //        }


        function OnDomicilePropertiesCheck() {
            if (document.getElementById('pnlDomicile') != null) {
                if (document.getElementById("RdoClass_0").checked == true) {
                    document.getElementById("txtsolex").disabled = false;
                    //  document.getElementById("txtsolex").style.backgroundColor = "";
                }
                else if (document.getElementById("RdoClass_1").checked == true || document.getElementById("RdoClass_2").checked == true) {
                    document.getElementById("txtsolex").disabled = true;
                    document.getElementById("txtsolex").value = "";
                    //document.getElementById("txtsolex").innerText = "";
                    // document.getElementById("txtsolex").style.backgroundColor = "Grey";
                }




                if (document.getElementById("rdoCad_0").checked == true) {
                    document.getElementById("txtCadex").disabled = false;
                    //document.getElementById("txtCadextxtsolex").style.backgroundColor = "";
                }
                else if (document.getElementById("rdoCad_1").checked == true) {
                    document.getElementById("txtCadex").disabled = true;
                    document.getElementById("txtCadex").value = "";
                    //document.getElementById("txtCadex").innerText = "";
                    // document.getElementById("txtsolex").style.backgroundColor = "Grey";
                }


                if (document.getElementById("rdoemp_0").checked == true) {
                    //document.getElementById("txtGovExp").disabled = false;
                    //document.getElementById("txtGovExp").style.backgroundColor = "";
                    // document.getElementById("rdoinform").disabled = false;
                }
                else if (document.getElementById("rdoemp_1").checked == true) {
                    //document.getElementById("txtGovExp").disabled = true;
                    //document.getElementById("txtGovExp").value = "";
                    //                    document.getElementById("txtGovExp").innerText = "";
                    //                    // document.getElementById("txtGovExp").style.backgroundColor = "Grey";
                    //document.getElementById("rdoinform").disabled = true;
                    //document.getElementById("rdoinform_0").checked = false;
                    //document.getElementById("rdoinform_1").checked = false;
                }

                if (document.getElementById("rdoexgov_0").checked == true) {
                    document.getElementById("txtgovex").disabled = false;
                    // document.getElementById("txtgovex").style.backgroundColor = "";
                }
                else if (document.getElementById("rdoexgov_1").checked == true) {
                    document.getElementById("txtgovex").disabled = true;
                    document.getElementById("txtgovex").value = "";
                    //document.getElementById("txtgovex").innerText = "";
                    // document.getElementById("txtgovex").style.backgroundColor = "Grey";
                }
            } // Else Null

        }


        function onCategorychange() {
            if (document.getElementById("rdodomicile_0").checked == true) {
                document.getElementById("btnContinue").disabled = false;
            }
            else if (document.getElementById("rdodomicile_1").checked == true) {
                document.getElementById("btnContinue").disabled = true;
                alert('You cannot apply because you are not eligible');
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
        function onPostStatus() {

            if (document.getElementById("rdoPost_1").checked == true) {
                document.getElementById("TrLicence").disabled = false;
                document.getElementById("txtLisence").disabled = false;
                //document.getElementById("txtLisence").style.backgroundColor = "";        
            }
            else {
                document.getElementById("TrLicence").disabled = true;
                document.getElementById("txtLisence").disabled = true;
                document.getElementById("txtLisence").value = "";
                document.getElementById("txtLisence").innerText = "";
                //document.getElementById("txtLisence").style.backgroundColor = "Grey";
            }
        }

        function onEligibleStatusChange() {
            if (document.getElementById("rdqualified_0").checked == true) {
                document.getElementById("btnContinue").disabled = false;
                document.getElementById("btncalculate").disabled = false;
                document.getElementById("AddressDocumentControl1_ImageCrop1_btnok").disabled = false;
            }
            else if (document.getElementById("rdqualified_1").checked == true) {
                document.getElementById("btnContinue").disabled = true;
                document.getElementById("btncalculate").disabled = true;
                document.getElementById("AddressDocumentControl1_ImageCrop1_btnok").disabled = true;
                alert('You cannot apply because you do not have minimum educational qualifications');
            }
        }

        function ValidateDataUsingTinyFramework() {

            //Check for the default mandatory fields
            if (CheckMandatoryInput(document.getElementById("txtapplicantlname"), "Last Name") == false) {
                return false;
            }

            if (CheckMandatoryInput(document.getElementById("txtapplicantfname"), "First Name") == false) {
                return false;
            }

            if (document.getElementById("txtapplicantfname").value == document.getElementById("txtapplicantlname").value) {
                alert('Candidate Last Name and First Name should be different');
                return false;
            }

            if (CheckMandatoryInput(document.getElementById("txtfather"), "Father's Name") == false) {
                return false;
            }
            if (CheckMandatoryInput(document.getElementById("txtmother"), "Mother's Name") == false) {
                return false;
            }
            if (CheckMandatoryInput(document.getElementById("txtdob"), "Date of Birth") == false) {
                return false;
            }
            var txtDOB = document.frmMPDRTExamForm.txtdob.value;
            var x = txtDOB.split("/");

            if (x.length != 3) {
                alert("Please input correct Date of birth (dd/mm/yyyy)");
                document.frmMPDRTExamForm.txtdob.focus();
                return false;
            }
            if (IsNumeric(x[0]) == false) {
                alert("Please input correct Date of birth (dd/mm/yyyy)");
                document.frmMPDRTExamForm.txtdob.focus();
                return false;
            }
            if (x[0].length > 2) {
                alert("Please input correct Date of birth (dd/mm/yyyy)");
                document.frmMPDRTExamForm.txtdob.focus();
                return false;
            }
            if (IsNumeric(x[1]) == false) {
                alert("Please input correct Date of birth (dd/mm/yyyy)");
                document.frmMPDRTExamForm.txtdob.focus();
                return false;
            }
            if (x[1].length > 2) {
                alert("Please input correct Date of birth (dd/mm/yyyy)");
                document.frmMPDRTExamForm.txtdob.focus();
                return false;
            }
            if (IsNumeric(x[2]) == false) {
                alert("Please input correct Date of birth (dd/mm/yyyy)");
                document.frmMPDRTExamForm.txtdob.focus();
                return false;
            }
            if (x[2].length != 4) {
                alert("Please input correct Date of birth (dd/mm/yyyy)");
                document.frmMPDRTExamForm.txtdob.focus();
                return false;
            }
            // var x = document.frmMPDRTExamForm.txtdob.value.split("/");



            //            if (document.getElementById('txtdob').value != '') 
            //            {
            //                if (document.getElementById('txtdob').indexOf("/") < 0) 
            //                {
            //                    alert("Enter the valid Date of Birth.");
            //                    return false;
            //                }
            //            }


            //            var valdate = '^(0[1-9]|[12][0-9]|3[01])[/](0[1-9]|1[012])[/](19|20)\d\d$';
            //            if (!ValidateInput(frmMPDRTExamForm.txtdob, valdate, "sdddadddate.", false)) { return false; }


            //check for the rdomarried as it is mandatory
            if (CheckMandatoryRadio("rdomarried", "2", "Married or not") == false) {
                return false
            }

            //check for mandatory fields only when the person is married

            if (document.getElementById("rdomarried_0").checked == true) {
                if (CheckMandatoryInput(document.getElementById("txtmarrdate"), "Date of marriage") == false) {
                    return false;
                }
                var txtDOM = document.frmMPDRTExamForm.txtmarrdate.value;
                var x = txtDOM.split("/");

                if (x.length != 3) {
                    alert("Please input correct Date of marriage (dd/mm/yyyy)");
                    document.frmMPDRTExamForm.txtmarrdate.focus();
                    return false;
                }
                if (IsNumeric(x[0]) == false) {
                    alert("Please input correct Date of marriage (dd/mm/yyyy)");
                    document.frmMPDRTExamForm.txtmarrdate.focus();
                    return false;
                }
                if (x[0].length > 2) {
                    alert("Please input correct Date of marriage (dd/mm/yyyy)");
                    document.frmMPDRTExamForm.txtmarrdate.focus();
                    return false;
                }
                if (IsNumeric(x[1]) == false) {
                    alert("Please input correct Date of marriage (dd/mm/yyyy)");
                    document.frmMPDRTExamForm.txtmarrdate.focus();
                    return false;
                }
                if (x[1].length > 2) {
                    alert("Please input correct Date of marriage (dd/mm/yyyy)");
                    document.frmMPDRTExamForm.txtmarrdate.focus();
                    return false;
                }
                if (IsNumeric(x[2]) == false) {
                    alert("Please input correct Date of marriage (dd/mm/yyyy)");
                    document.frmMPDRTExamForm.txtmarrdate.focus();
                    return false;
                }
                if (x[2].length != 4) {
                    alert("Please input correct Date of marriage (dd/mm/yyyy)");
                    document.frmMPDRTExamForm.txtmarrdate.focus();
                    return false;
                }
                if (CheckMandatoryInput(document.getElementById("txtnoofchild"), "Number of children") == false) {
                    return false;
                }


                if (Number(document.getElementById("txtnoofchild").value) > 0) {
                    if (CheckMandatoryInput(document.getElementById("txtdoblastchild"), "Date of Birth of last child") == false) {
                        return false;
                    }
                    var txtDOBl = document.frmMPDRTExamForm.txtdoblastchild.value;
                    var x = txtDOBl.split("/");

                    if (x.length != 3) {
                        alert("Please input correct Date of Birth of last child (dd/mm/yyyy)");
                        document.frmMPDRTExamForm.txtdoblastchild.focus();
                        return false;
                    }
                    if (IsNumeric(x[0]) == false) {
                        alert("Please input correct Date of Birth of last child (dd/mm/yyyy)");
                        document.frmMPDRTExamForm.txtdoblastchild.focus();
                        return false;
                    }
                    if (x[0].length > 2) {
                        alert("Please input correct Date of Birth of last child (dd/mm/yyyy)");
                        document.frmMPDRTExamForm.txtdoblastchild.focus();
                        return false;
                    }
                    if (IsNumeric(x[1]) == false) {
                        alert("Please input correct Date of Birth of last child(dd/mm/yyyy)");
                        document.frmMPDRTExamForm.txtdoblastchild.focus();
                        return false;
                    }
                    if (x[1].length > 2) {
                        alert("Please input correct Date of Birth of last child (dd/mm/yyyy)");
                        document.frmMPDRTExamForm.txtdoblastchild.focus();
                        return false;
                    }
                    if (IsNumeric(x[2]) == false) {
                        alert("Please input correct Date of Birth of last child (dd/mm/yyyy)");
                        document.frmMPDRTExamForm.txtdoblastchild.focus();
                        return false;
                    }
                    if (x[2].length != 4) {
                        alert("Please input correct Date of Birth of last child (dd/mm/yyyy)");
                        document.frmMPDRTExamForm.txtdoblastchild.focus();
                        return false;
                    }
                }

                if (Number(document.getElementById("txtnoofchild").value) > 1) {
                    if (CheckMandatoryRadio("rdoTwin", "2", "Twins or not") == false) {
                        return false
                    }
                }
            }

            if (CheckMandatoryRadio("rdosex", "2", "Gender") == false) {
                return false
            }

            if (CheckMandatoryRadio("rdodomicile", "2", "Domicile or not") == false) {
                return false
            }

            if (CheckMandatoryRadio("drpcat", "4", "Category") == false) {
                return false
            }

            if (CheckMandatoryRadio("RdoClass", "3", "Class") == false) {
                return false
            }


            //Handicapped
            if (document.getElementById("rdodomicile_0").checked == true) {
                if (CheckMandatoryRadio("RdoClass", "3", "Class") == false) {
                    return false
                }
                if (document.getElementById("RdoClass_1").checked == true) {
                    if (document.getElementById("drpHandiT").value == "00") {
                        alert("Please Select Handicapped Type");
                        document.getElementById("drpHandiT").style.color = "Red";
                        return false;
                    }
                    else {
                        document.getElementById("drpHandiT").style.color = "";
                    }
                }
            }

            //Education Status
            if (document.getElementById("ddlQual").value == "00") {
                alert("Please Select Education Status");
                document.getElementById("ddlQual").style.color = "Red";
                return false;
            }
            else {
                document.getElementById("ddlQual").style.color = "";
            }

            //Residence Area
            if (CheckMandatoryRadio("rdoresedencearea", "2", "Residence Area") == false) {
                return false
            }

            if (document.getElementById("rdodomicile_0").checked == true) {
                if (document.getElementById('pnlFormSubmission') != null) {
                    if (DoDimicileValidations() == false) {
                        return false;
                    }
                }
            }

            if (document.getElementById('pnlFormSubmission') != null) {

                // subject and preference validation

                if (CheckMandatoryRadio("rdoSubject", "4", "Please select Subject Option for Second Part of Paper") == false) {
                    return false
                }


                if (trim(document.getElementById("lblPref").innerText) == "") {
                    alert("Please select atleast one post to apply for");
                    return false;
                }

                //Exam City
                if (document.getElementById("drocity").value == "00") {
                    alert("please select exam city");
                    document.getElementById("drocity").style.color = "Red";
                    return false;
                }

                else {
                    document.getElementById("drocity").style.color = "";
                }
                //End

                if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_txtHouse"), "Please Enter Address House No.") == false) {
                    return false;
                }

                if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_txtStreet"), "Please Enter Address Street Name") == false) {
                    return false;
                }

                if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_txtColony"), "Please Enter Address Colony Name") == false) {
                    return false;
                }

                if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_txtCity"), "Please Enter Address Teshil Name") == false) {
                    return false;
                }

                if (document.getElementById("AddressDocumentControl1_ddlState").value == "00") {
                    alert("Please Select Address State");
                    document.getElementById("AddressDocumentControl1_ddlState").style.color = "Red";
                    return false;
                }
                else {
                    document.getElementById("AddressDocumentControl1_ddlState").style.color = "";
                }

                if (document.getElementById("AddressDocumentControl1_ddlDistrict").value == "00") {
                    alert("Please Select Address District");
                    document.getElementById("AddressDocumentControl1_ddlDistrict").style.color = "Red";
                    return false;
                }
                else {
                    document.getElementById("AddressDocumentControl1_ddlDistrict").style.color = "";
                }

                if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_txtPincode"), "Please Enter Address Pincode") == false) {
                    return false;
                }
                var txtPincode = document.frmMPDRTExamForm.AddressDocumentControl1_txtPincode.value;
                if (txtPincode.length < 6 || txtPincode == '000000') {
                    alert('Please Enter Valid Address Pincode')
                    return false;
                }


                /*-------------Candidate Mobile And Email---------------*/
                var MobileNumber = "^[7-9]{1}[0-9]{9}$";
                var Email = "\\S+@\\S+\\.\\S+";

                if (!ValidateInput(frmMPDRTExamForm.AddressDocumentControl1_txtPhone, MobileNumber, "Mobile No.", false)) { return false; }
                if (!ValidateInput(frmMPDRTExamForm.AddressDocumentControl1_txtEmail, Email, "Email Id.", false)) { return false; }


                /*-------------Image Crop Validation--------------*/
                if (document.getElementById('AddressDocumentControl1_ImageCrop1_imgphoto').src.indexOf("PhotoNotFound.png") > 0) {

                    if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_ImageCrop1_FileUpload1"), "Please Upload Scan Document") == false) {
                        document.getElementById("AddressDocumentControl1_ImageCrop1_FileUpload1").style.color = "Red";
                        return false;
                    }
                    else {
                        document.getElementById("AddressDocumentControl1_ImageCrop1_FileUpload1").style.color = "";
                        alert("Please View Images before Submit");
                        document.getElementById("AddressDocumentControl1_ImageCrop1_btnok").style.color = "Red";
                        return false;
                    }
                }
                else {

                    var chk1 = document.getElementById('AddressDocumentControl1_ImageCrop1_chki1');
                    var chk2 = document.getElementById('AddressDocumentControl1_ImageCrop1_chki2');
                    var chk3 = document.getElementById('AddressDocumentControl1_ImageCrop1_chki3');

                    ckhTD1 = document.getElementById('TDchki1');
                    ckhTD2 = document.getElementById('TDchki2');
                    ckhTD3 = document.getElementById('TDchki3');

                    if (chk1.checked == false) { ckhTD1.style.color = "Red"; alert('Do you see your PHOTO proper located and is accurate and clearly visible?'); return false; } else { ckhTD1.style.color = ""; }
                    if (chk2.checked == false) { ckhTD2.style.color = "Red"; alert('Do you see your SIGNATURE impression placed correctly and clearly visible?'); return false; } else { ckhTD2.style.color = ""; }
                    if (chk3.checked == false) { ckhTD3.style.color = "Red"; alert('Do you see your HAND WRITTEN TEXT in the appropriate location and is accurate and clearly visible?'); return false; } else { ckhTD3.style.color = ""; }

                }

                /*-------------Attach Document Validation---------------*/
                if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_FileUBirhCertificate"), "Please Upload Birth Certificate..") == false) {
                    return false;
                }
                if (CheckNonMandatoryUploadInput(document.getElementById("AddressDocumentControl1_FileUBirhCertificate"), "Please Select Only (Jpg) with Birth Certificate.") == false) {
                    return false;
                }

                if (document.getElementById('drpcat_0').checked == false) {
                    if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_FileUCastCertificate"), "Please Upload Cast Certificate..") == false) {
                        return false;
                    }
                    if (CheckNonMandatoryUploadInput(document.getElementById("AddressDocumentControl1_FileUCastCertificate"), "Please Select Only (Jpg) with Cast Certificate.") == false) {
                        return false;
                    }
                }

                /*-------------ID Prrof / Idno / Body Identiity Mark, SPERCIAL CHARECTER VALIDATION ---------------*/
                if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_txtIdentityMark"), "Body Identification Mark") == false) {
                    return false;
                }


                if (document.getElementById("AddressDocumentControl1_ddlIDProof").value == "ID Proof.") {
                    alert("Please Select Identification Certificate.");
                    document.getElementById("AddressDocumentControl1_ddlIDProof").style.color = "Red";
                    return false;
                }
                else {
                    document.getElementById("AddressDocumentControl1_ddlIDProof").style.color = "";
                }


                if (document.frmMPDRTExamForm.AddressDocumentControl1_ddlIDProof.value == "Other") {
                    if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_txtIdCertificate"), "Identity Certificate Name") == false) {
                        return false;
                    }

                    if (!ValidateUseLessText(document.getElementById("AddressDocumentControl1_txtIdCertificate").value, 'Identity Certificate Name.')) {
                        return false;
                    }
                }

                if (CheckMandatoryInput(document.getElementById("AddressDocumentControl1_txtidno"), "ID Proof No") == false) {
                    return false;
                }


                if (!ValidateUseLessText(document.getElementById("AddressDocumentControl1_txtIdentityMark").value, 'Body Identification Mark.')) {
                    return false;
                }

                if (document.getElementById("DeclarationControl1_chkb").checked == false) {
                    alert("Check the declaration before proceeding");
                    document.getElementById('TdTC').style.color = "Red";
                    return false;
                }
                else {
                    document.getElementById("TdTC").style.color = "";
                }

            }
            doMD5(); // FOR CSRF GAURD
            return true;

        }
        function trim(s) {
            var l = 0; var r = s.length - 1;
            while (l < s.length && s[l] == ' ')
            { l++; }
            while (r > l && s[r] == ' ')
            { r -= 1; }
            return s.substring(l, r + 1);
        }
        function DoDimicileValidations() {

            //ex solder  
            if (document.getElementById("RdoClass_0").checked == true) {
                if (CheckMandatoryInput(document.getElementById("txtsolex"), "experience as ex soldier") == false) {
                    return false;
                }

                else {
                    var totMnth = parseInt(document.getElementById("txtsolex").value);

                    if (totMnth < 6 || totMnth > 480) {
                        alert("experience ex soldier should be greater 6 and less then 480 Month");
                        document.getElementById("txtsolex").focus();
                        return false;
                    }
                }
            }
            //end

            //gov emp
            if (CheckMandatoryRadio("rdoemp", "2", "Govt employee or not") == false) {
                return false
            }


            //end

            if (CheckMandatoryRadio("rdoexgov", "2", "Chatni employee or not") == false) {
                return false
            }
            if (document.getElementById("rdoexgov_0").checked == true) {
                if (CheckMandatoryInput(document.getElementById("txtgovex"), "experience ex Chatni employee") == false) {
                    return false;
                }
                else {
                    var totMnth = parseInt(document.getElementById("txtgovex").value);
                    if (totMnth < 6 || totMnth > 480) {
                        alert("experience chatni should be greater 6 and less then 480 Month");
                        document.getElementById("txtgovex").focus();
                        return false;
                    }
                }
            }

            //nss
            if (CheckMandatoryRadio("rdoCad", "2", "NSS or not") == false) {
                return false
            }
            if (document.getElementById("rdoCad_0").checked == true) {
                if (CheckMandatoryInput(document.getElementById("txtCadex"), "Experience of NSS") == false) {
                    return false;
                }

                else {
                    var totMnth = parseInt(document.getElementById("txtCadex").value);
                    if (totMnth < 6 || totMnth > 480) {
                        alert("experience of NSS should be greater 6 and less then 480 Month");
                        document.getElementById("txtCadex").focus();
                        return false;
                    }
                }
            }
            //end nss

            //widow
            if (document.getElementById("rdomarried_0").checked == true) {
                if (document.getElementById("rdosex_1").checked == true) {
                    if (CheckMandatoryRadio("rdodivircee", "2", "Widow/Divorcee/Abandoned or not") == false) {
                        return false
                    }
                }

                // INTERCAST CHANGE ON 23/07/2015

                if (document.getElementById("rdodomicile_0").checked == true) {
                    if (document.getElementById("rdomarried_0").checked == true && document.getElementById("drpcat_0").checked == true) {
                        if (CheckMandatoryRadio("rdointercast", "2", "Inter Caste Marriage") == false) {
                            return false
                        }
                    }
                }
                //END


                if (CheckMandatoryRadio("rdofamily", "2", "Green card or not") == false) {
                    return false
                }


            }

            if (CheckMandatoryRadio("rdovikram", "2", "Vikram award or not") == false) {
                return false
            }
            return true;
        }

        function onexsol() {
            //document.getElementById("rdoNagarSainik_1").checked = true;
            document.getElementById("rdoemp_1").checked = true;
            document.getElementById("rdoexgov_1").checked = true;
            document.getElementById("rdoCad_1").checked = true;
            //document.getElementById("rdoDivert_1").checked = true;
            OnDomicilePropertiesCheck();
        }

        function onemp() {

            // document.getElementById("rdoexsol_1").checked = true;
            // document.getElementById("rdoNagarSainik_1").checked = true;
            document.getElementById("rdoCad_1").checked = true;
            document.getElementById("rdoexgov_1").checked = true;
            // document.getElementById("rdoDivert_1").checked = true;
            OnDomicilePropertiesCheck();

        }

        function onswarnkar() {
            //document.getElementById("rdoexsol_1").checked = true;
            document.getElementById("rdoemp_1").checked = true;
            // document.getElementById("rdoNagarSainik_1").checked = true;
            document.getElementById("rdoCad_1").checked = true;
            document.getElementById("rdoexgov_1").checked = true;
            OnDomicilePropertiesCheck();


        }

        function onnagar() {
            // document.getElementById("rdoexsol_1").checked = true;
            document.getElementById("rdoCad_1").checked = true;
            document.getElementById("rdoemp_1").checked = true;
            document.getElementById("rdoexgov_1").checked = true;
            //document.getElementById("rdoDivert_1").checked = true;

            OnDomicilePropertiesCheck();
        }

        function onCad() {
            //document.getElementById("rdoexsol_1").checked = true;
            document.getElementById("rdoexgov_1").checked = true;
            document.getElementById("rdoemp_1").checked = true;
            //document.getElementById("rdoDivert_1").checked = true;
            // document.getElementById("rdoNagarSainik_1").checked = true;
            OnDomicilePropertiesCheck();
        }
        function onchatni() {

            //document.getElementById("rdoexsol_1").checked = true;
            //document.getElementById("rdoNagarSainik_1").checked = true;
            document.getElementById("rdoemp_1").checked = true;
            document.getElementById("rdoCad_1").checked = true;
            //document.getElementById("rdoDivert_1").checked = true;
            OnDomicilePropertiesCheck();
        }

        function ur_eligalblevalidatejs() {
            if (document.getElementById("rdodomicile_0").checked == true) {
                if (document.getElementById('pnlDomicile') != null) {
                    if (DoDimicileValidations() == false) {
                        return false;
                    }
                }
            }

            if (CheckMandatoryRadio("rdoSubject", "4", "Please select Subject Option for Second Part of Paper") == false) {
                return false
            }
        }


        function onhandicchange() {

            if (document.getElementById("RdoClass_1").checked == true) {
                document.getElementById("drpHandiT").disabled = false;
                document.getElementById('ManHandicappedType').innerHTML = '<span style="color: #ff0000">*</span> ';
            }
            else if (document.getElementById("RdoClass_0").checked == true) {
                document.getElementById("drpHandiT").disabled = true;
                document.getElementById("drpHandiT").value = "00";
                document.getElementById('ManHandicappedType').innerHTML = '';
            }
            else if (document.getElementById("RdoClass_2").checked == true) {
                document.getElementById("drpHandiT").disabled = true;
                document.getElementById("drpHandiT").value = "00";
                document.getElementById('ManHandicappedType').innerHTML = '';
            }
            else {
                document.getElementById("drpHandiT").disabled = true;
                document.getElementById("drpHandiT").value = "00";
                document.getElementById('ManHandicappedType').innerHTML = '';
            }

        }

        function MPCDF() {

            if (document.getElementById("rdoNewEmpCheck_0").checked == true) {
                document.getElementById("rdoNewCheckSupervisor_0").disabled = false;
                document.getElementById("rdoNewCheckSupervisor_1").disabled = false;
                document.getElementById("rdoNewCheckSupervisor_1").checked = false;
            }
            else {
                document.getElementById("rdoNewCheckSupervisor_0").disabled = true;
                document.getElementById("rdoNewCheckSupervisor_1").disabled = true;


            }

        }
    </script>
    <style type="text/css">
        .vred
        {
            background: url('dot2.jpg') center no-repeat;
            color: white;
            text-align: center; /*background-color:green;*/
        }
        
        .vgray
        {
            background-color: none;
            color: black;
        }
        
        .visiTrue
        {
            display: block;
        }
        
        .visiFalse
        {
            display: none;
        }
        .btn
        {
        }
    </style>
    <link href="/Portal/Crop/js/style.css" rel="stylesheet" />
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
        function ValidateFile_Formats(File, isOptional, AllowedFormats, Message) {

            if (File == null) { return true; }
            // alert( File.value);
            if ((File.value.length != 0)) {
                var fileName = File.value;
                var Ext = fileName.substr(fileName.lastIndexOf("."), fileName.length - fileName.lastIndexOf
                    (".")).toLowerCase();
                if (Ext == null) { return true; }
                //alert(Ext);
                var validFormat = false;
                var tempI = 0;
                for (tempI = 0; tempI < AllowedFormats.length; tempI++) {
                    if (AllowedFormats[tempI].toLowerCase() == Ext) { validFormat = true; }
                }

                if (!validFormat) {
                    alert(Message);
                    File.focus();
                    return false;

                }
            }

            else {
                if (!isOptional) {
                    alert("Kindly enclose " + Message);
                    File.focus();
                    return false;
                }
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
        function ReValidateAge() {
            var field = frmMPDRTExamForm.txtdob;
            var locDay = "";
            var locMonth = "";
            var locYear = "";
            var ErrMsg = "";
            var fieldValue = field.value;

            if (fieldValue == "") {
                // WriteLabel(field,"true","Please Enter Dob");
            }

            else {
                WriteLabel(field, "false", "");
            }

            if (document.getElementById('txtdob').value != '') {
                if (fieldValue.indexOf("/") < 0) {
                    ErrMsg = "Enter the valid Date of Birth.";
                    WriteLabel(field, "true", ErrMsg);
                }
                else {
                    WriteLabel(field, "false", "");
                }

                ValidateAge();
            }
        }

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



        function FunChkTwins() {

            if (document.getElementById('txtnoofchild').value < 2) {
                document.getElementById("rdoTwin_0").checked = false;
                document.getElementById("rdoTwin_1").checked = false;
                document.getElementById("rdoTwin_0").disabled = true;
                document.getElementById("rdoTwin_1").disabled = true;
                if (document.getElementById('txtnoofchild').value < 1) {
                    document.getElementById('txtdoblastchild').disabled = true;
                    document.getElementById('txtdoblastchild').value = '';
                }
                else {
                    document.getElementById('txtdoblastchild').disabled = false;
                }
            }

            else {
                document.getElementById('txtdoblastchild').disabled = false;
                document.getElementById("rdoTwin_0").disabled = false;
                document.getElementById("rdoTwin_1").disabled = false;
            }
        }
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
    <script src="/Portal/headers/MPOnlineHeader/md5.js" type="text/javascript"> </script>
    <script type="text/javascript">
        function doMD5() {

            message = MD5('LoginID');
            //$('#hdKIOSKID').val(message);
            document.getElementById("hdKIOSKID").value = message;
            return true;
        }
    </script>
    <script language="javascript" type="text/javascript">
        function funcValidate() {
            var appno = document.frmMPDRTExamForm.txtApplicationNo;
            var dob = document.frmMPDRTExamForm.txtDobEdt;
            var transid = document.frmMPDRTExamForm.txttransid;

            if (appno.value == "") {
                alert("Please Enter Application No.");
                appno.focus();
                return false;
            }

            if (appno.value.length < 8) {
                alert("Please Enter Correct Application No.");
                appno.focus();
                return false;
            }
            if (transid.value == "") {
                alert("Please Enter Transaction Id");
                transid.focus();
                return false;
            }
            if (transid.value.length < 20) {
                alert("Please Enter Correct Transaction Id");
                transid.focus();
                return false;
            }
            if (dob.value == "") {
                alert("Please Enter Date of Birth");
                dob.focus();
                return false;
            }

            if (dob.value.length < 10) {
                alert("Please Enter Correct Date of Birth");
                dob.focus();
                return false;
            }

            return true;
        }

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
<body onclick="if(document.getElementById('txtdob').value!=''){calage(document.getElementById('txtdob').value);}">
    <center>
        <noscript style="color: Red; font-size: large; font-weight: bold;">
            <b>THIS SITE NEEDS JAVASCRIPT</b>
        </noscript>
    </center>
    <form name="frmMPDRTExamForm" method="post" action="./frmEntryForm.aspx" id="frmMPDRTExamForm" class="Ignore" style="margin-top: 3px;">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE1MjU4MTc3OTUPFgIeBmhhc2hlcgUHTG9naW5JRBYCAgMPZBYGAgcPZBYIAiMPEA8WBh4ORGF0YVZhbHVlRmllbGQFC29wdGlvbl9jb2RlHg1EYXRhVGV4dEZpZWxkBQtvcHRpb25fZGVzYx4LXyFEYXRhQm91bmRnZBAVBCDgpIXgpKjgpL7gpLDgpJXgpY3gpLfgpL/gpKQgKFVSKSrgpIXgpKjgpYHgpLjgpYLgpJrgpL/gpKQg4KSc4KS+4KSk4KS/IChTQykw4KSF4KSo4KWB4KS44KWC4KSa4KS/4KSkIOCknOCkqOCknOCkvuCkpOCkvyAoU1QpZOCkheCkqOCljeCkryDgpKrgpL/gpJvgpZzgpL4g4KS14KSw4KWN4KSXICjgpJXgpY3gpLDgpYDgpK7gpLLgpYfgpK/gpLAg4KSV4KWLIOCkm+Cli+ClnOCkleCksCkgKE9CQykVBAExATIBMwE0FCsDBGdnZ2dkZAIpDxAPFgYfAQULb3B0aW9uX2NvZGUfAgULb3B0aW9uX2Rlc2MfA2dkEBUECi0tU2VsZWN0LS0i4KSF4KS44KWN4KSl4KS/4KSs4KS+4KSn4KS/4KSkKE9IKSXgpKbgpYPgpLfgpY3gpJ/gpL/gpKzgpL7gpKfgpL/gpKQoVkgpIuCktuCljeCksOCkteCko+CkrOCkvuCkp+Ckv+CkpChFSCkVBAIwMAJPSAJWSAJFSBQrAwRnZ2dnZGQCKw8QDxYGHwEFC29wdGlvbl9jb2RlHwIFC29wdGlvbl9kZXNjHwNnZBAVBwotLVNlbGVjdC0tJ+Ckh+CkguCknOClgOCkqOCkv+Ckr+CksOCkv+CkguCklyAoRU5HKULgpIfgpILgpJzgpYDgpKjgpL/gpK/gpLDgpL/gpILgpJcg4KSh4KS/4KSq4KWN4KSy4KWL4KSu4KS+IChFTkdEUCkd4KSh4KWJ4KSV4KWN4KSf4KSw4KWH4KSfKFBIRCkW4KS44KWN4KSo4KS+4KSk4KSVKFVHKSXgpLjgpY3gpKjgpL7gpKTgpJXgpYvgpKTgpY3gpKTgpLAoUEcpK+CkueCkvuCkr+CksCDgpLjgpYfgpJXgpYfgpILgpKHgpLDgpYAoSFNTQykVBwIwMANFTkcERU5HRANQSEQCVUcCUEcESFNTQxQrAwdnZ2dnZ2dnZGQCLQ8QDxYGHwEFC29wdGlvbl9jb2RlHwIFC29wdGlvbl9kZXNjHwNnZBAVAhzgpJfgpY3gpLDgpL7gpK7gpYDgpKMoUlVSQUwpFOCktuCkueCksOClgCAoVVJCQU4pFQIBUgFVFCsDAmdnZGQCCQ8PFgIeB1Zpc2libGVoZBYCAgEPZBYCAg8PEGRkFgBkAgsPDxYCHwRoZBYIAgEPZBYOAgMPEGRkFgBkAgUPEGRkFgBkAgkPEGRkFgBkAgsPEGRkFgBkAg0PEGRkFgBkAg8PEGRkFgBkAhEPEGRkFgBkAgMPEGRkFgBkAgkPZBYCZg9kFgICFw9kFgICAg9kFgICAQ8QDxYGHwEFDGNpdHlfY29kZV9lbh8CBQljaXR5X25hbWUfA2dkEBUTBlNlbGVjdAhCQUxBR0hBVAZCSE9QQUwKQ0hIQVRBUlBVUgpDSEhJTkRXQVJBB0dXQUxJT1IGSU5ET1JFCEpBQkFMUFVSB0tIQU5EV0EIS0hBUkdPTkUITUFORFNBVVIGTU9SRU5BBlJBSVNFTgZSQVRMQU0EUkVXQQVTQUdBUgVTQVROQQVTSURISQZVSkpBSU4VEwIwMANCTEcDQkhQA0NIVANDSEQDR1dMA0lORANKQlADS0hEA0tSRwNNTkQDTU9SA1JTTgNSQVQDUkVXA1NBRwNTQVQDU0lEA1VKShQrAxNnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnFgFmZAILD2QWEgIBD2QWAmYPZBYYAgEPDxYCHgRUZXh0BQMyNC5kZAIDDw8WAh8FBQMyNC5kZAIHDw8WAh8FBQMyNC5kZAILDw8WAh8FBQMyNC5kZAIPDw8WAh8FBQMyNC5kZAITDw8WAh8FBQMyNC5kZAIVDxAPFgYfAgUNU3RhdGVfTmFtZV9Fbh8BBQpTdGF0ZV9Db2RlHwNnZBAVIwotLVNlbGVjdC0tEUFSVU5BQ0hBTCBQUkFERVNIBUFTU0FNG0FOREFNQU4gQU5EIE5JQ09CQVIgSVNMQU5EUw5BTkRIUkEgUFJBREVTSAVCSUhBUgxDSEhBVFRJU0dBUkgKQ0hBTkRJR0FSSA1EQU1BTiBBTkQgRElVBURFTEhJFkRBRFJBIEFORCBOQUdBUiBIQVZFTEkDR09BB0dVSkFSQVQHSEFSWUFOQRBISU1BQ0hBTCBQUkFERVNICUpIQVJLSEFORA9KQU1NVSAmIEtBU0hNSVIJS0FSTkFUQUtBBktFUkFMQQtMQUtTSEFEV0VFUAlNRUdIQUxBWUEHTUFOSVBVUg5NQURIWUEgUFJBREVTSAtNQUhBUkFTSFRSQQhOQUdBTEFORAZPUklTU0EGUFVOSkFCC1BPTkRJQ0hFUlJZCVJBSkFTVEhBTgZTSUtLSU0HVFJJUFVSQQpUQU1JTCBOQURVC1VUVEFSQUtIQU5EDVVUVEFSIFBSQURFU0gLV0VTVCBCRU5HQUwVIwIwMAJBTAJBTQJBTgJBUAJCUgJDRwJDSAJERAJETAJETgJHTwJHVAJIQQJIUAJKSAJKSwJLSwJLTAJMRAJNRwJNTgJNUAJNUgJOTAJPUgJQQgJQWQJSSgJTTQJUQQJUTgJVSwJVUAJXQhQrAyNnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZxYBZmQCFw8PFgIfBQUDMjQuZGQCGQ8QZBAVAQotLVNlbGVjdC0tFQECMDAUKwMBZxYBZmQCGw8PFgIfBQUDMjQuZGQCHw8PFgIfBQUDMjUuZGQCJw8PFgIfBQUDMjUuZGQCAw9kFg4CCQ8PFgIeCEltYWdlVXJsBTsvUG9ydGFsL0NsaWVudFNpZGVEb2N1bWVudENyb3AvQ3JvcEltYWdlcy9QaG90b05vdEZvdW5kLnBuZ2RkAg0PDxYCHwYFOi9Qb3J0YWwvQ2xpZW50U2lkZURvY3VtZW50Q3JvcC9Dcm9wSW1hZ2VzL1NpZ25Ob3RGb3VuZC5wbmdkZAIRDw8WAh8GBTovUG9ydGFsL0NsaWVudFNpZGVEb2N1bWVudENyb3AvQ3JvcEltYWdlcy9IYW5kTm90Rm91bmQucG5nZGQCFQ8WAh4FVmFsdWUFJDIxMjMyMThjLTMzNWEtNGI5Yy1hOTE3LThhMGUyNTFiYWMyZWQCFw8WAh8HBSRlNzNjYzgxYS04ZGQzLTRmZTItYWMyNy0xMTljNjJmZGZjMjlkAhkPFgIfBwUkMGQ0MDFhZTUtYzYxYi00MWI3LWFhNDYtZDU5MGE3ZWJjY2FlZAIbDxYCHwcFJDRlYjIzNjVjLTcxNGQtNGYzYS04N2FiLWEyZTQ1NWZmM2UxYmQCBQ8PFgIfBQUDMjYuZGQCCQ8PFgIfBQUDMjcuZGQCDQ8PFgIfBQUDMjguZGQCEQ8PFgIfBQUDMjkuZGQCEw9kFgJmD2QWAgIBDxBkZBYBZmQCFQ8PFgIfBQUDMzAuZGQCGQ8PFgIfBQUDMzEuZGRkCcThfoukGjUnlG+stOfU7HJ+YorxXFDKj0yjcuV0siI=" />
</div>

<script type="text/javascript">
    //<![CDATA[
    var theForm = document.forms['frmMPDRTExamForm'];
    if (!theForm) {
        theForm = document.frmMPDRTExamForm;
    }
    function __doPostBack(eventTarget, eventArgument) {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.__EVENTTARGET.value = eventTarget;
            theForm.__EVENTARGUMENT.value = eventArgument;
            theForm.submit();
        }
    }
    //]]>
</script>


<script src="/Portal/WebResource.axd?d=YBSBCGvWL7zvJH6x9eeuylHpP1Poo-UmuStJmjXCZe-HzOznUqMCRClctkY6gqTWd1lV4VOJYYKJ8wfVSbJHN3S2UjxVjxEXb8jfn2OIBCQ1&amp;t=635803002500000000" type="text/javascript"></script>


<script src="/Portal/ScriptResource.axd?d=bmVqyAC5wnHWzAdhI9DIXyIh2MwTLBIzbOO1BvyqLlCOvqE2eW2fSlsjJxZkZLdaUci0_VE6RvXIIWZ6GbndlY8vpJFSo7imX4yXcDfNXySWV42XOrRaBeS_alZJkMSfysUjcwNI8lft3prQ42VZUVRACoRuKf3cbBwMANrrwZ9-_YM1IqmYyB-lUHQ9fYF50&amp;t=5f9d5645" type="text/javascript"></script>
<script type="text/javascript">
    //<![CDATA[
    if (typeof (Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
    //]]>
</script>

<script src="/Portal/ScriptResource.axd?d=0jhNDvhsMpeEzjUALDj8aSLTKCBDf-eIBY0z1OFmu0XJUaLVWwpU-GTVMcWyHiS6eLGUk1qnBEVlyWUHoSaQ4li8zD-37Ul14z2ZSXMjo_bGCSKk1Yb02tWlX-RNMztJ5Nf46S2aQPB2taC7He5PWqSOKT0m6JJ_lryPaq2f87Vdv-OFsqy76T6pUQGpkxSK0&amp;t=5f9d5645" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="DCEA8602" />
</div>
    <input name="lblAge1" type="hidden" id="lblAge1" style="width: 84px" />
    <input name="lblAge" type="hidden" id="lblAge" style="width: 84px" />
    <script type="text/javascript">
        //<![CDATA[
        Sys.WebForms.PageRequestManager._initialize('ScriptManager1', 'frmMPDRTExamForm', [], [], [], 90, '');
        //]]>
</script>

    <div class="container">
        <div class="inner_content ">
            <div class="heading">
            मध्यप्रदेश शासन के अंतर्गत विभिन्न विभागों/कार्यालयों में<br />
                उपयंत्री - (सिविल/विद्युत/यांत्रिकी) एवं मानचित्रकार के रिक्त पदों की पूर्ति हेतु
                भर्ती परीक्षा-2016
            </div>
            <div align="left" style="padding: 5px">
                <b style="color: Red;">अतिमहत्वपूर्ण:-</b>
                <ol>
                    <li>कृपया नियमपुस्तिका के नियमों का पूर्ण अध्ययन करने के उपरांत ही आवेदन-पत्र भरें।
                    </li>
                    <li>कृपया नियमपुस्तिका के नियमों का पूर्ण अध्ययन करने के उपरांत ही आवेदन-पत्र भरें।
                        कृपया बोर्ड की वेबसाइट www.vyapam.nic.in का अवलोकन करे। </li>
                    <li>संशोधन की अंतिम तिथि पश्चात् व्यापम द्वारा कोई संशोधन नहीं किया जायेगा। </li>
                </ol>
            </div>
            <div align="right">
                <font style="color: Red">*</font>फील्ड अनिवार्य है, कृपया आवेदन पत्र अंग्रेजी मे
                ही भरे!
            </div>
            <div id="pnlMain">
	
                <table class="Hrftable">
                    <tr>
                        <th colspan="6">
                            व्यक्तिगत विवरण
                        </th>
                    </tr>
                    <tr>
                        <td>
                            1.<span style="color: #ff0000">*</span>
                        </td>
                        <td>
                            आवेदक का उपनाम (सरनेम)<br />
                            <span class="span">(सरनेम ना होने की स्थिति में NA लिखे)</span>
                        </td>
                        <td>
                            <input name="txtapplicantlname" type="text" maxlength="30" id="txtapplicantlname" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Last Name&#39;,&#39;T&#39;,&#39;Name&#39;);}" onkeypress="return CreateCAPSStringTextBox(this,event)" style="width:200px;" />
                        </td>
                        <td>
                            2.<span style="color: #ff0000">*</span>
                        </td>
                        <td>
                            आवेदक का प्रथम नाम
                            <br />
                            <span class="span">(श्री /श्रीमति /कुमारी न लिखे)</span>
                        </td>
                        <td>
                            <input name="txtapplicantfname" type="text" maxlength="30" id="txtapplicantfname" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;First Name&#39;,&#39;T&#39;,&#39;Name&#39;);}" onkeypress="return CreateCAPSStringTextBox(this,event)" style="width:200px;" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            3.<span style="color: #ff0000">*</span>
                        </td>
                        <td>
                            पिता/पति का नाम <span class="span">(श्री न लिखे)</span>
                        </td>
                        <td>
                            <input name="txtfather" type="text" maxlength="30" id="txtfather" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Father Name&#39;,&#39;T&#39;,&#39;Name&#39;);}" onkeypress="return CreateCAPSStringTextBox(this,event)" style="width:200px;" />
                        </td>
                        <td>
                            4.<span style="color: #ff0000">*</span>
                        </td>
                        <td>
                            माता का नाम <span class="span">(श्रीमति न लिखे)</span>
                        </td>
                        <td>
                            <input name="txtmother" type="text" maxlength="30" id="txtmother" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Mother Name&#39;,&#39;T&#39;,&#39;Name&#39;);}" onkeypress="return CreateCAPSStringTextBox(this,event)" style="width:200px;" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            5.<span style="color: #ff0000">*</span>
                        </td>
                        <td>
                            जन्म तिथि <span class="span" style="color: Green">(dd/mm/yyyy)</span>
                            <br />
                            <span class="span">(नियमपुस्तिका के नियम क्रं. 10(3) एवं 3.6)</span>
                            
                        </td>
                        <td>
                            <input name="txtdob" type="text" maxlength="10" id="txtdob" onblur="calAge();" onfocusout="calAge();" onkeypress="return CreateDateTextBox(this,event,false)" onkeyup="calAge();" style="width:200px;" />
                        </td>
                        <td colspan="2">
                            दिनांक<span id="lblAgeAbkari0"> 01.01.2016 को आयु : </span>
                        </td>
                        <td>
                            <span id="txtAge"></span>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="middle">
                            6(a).<span style="color: #ff0000">*</span>
                        </td>
                        <td align="left" valign="middle">
                            क्या आप विवाहित हैं
                        </td>
                        <td>
                            <table id="rdomarried" border="0">
		<tr>
			<td><input id="rdomarried_0" type="radio" name="rdomarried" value="Y" onclick="MarriedStatusCheckChange();;" /><label for="rdomarried_0">हाँ</label></td><td><input id="rdomarried_1" type="radio" name="rdomarried" value="N" onclick="    MarriedStatusCheckChange();;" /><label for="rdomarried_1">नहीं</label></td>
		</tr>
	</table>
                        </td>
                        <td>
                            6(b).
                            <label id="ManMarriedDate">
                            </label>
                        </td>
                        <td>
                            यदि हां तो विवाह की तिथि <span class="span" style="color: Green">(dd/mm/yyyy)</span>
                        </td>
                        <td>
                            <input name="txtmarrdate" type="text" maxlength="10" id="txtmarrdate" onkeypress="return CreateDateTextBox(this,event,false)" style="width:200px;" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            6(c).<label id="ManNoOfChild"></label>
                        </td>
                        <td>
                            जीवित बच्चों की संख्या
                        </td>
                        <td>
                            <input name="txtnoofchild" type="text" maxlength="1" id="txtnoofchild" onkeypress="return CreateNumericTextBox(this,event,false)" onfocusout="validationnew(this,&#39;No of. Child&#39;,&#39;T&#39;,&#39;Numeric&#39;);" onblur="FunChkTwins()" style="width:50px;" />
                        </td>
                        <td>
                            6(d).
                        </td>
                        <td>
                            अंतिम बच्चे की जन्म तिथि <span class="span" style="color: Green">(dd/mm/yyyy)</span>
                        </td>
                        <td>
                            <input name="txtdoblastchild" type="text" maxlength="10" id="txtdoblastchild" onkeypress="return CreateDateTextBox(this,event,false)" style="width:200px;" />
                            <input type="hidden" name="hdnChildDate" id="hdnChildDate" value="25/01/2001" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            6(e).
                        </td>
                        <td>
                            क्या अंतिम बच्चे जुड़वा है?<span id="Span3"></span>
                        </td>
                        <td>
                            <table id="rdoTwin" border="0">
		<tr>
			<td><input id="rdoTwin_0" type="radio" name="rdoTwin" value="Y" /><label for="rdoTwin_0">हाँ</label></td><td><input id="rdoTwin_1" type="radio" name="rdoTwin" value="N" /><label for="rdoTwin_1">नहीं</label></td>
		</tr>
	</table>
                        </td>
                        <td>
                            7.<span style="color: #ff0000">*</span>
                        </td>
                        <td>
                            <span id="lbloTwinAbkari">लिंग</span>
                        </td>
                        <td>
                            <table id="rdosex" border="0" style="font-size:Small;">
		<tr>
			<td><input id="rdosex_0" type="radio" name="rdosex" value="M" onclick="onsexchange();" /><label for="rdosex_0">पुरूष</label></td><td><input id="rdosex_1" type="radio" name="rdosex" value="F" onclick="    onsexchange();" /><label for="rdosex_1">महिला</label></td>
		</tr>
	</table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            8.<span style="color: #ff0000">*</span>
                        </td>
                        <td>
                            क्या आप मध्यप्रदेश के मूल निवासी हैं?
                        </td>
                        <td colspan="4">
                            <table id="rdodomicile" border="0">
		<tr>
			<td><input id="rdodomicile_0" type="radio" name="rdodomicile" value="Y" onclick="OnDomicileCheckChange(); onhandicchange();" /><label for="rdodomicile_0">हाँ</label></td><td><input id="rdodomicile_1" type="radio" name="rdodomicile" value="N" onclick="    OnDomicileCheckChange(); onhandicchange();" /><label for="rdodomicile_1">नहीं</label></td>
		</tr>
	</table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            9.<span style="color: #ff0000">*</span>
                        </td>
                        <td align="left" valign="middle">
                            श्रेणी
                        </td>
                        <td colspan="4">
                            <table id="drpcat" border="0">
		<tr>
			<td><input id="drpcat_0" type="radio" name="drpcat" value="1" /><label for="drpcat_0">अनारक्षित (UR)</label></td><td><input id="drpcat_1" type="radio" name="drpcat" value="2" /><label for="drpcat_1">अनुसूचित जाति (SC)</label></td><td><input id="drpcat_2" type="radio" name="drpcat" value="3" /><label for="drpcat_2">अनुसूचित जनजाति (ST)</label></td><td><input id="drpcat_3" type="radio" name="drpcat" value="4" /><label for="drpcat_3">अन्य पिछड़ा वर्ग (क्रीमलेयर को छोड़कर) (OBC)</label></td>
		</tr>
	</table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="middle">
                            10(a).<span style="color: #ff0000">*</span>
                        </td>
                        <td>
                            संवर्ग
                        </td>
                        <td colspan="4">
                            <table id="RdoClass" border="0">
		<tr>
			<td><input id="RdoClass_0" type="radio" name="RdoClass" value="S" onclick="onhandicchange();" /><label for="RdoClass_0">भूतपूर्व सैनिक(S)</label></td><td><input id="RdoClass_1" type="radio" name="RdoClass" value="H" onclick="    onhandicchange();" /><label for="RdoClass_1">विकलांग(H)</label></td><td><input id="RdoClass_2" type="radio" name="RdoClass" value="X" onclick="    onhandicchange();" /><label for="RdoClass_2">बिना वर्ग(X)</label></td>
		</tr>
	</table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            10(b).
                            <label id="ManHandicappedType">
                            </label>
                        </td>
                        <td>
                            यदि आप विकलांग है तो विकलांगता का प्रकार
                        </td>
                        <td colspan="4">
                            <select name="drpHandiT" id="drpHandiT" class="select" style="width:50%;">
		<option selected="selected" value="00">--Select--</option>
		<option value="OH">अस्थिबाधित(OH)</option>
		<option value="VH">दृष्टिबाधित(VH)</option>
		<option value="EH">श्रवणबाधित(EH)</option>

	</select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            11.<span style="color: #ff0000">*</span>
                        </td>
                        <td>
                            उच्च शैक्षणिक योग्यता का स्तर
                        </td>
                        <td>
                            <select name="ddlQual" id="ddlQual" class="select" onfocusout="validationnew(this,&#39;Education Status&#39;,&#39;T&#39;,&#39;Address&#39;);">
		<option selected="selected" value="00">--Select--</option>
		<option value="ENG">इंजीनियरिंग (ENG)</option>
		<option value="ENGD">इंजीनियरिंग डिप्लोमा (ENGDP)</option>
		<option value="PHD">डॉक्टरेट(PHD)</option>
		<option value="UG">स्नातक(UG)</option>
		<option value="PG">स्नातकोत्तर(PG)</option>
		<option value="HSSC">हायर सेकेंडरी(HSSC)</option>

	</select>
                        </td>
                        <td>
                            12.<span style="color: #ff0000">*</span>
                        </td>
                        <td>
                            निवास का क्षेत्र
                        </td>
                        <td>
                            <table id="rdoresedencearea" border="0">
		<tr>
			<td><input id="rdoresedencearea_0" type="radio" name="rdoresedencearea" value="R" /><label for="rdoresedencearea_0">ग्रामीण(RURAL)</label></td><td><input id="rdoresedencearea_1" type="radio" name="rdoresedencearea" value="U" /><label for="rdoresedencearea_1">शहरी (URBAN)</label></td>
		</tr>
	</table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            नोट- जो आवेदक मध्यप्रदेश की मूल निवासी नहीं है, उन्हें केवल ‘‘अनारक्षित/बिना वर्ग/ओपन’’
                            श्रेणी में ही प्रावीण्यता के आधार पर स्थान प्राप्त होगा तथा उन्हें किसी प्रकार की
                            छूट की पात्रता नहीं होगी।
                        </td>
                    </tr>
                </table>
            
</div>
            
            
            <br />
            <div style="text-align: center">
                <input type="submit" name="btnContinue" value="आगे बढाएं" onclick="return ValidateDataUsingTinyFramework();" id="btnContinue" class="btn" />
                <input type="hidden" name="hdHash" id="hdHash" value="fb329e63-22f8-414e-b8c1-f0a532f7b99c" />
                <input type="hidden" name="hdKIOSKID" id="hdKIOSKID" value="LoginID" />
                <input type="hidden" name="HdnEligibleUR" id="HdnEligibleUR" />
                
            </div>
        </div>
    </div>
    </form>
    <script type="text/javascript" language="javascript" src="../headers/creditsfootermp.js"></script>
    
</body>
</html>
