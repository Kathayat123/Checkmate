<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdmitCard.aspx.cs" Inherits="Admin_AdmitCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NTA::</title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }

        .auto-style10 {
            text-align: center;
        }

        p.MsoNormal {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 8.0pt;
            margin-left: 0in;
            line-height: 107%;
            font-size: 11.0pt;
            font-family: "Calibri","sans-serif";
        }

        .auto-style18 {
            font-size: 14px;
            font-family: Verdana;
        }

        .auto-style24 {
            width: 43%;
        }

        .auto-style26 {
            font-size: 13px;
        }

        .auto-style28 {
            height: 25px;
            width: 12%;
        }

        .auto-style29 {
            width: 668px;
        }
    </style>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/WriteConstants.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/ErrorHandler.js" type="text/javascript"></script>

    <script language="javascript" src="../Portal/headers/MPOnlineHeader/jquery.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/slide.js" type="text/javascript"></script>
    <%--<script language="javascript" src="../Portal/headers/MPOnlineHeader/SevicesLogo.js" type="text/javascript"></script>
     <script language="javascript" src="../Portal/headers/MPOnlineHeader/subheader.js" type="text/javascript"></script>
  <script language="javascript" src="../Portal/headers/MPOnlineHeader/PortalHeader.js" type="text/javascript"></script>--%>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/Kiosk.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/Ticker.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/TimeTick.js" type="text/javascript"></script>
    <script language="javascript" src="../Portal/headers/MPOnlineHeader/Zoom.js" type="text/javascript"></script>

    <style type="text/css" media="print">
        @media print {
            body {
                -webkit-print-color-adjust: exact;
                margin-left: 20px;
                margin-right: 20px;
                margin-top: 20px;
                margin-bottom: 20px;
                /*margin: 0;*/
                zoom: 80%;
                background: url(../Images/uphcwm.jpg) no-repeat;
            }
        }

        @page {
            size: A4 portrait;
            -webkit-print-color-adjust: exact;
            background: url(../Images/uphcwm.jpg) no-repeat;
            /*margin: 0;*/
            margin-left: 20px;
            margin-right: 20px;
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body onload="window.print()">
    <form id="form1" runat="server">
        <script type="text/javascript">
            $(document).keydown(function (event) {
                if (event.keyCode == 123) { // Prevent F12
                    return false;
                } else if (event.ctrlKey && event.shiftKey && event.keyCode == 73) { // Prevent Ctrl+Shift+I        
                    return false;
                }
            });
        </script>
        <div>
            <table style="width: 100%; border-style: solid; background-attachment: scroll; background-repeat: repeat; background-image: Url(../Images/Watermark1.jpg)">
                <tr>
                    <td>
                        <table style="width: 100%; font-size: 14px; font-family: Verdana;">
                            <tr>
                                <td style="width: 0.5%"></td>
                                <td style="width: 99%">

                                    <table style="width: 100%; font-size: 14px; border-width: thin; border-color: black; height: 25px;" border="1" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="text-align: center; width: 100%" colspan="4">
                                                <%-- <img src="../Images/AIIMS.jpg" style="width: 100%; height: 100px" />--%>
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td colspan="3">
                                                            <img src="BANNER.png" />
                                                        </td>
                                                        <%-- <td>
                                                            <img src="MHRD.png" style="width: 100%; height: 100px" />
                                                        </td>
                                                        <td style="font-weight: bold;">ADMIT CARD – PROVISIONAL
                                                            <br />
                                                            DELHI UNIVERSITY ENTRANCE TEST
                                                            <br />
                                                            DUET-2019
                                                            <br />
                                                            FOR ADMISSIONS TO UG/PG/M.PHIL. /PH.D.
                                                            <br />
                                                        </td>
                                                        <td>
                                                            <img src="NTA.png" style="width: 100%; height: 100px" />
                                                        </td>--%>
                                                    </tr>
                                                </table>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td>ROLL NUMBER : 
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblRollNo" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>PIN NO : 
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblPINNO" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>CANDIDATE NAME : 
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblCanName" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>FATHER NAME : 
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblFatherName" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>DATE OF BIRTH : 
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblDOB" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>GENDER : 
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblGender" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>CATEGORY : 
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblCategory" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>PERSON WITH DISABILITY (PwD) : 
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblIsPH" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <asp:Image ID="Barcode" runat="server" Height="48px"
                                                    Width="100px" />
                                                <br />
                                                <br />

                                                <asp:Label ID="lblFormNo" runat="server"></asp:Label>
                                                <br />
                                                FORM NO
                                            </td>
                                            <td>
                                                <asp:Image ID="imgPhoto" runat="server" Width='150px' Height='110px' />
                                                <br />
                                                CANDIDATE’S PHOTO
                                            </td>
                                            <td>
                                                <asp:Image ID="imgSign" runat="server" Width='150px' Height='80px' />
                                                <br />
                                                CANDIDATE’S SIGNATURE
                                                 <br />
                                                <img src="DeanSign.png" style="height: 80px" />
                                                <br />
                                                Senior Director, NTA
                                            </td>
                                        </tr>

                                    </table>
                                </td>
                                <td style="width: 0.5%"></td>
                            </tr>


                        </table>
                    </td>
                </tr>
            </table>

            <br />
            <table style="width: 100%; font-size: 14px; border-width: thin; border-color: black; height: 25px; font-family: Calibri;" border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="2" style="font-weight: bold; font-size: 18px; text-align: center;">TEST DETAILS
                    </td>
                </tr>
                <tr>
                    <td style="text-decoration: underline; font-weight: bold; font-size: 18px; width: 30%">APPLIED FOR
                    </td>
                    <td style="width: 70%;">&nbsp;&nbsp;
                        <asp:Label ID="lblAppName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-decoration: none; font-weight: bold; font-size: 14px;">COURSE NAME*
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:Label ID="lblCourseName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-decoration: none; font-weight: bold; font-size: 14px;">REPORTING TIME AT CENTRE COURSE NAME*
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:Label ID="lblReportingTime" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-decoration: none; font-weight: bold; font-size: 14px;">GATE CLOSING TIME OF CENTRE
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:Label ID="lblGateClosedTime" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-decoration: none; font-weight: bold; font-size: 14px;">DATE OF EXAMINATION
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:Label ID="lblDateOfExam" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-decoration: none; font-weight: bold; font-size: 14px;">SHIFT 
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:Label ID="lblShift" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-decoration: none; font-weight: bold; font-size: 14px;">TIMING OF EXAMINATION 
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:Label ID="lblDuration" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-decoration: none; font-weight: bold; font-size: 14px;">EXAM CENTRE CODE
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:Label ID="lblCenterCode" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-decoration: none; font-weight: bold; font-size: 14px;">VENUE OF TEST
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:Label ID="lblCenterName" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <br />
            <table>
                <tr>
                    <td style="text-decoration: underline; font-weight: bold; font-size: 16px; text-align: center;">‘*’ Course Code and Eligibility Criteria will be governed as per scheme of study given in the Bulletin of DUET-2019 available at http://www.du.ac.in/adm2019/#_admission-info-corner.
                    </td>
                </tr>
            </table>
            <br />

            <div>
                <table style="width: 100%; border-style: solid; background-attachment: scroll; background-repeat: repeat;">
                    <tr>
                        <td>
                            <table style="width: 100%; font-family: Verdana; font-size: 11px;">
                                <tr>
                                    <td style="width: 0.5%;"></td>
                                    <td style="width: 99%; text-align: center; text-decoration: underline; font-weight: bold;">INSTRUCTIONS FOR THE CANDIDATES</td>
                                    <td style="width: 0.5%;"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td colspan="3">
                                        <ol>
                                            <li>The Admit Card is provisional, subject to the eligibility conditions given in the Information Bulletin. </li>
                                            <li>Candidates are suggested to visit the examination venue, a day in advance, so that they can reach the venue on time on the day of examination. </li>
                                            <li>Candidates are required to present the following documents to the examination officials, for identity verification:
                                                <br />
                                                <ol>* Admit Card downloaded from the NTA website (a clear preferably colour printout on A4 size paper).</ol>
                                                <ol>* Passport size photograph (same as uploaded with the Online Application Form) to be pasted on the attendance sheet at the Centre.</ol>
                                                <ol>* Any one of the original and valid Photo Identification Proof issued by the government – PAN card/ Driving License/ Voter ID/ Passport/ Aadhaar Card (With photograph)/E- Aadhaar/Ration Card</ol>
                                                <ol>
                                                    * PwD certificate issued by the Competent Authority, if claiming the relaxation under PwD category. Detailed guidelines are available at the link  http://14.139.116.16:90/Download/Notice/Guidelines_29_08_2018.pdf
                                                </ol>
                                                <br />
                                                Note: No Candidate would be allowed to enter the Examination Centre, without identity verification.
                                            </li>
                                            <li>Candidates are NOT allowed to carry any personal belongings including electronic and communication devices like mobile/cell phones, electronic watch, calculator, smart electronic gadgets etc.  and any other material listed in the Information Bulletin, to the Examination Centre. Examination Officials will not be responsible for safe keep of personal belongings.</li>
                                            <li>Pen/ Pencil and blank paper sheets for rough work will be provided in the examination Hall/Room. Candidates must write their name and Roll Number at the top of the sheet, and must return the sheet and Admit card to the Invigilator, before leaving the examination Hall/Room. </li>
                                            <li>Candidates should take their seat immediately after opening of the Examination Hall. They can login and read instructions, before the commencement of the examination. </li>
                                            <li>Candidates will NOT be permitted to leave the Examination Room/Hall before the end of examination. After the completion of the examination, candidates should hand over their rough sheet and Pen/Pencil to the invigilator on duty.</li>
                                            <li>No Candidate should adopt any unfair-means or indulge in any unfair examination practices. Impersonation or attempt to impersonate would invite forfeiture of the candidature. Any candidate found resorting to any unfair-means or malpractices or misconduct during the examination, including giving/ receiving help to/from any candidate shall be debarred from the examination. </li>
                                            <li>Candidates must enter required details in the Attendance Sheet in legible handwriting, put their signature, Left Hand Thumb Impression and paste the Photograph at the appropriate place. They should ensure that their Left-Hand Thumb Impression is clear and not smudged.</li>
                                            <li>The mode of the examination shall be Computer Based Test (CBT). Candidate must enter his/her Username (Examination Roll No.), Pin No. (Date of birth in YYYYMMDD) and Password (which shall be given in the Examination Hall) to login 5 minutes before the Examination Start time. Please ensure that your Name and other details which will subsequently appear on the screen are correct.</li>
                                            <li>A Virtual Non-Programmable Calculator shall be provided on the computer screen during the examination, where ever permissible.</li>
                                            <li>The scores of candidates taking up the entrance examination JAT -BMS/BBA(FIA) & B.A. (Hons.) Business Economics shall be subjected to a Normalization Process as mentioned in NTA Website - https://jeemain.nic.in/WebInfo/Handler/FileHandler.ashx?i=File&ii=4&iii=Y</li>
                                            <li>There is a common Entrance Test for M.Phil. and Ph.D. programme. </li>
                                            <li>Candidates appearing in multiple tests/ papers, efforts have been made to allocate same centre, as far as possible.</li>
                                            <li>In case, separate application form(s) have been filled by a candidate, NTA will not have any responsibility to ensure allocation of same Centre.</li>
                                            <li>Candidates are advised to check updates on NTA/DU website regularly. NTA’s website : www.nta.ac.in     DU’s website : www.du.ac.in</li>
                                            <li>Candidates may also check their mailbox on the registered-mail address and SMS in their registered Mobile No. for latest updates and information.</li>
                                            <li>In case of any discrepancy, the Instructions in English Language will be final.</li>
                                        </ol>
                                    </td>

                                </tr>
                                <tr>
                                    <td colspan="3" style="font-weight: bold; font-size: 13px">
                                        <br />
                                        For any Technical Assistance : Email: DUET.NTA@gmail.com. Helpline Number: 9453827203, 9455874491, 9455874492 & 9455874494
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="font-weight: bold; font-size: 15px">
                                        <br />
                                        Note: No candidate will be allowed to enter the examination Centre after gate closing time mentioned on the Admit Card.
                                    </td>
                                </tr>

                            </table>
                        </td>


                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table style="width: 100%; border-style: solid; background-attachment: scroll; background-repeat: repeat;">
                    <tr>
                        <td>
                            <table style="width: 100%; font-family: Verdana; font-size: 14px;">
                                <tr>
                                    <td style="width: 0.5%;"></td>
                                    <td style="width: 99%; text-align: center; text-decoration: underline; font-weight: bold;">परीक्षार्थियों के लिए महत्वपूर्ण निर्देश</td>
                                    <td style="width: 0.5%;"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td colspan="3">
                                        <ol>
                                            <li>यह प्रवेश पत्र अनंतिम है तथा सूचना बुलेटिन में दी गई पात्रता शर्तों के अधीन है। </li>
                                            <li>परीक्षार्थियों को सूचित किया जाता है कि वे परीक्षा से एक दिन पूर्व परीक्षा स्थल पर भ्रमण करें ताकि  वे परीक्षा के दिन समय पर परीक्षा केंद्र पर पहुँच सकें ।</li>
                                            <li>परीक्षार्थियों को अपनी पहचान के सत्यापन के लिए परीक्षा अधिकारियों को निम्नलिखित दस्तावेज प्रस्तुत करने होंगेः
                                                    <ol>*	प्रवेश पत्र एनटीए वेबसाइट से डाउनलोड किया गया (ए4 साइज पेपर पर स्पष्ट रूप से रंगीन प्रिंटआउट)। </ol>
                                                <ol>*	पासपोर्ट आकार की फोटो (जिसका आनलाइन आवेदन में भी प्रयोग किया गया है।) जिसका प्रयोग उपस्थिति पत्रक में चिपकाने के लिए किया जाएगा।</ol>
                                                <ol>*	सरकार द्वारा जारी किए गए मूल और वैध फोटो पहचान प्रमाण में से कोई एक जैसे कि  पैन कार्ड / ड्राइविंग लाइसेंस / वोटर आईडी / पासपोर्ट / आधार कार्ड (फोटो के साथ) / ई- आधार / राशन कार्ड ।</ol>
                                                <ol>*	यदि आप दिव्यांग श्रेणी के तहत छूट का दावा कर रहे हैं तो इस संबंध में सक्षम प्राधिकारी द्वारा जारी किया गया दिव्यांग प्रमाणपत्र प्रस्तुत करें। </ol>
                                                <ol>
                                                    *	विस्तृत दिशानिर्देश http://14.139.116.16:90/Download/Notice/Guidelines_29_08_2018.pdf लिंक पर उपलब्ध है।
                                                </ol>
                                                <br />
                                                नोट-किसी भी परीक्षार्थी को बिना पहचान सत्यापन के परीक्षा केंद्र में प्रवेश करने की अनुमति नहीं दी जाएगी।
                                            </li>
                                            <li>परीक्षार्थी किसी भी व्यक्तिगत सामान जैसे कि इलेक्ट्रॉनिक और संचार उपकरण जैसे मोबाइल /
 सेल फोन ,  इलेक्ट्रॉनिक घड़ी , कैलकुलेटर,   स्मार्ट इलेक्ट्रॉनिक गैजेट आदि और सूचना बुलेटिन में सूचीबद्ध किसी भी अन्य सामग्री को परीक्षा  केंद्र में  नहीं ले की अनुमति नहीं है। परीक्षा अधिकारी व्यक्तिगत सामानों को सुरक्षित रखने के लिए जिम्मेदार नहीं होंगे।
                                            </li>
                                            <li>रफ  कार्य के लिए पेन / पेंसिल और रफ शीट परीक्षा केंद्र / कक्ष में प्रदान किए जाएंगे। परीक्षार्थियों को अपना नाम और अनुक्रमांक शीट के शीर्ष पर लिखना चाहिए और परीक्षा केंद्र / कक्ष से बाहर निकलने से पहले  रफ  शीट और प्रवेश पत्र निरीक्षक को वापस करना होगा।</li>
                                            <li>परीक्षार्थियों को परीक्षा समाप्त होने से पहले परीक्षा कक्ष / हॉल छोड़ने की अनुमति नहीं है । परीक्षार्थियों को परीक्षा के पूरा होने के तुरंत बाद ही अपनी रफ शीट और पेन / पेंसिल निरीक्षक को सौंप देनी चाहिए।
                                            </li>
                                            <li>परीक्षार्थियों  को परीक्षा केंद्र में प्रवेश के तुरंत बाद अपना स्थान ले लेना चाहिए। परीक्षार्थी परीक्षा शुरू होने से पहले लॉगिन कर परीक्षा से संबंधित निर्देशों को पढ़ सकते हैं।</li>
                                            <li>किसी भी परीक्षार्थी को अनुचित व्यवहार नहीं करना चाहिए और न ही किसी अनुचित परीक्षा पद्धति में लिप्त होना चाहिए। परीक्षा के दौरान किसी भी अभ्यर्थी द्वारा यदि किसी भी अनुचित-साधन या कदाचार या कदाचार का प्रयोग करते हुए पाया गया  जिसमें किसी भी परीक्षार्थी को / से सहायता लेना /देना या प्रतिरूपण करने का प्रयास करना सम्मिलित है तो ऐसी स्थिति में उसकी अभ्यर्थिता रद्द कर दी जाएगी ।</li>
                                            <li>परीक्षार्थियों को सुपाठ्य लिखावट में उपस्थित पत्रक में आवश्यक विवरण, अपना हस्ताक्षर , बाएं हाथ का अंगूठा छाप और उपयुक्त स्थान पर फोटोग्राफ चिपकाना  इत्यादि दर्ज करना होगा होगा। परीक्षार्थी को यह भी सुनिश्चित करना चाहिए कि उनके बांये हाथ के अंगूठे की छाप स्पष्ठ हो ।</li>
                                            <li>परीक्षा कंप्यूटर आधारित ऑनलाइन टेस्ट (CBT) मोड में आयोजित की जाएगी  परीक्षा शुरू होने से 5 मिनट पहले लॉगिन करने के लिए परीक्षार्थी को अपना उपयोगकर्ता नाम (परीक्षा अनुक्रमांक), पिन नंबर (YYYYMMDD में जन्म तिथि) और पासवर्ड (जो परीक्षा हॉल में दिया जाएगा) दर्ज करना होगा। कृपया सुनिश्चित करें कि आपका नाम और अन्य विवरण जो बाद में स्क्रीन पर दिखाई देंगे होने चाहिए ।
                                            </li>
                                            <li>परीक्षा के दौरान अनुमति योग्य कंप्यूटर स्क्रीन पर एक वर्चुअल नॉन प्रोग्रामेबल कैलकुलेटर उपलब्ध कराया जाएगा ।
                                            </li>
                                            <li>JAT -BMS/BBA(FIA) & B.A. (Hons.) Business Economics की प्रवेश परीक्षा देने वाले अभ्यर्थियों के अंकों को एक सामान्यीकरण प्रक्रिया के अधीन एनटीए की वेबसाइट https://jeemain.nic.in/WebInfo/Handler/FileHandler.ashx?i=File&ii=&iii=Y
में उल्लिखित किया जाएगा ।
                                            </li>
                                            <li>M.Phil/ Ph.D. के लिए एक ही सामान्य प्रवेश परीक्षा आयोजित की जाएगी ।</li>
                                            <li>विभिन्न परीक्षाओं / पेपरों में उपस्थित होने वाले परीक्षार्थियों के लिए  यथासंभव उसी केंद्र को आवंटित करने का प्रयास किया गया है।</li>
                                            <li>यदि किसी परीक्षार्थी द्वारा अलग-अलग आवेदन पत्र भरा गया है, तो NTA द्वारा एक ही केंद्र परीक्षा आवंटित करने की  जिम्मेदारी नहीं होगी।</li>
                                            <li>परीक्षार्थियों को सूचित किया जाता है कि वे नियमित रूप से NTA / DU की वेबसाइट NTA’s website : www.nta.ac.in     
DU’s website : www.du.ac.in  पर अपडेट की जाँच करें । 
                                            </li>
                                            <li>परीक्षार्थी नवीनतम अपडेट और जानकारी के लिए अपने पंजीकृत मोबाइल नंबर पर पंजीकृत मेल पते और एसएमएस पर अपने
 मेलबॉक्स की जांच कर सकते हैं।
                                            </li>
                                            <li>किसी भी विसंगति पाए जाने पर अंग्रेजी में दिए गए निर्देश ही मान्य होंगे।</li>

                                        </ol>
                                    </td>

                                </tr>
                                <tr>
                                    <td colspan="3" style="font-weight: bold; font-size: 13px">
                                        <br />
                                        किसी प्रकार की तकनीकी सहायता के लिए Email: DUET.NTA@gmail.com. Helpline Number: 9453827203, 9455874491, 9455874492 & 9455874494 पर संपर्क करें
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="font-weight: bold; font-size: 15px">
                                        <br />
                                        नोट: किसी भी उम्मीदवार को प्रवेश पत्र में उल्लेखित गेट बंद होने के समय के बाद परीक्षा केंद्र में प्रवेश करने की अनुमति नहीं दी जाएगी।
                                    </td>
                                </tr>

                            </table>
                        </td>


                    </tr>
                </table>
                <div style="height: 350px">
                </div>
                <div style="font-weight: bold;">
                    Download Date & Time :
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </div>
            </div>
        </div>

    </form>
</body>
</html>

