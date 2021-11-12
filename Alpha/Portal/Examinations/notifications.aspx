<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notifications.aspx.cs" Inherits="Portal_Examinations_notifications" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	View the Notification
</title><link rel="shortcut icon" href="../headers/favicon.ico" />
    <link href="Css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../headers/PortalStyle.css" type="text/css" rel="stylesheet" />
<script language="javascript" src="../headers/MPOnlineHeader/WriteConstants.js" type="text/javascript"></script>
<script language="javascript" src="../headers/MPOnlineHeader/ErrorHandler.js" type="text/javascript"></script>
<script type="text/javascript">
    langid = 'en-US';
    userName = 'Guest';
    ToggleURL = "/Portal/Examinations/vyapam/notifications.aspx";
    kioskid = "kioskID";
    kioskDate = "Date";
    logindt = "Date";
    balnce = "Balnce";
    Header = "subheaderblank()";
    ServerName = "SATPURA";
    timeServer = new Date('2/18/2016 10:19:03 AM');
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
<!-- End Google Tag Manager --><link href="Css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function CHKThis() {
            var chk = document.getElementById("CheckBox1");
            if (chk.checked == false) {
                alert("Please  read the instructions carefully & Check declaration box.");
                return false;
            }
            return true;
        }
    </script>
    <script language="javascript" type="text/javascript">

        function DisableBackButton() {
            window.history.forward()
        }

        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }

    </script>
    <script type="text/javascript">
        function burstCache() {
            if (!navigator.onLine) {
                document.body.innerHTML = 'Loading...';
                window.location = 'ErrorPage.html';
            }
        }
    </script>
</head>
<body onload="burstCache();">
    <span id="headerLbl"></span>
    <form name="form1" method="post" action="./notifications.aspx?langid=en-US&amp;id=50" id="form1" class="Ignore" style="margin-top: 0px; width: 100%;">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJLTE0MDgxNTQzD2QWAgIFD2QWDAIDDw8WAh4EVGV4dAVOU3ViLUVuZ2luZWVyIChDaXZpbC9FbGVjdHJpY2FsL01lY2hhbmljYWwpIGFuZCBEcmFmdHNtYW4gUmVjcnVpdG1lbnQgVGVzdC0yMDE2ZGQCBw8WAh4EaHJlZgU4L1F1aWNrIExpbmtzL1Z5YXBhbS9Ob3RpZmljYXRpb25zL0VOR18yMDE2X1JVTEVfQk9PSy5QREZkAgkPFgIfAQU4L1F1aWNrIExpbmtzL1Z5YXBhbS9Ob3RpZmljYXRpb25zL0VOR18yMDE2X1JVTEVfQk9PSy5QREZkAgsPFgIfAQU4L1F1aWNrIExpbmtzL1Z5YXBhbS9Ob3RpZmljYXRpb25zL0VOR18yMDE2X1JVTEVfQk9PSy5QREZkAg0PFgIfAQU4L1F1aWNrIExpbmtzL1Z5YXBhbS9Ob3RpZmljYXRpb25zL0VOR18yMDE2X1JVTEVfQk9PSy5QREZkAhEPFgIeB1Zpc2libGVoZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAgUJQ2hlY2tCb3gxBQhDb250aW51ZSVNItqnW177xjJjR8FmjFOGyEcbodmVQaM8yCraDt6S" />
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="5ED7D02F" />
</div>
    
    <div class="container">
        <div class="inner_content ">
            <table class="Hrftable">
                <tr>
                    <td align="center" colspan="3">
                        <font color="#ff6600" style="font-weight: bold">म.प्र.व्यापम के अंतर्गत
                            <span id="lblExamHeader">Sub-Engineer (Civil/Electrical/Mechanical) and Draftsman Recruitment Test-2016</span>
                            हेतु आवेदन</font>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        <font color="#ff6600" style="font-weight: bold">आवेदक की घोषणा / Declaration for candidate</font>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <table class="Hrftable">
                            <tr>
                                <td align="left" colspan="3" style="font-size: small; font-family: Arial">
                                    &nbsp;<span chk="CheckBox1"><input id="CheckBox1" type="checkbox" name="CheckBox1" /></span>
                                    &nbsp; मैं यह घोषणा करता/करती हूं कि मेरे द्वारा <a href="/Quick Links/Vyapam/Notifications/ENG_2016_RULE_BOOK.PDF" id="rulepath1" target="_blank" class="blue_link">
                                       नियम पुस्तिका</a> में दी गई समस्त जानकारियों एवं शर्तों को भली
                                    भातिं पढ़ व समझ लिया है तथा मैं यह वचन देता/देती हूं कि <a href="/Quick Links/Vyapam/Notifications/ENG_2016_RULE_BOOK.PDF" id="rulepath2" target="_blank" class="blue_link">
                                       नियम पुस्तिका</a> में उल्लेखित नियम एवं दिशा निर्देशों का पालन
                                    करते हुए ही ऑनलाइन आवेदन भरूँगा/भरुंगी।
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" style="font-size: small; font-family: Arial">
                                    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I here by declare that, I have read
                                    & understood all the Information/Instruction/Conditions mentioned in the <a href="/Quick Links/Vyapam/Notifications/ENG_2016_RULE_BOOK.PDF" id="rulepath3" target="_blank" class="blue_link">Rule Book</a>. I also affirm that I will abide
                                    by the <a href="/Quick Links/Vyapam/Notifications/ENG_2016_RULE_BOOK.PDF" id="A1" target="_blank" class="blue_link">Rules/Instructions</a> while filling
                                    the online application form.
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" style="font-size: small; font-family: Arial">
                                    <br />
                                    <font style="font-size: medium; font-weight: bold; text-decoration: underline;" >महत्वपूर्ण
                                        निर्देश / Important instruction</font><br />
                                    <br />
                                </td>
                            </tr>
                            <tr id="liCommon">
	<td align="left" colspan="3" style="font-size: small; font-family: Arial">
                                    <ul>
                                        <li>ऑनलाइन आवेदन पत्र क्रं ऑनलाइन आवेदन जमा करने के पश्चात् रखा जाना सुनिश्चित करें।
                                        </li>
                                        <li>ऑनलाइन आवेदन पत्र भरने की अंतिम तिथि के पश्चात् अगले दिन से नियम पुस्तिका मे दी
                                            गई सुधार अवधि तक स्वयं आवेदक द्वारा इन्टरनेट से अथवा एम.पी.ऑनलाइन के अधिकृत कीओस्क
                                            के माध्यम से अपने आवेदन पत्र में संशोधन किया जा सकेगा|यह सुविधा केवल ऑनलाइन आवेदन
                                            पत्र भरने की निर्धारित अवधि में परीक्षा शुल्क राशि का भुगतान कर सफलतापूर्वक भरे
                                            गए आवेदन पत्रों के लिए ही उपलब्ध होगा| </li>
                                        <li>ऑनलाइन आवेदन पत्र भरने के लिए E-mail ID होना अनिवार्य है क्योंकि भरे गए ऑनलाइन आवेदन
                                            पत्र से संबंधित समस्त जानकारी को E-mail पर उपलब्ध कराई जाएगी। </li>
                                    </ul>
                                </td>
</tr>

                            
                            <tr>
                                <td align="center" colspan="3" style="font-size: small; font-family: Arial">
                                    
                                    <input type="image" name="Continue" id="Continue" border="0" alt="Continue" src="/Quick Links/Vyapam/continue.gif" src="" onclick="return CHKThis();" style="border-width:0px;" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
    <script language="javascript" src="/Portal/headers/creditsfootermp.js"></script>
</body>
</html>
