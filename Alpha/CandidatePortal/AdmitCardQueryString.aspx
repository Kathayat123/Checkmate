<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdmitCardQueryString.aspx.cs" Inherits="CandidatePortal_AdmitCardQueryString" %>

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
            height: 14px;
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
                margin-left: 14px;
                margin-right: 14px;
                margin-top: 14px;
                margin-bottom: 14px;
                /*margin: 0;*/
                zoom: 80%;
                background: url(../Images/uphcwm.jpg) no-repeat;
            }
        }
        td {
            padding:4px;
        }

        @page {
            size: A4 portrait;
            -webkit-print-color-adjust: exact;
            background: url(../Images/uphcwm.jpg) no-repeat;
            /*margin: 0;*/
            margin-left: 14px;
            margin-right: 14px;
            margin-top: 14px;
            margin-bottom: 14px;
        }

        @page { size: auto;  margin: 0mm; }
        @media print {
            .container{margin:auto;padding:5mm 10mm;}
            .pagebreak { page-break-before: always; } /* page-break-after works, as well */
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

                        <%--<table style="width: 100%; font-size: 14px; font-family: Verdana;"><tr>--%>
                                <%--<td style="width: 0.5%"></td>--%>
                                <%--<td >--%>

                                    <table style="width: 100%; font-size: 14px; border-width: thin; border-color: black; height: 14px;" border="1" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="text-align: center; width: 100%" colspan="4">
                                                <%-- <img src="../Images/AIIMS.jpg" style="width: 100%; height: 100px" />--%>
                                                <table style="width: 100%;padding:10px">
                                                    <tr>
                                                        <td colspan="3">
                                                            <img src="BANNER.png" style="width:100%"/>
                                                        </td>
                                                      
                                                    </tr>
                                                </table>

                                            </td>
                                        </tr>
                                        <tr  >
                                            <td colspan="3" align="center" style="height:14px;font-weight:bold;background-color:blue;color:white">
                                                           ADMIT CARD - PROVISIONAL
                                        </td>  </tr>
                                        <tr>
                                            <td colspan="3" align="center" style="height:14px;font-weight:bold;background-color:blue;color:white">
                                                          Delhi University Entrance Test – September-2020
                                        </td>  </tr>
                                     </table>
                                    
                                   <%-- </td>
                                </tr>
                        </table>--%>
                                                <table style="width: 100%; font-size: 14px; border-width: thin; border-color: black; height: 14px;" border="1" cellpadding="0" cellspacing="0">
                                   
                                                    <tr style="height:10px">
                                                        <td style="width:15%;padding:4px;background-color:lightgray">Roll Number 
                                                        </td>
                                                         <td style="width:15%;padding:4px">
                                                            <asp:Label ID="lblRollNo" runat="server"></asp:Label>
                                                        </td>
                                                       <td style="width:15%;padding:4px">Application Number  
                                                        </td>
                                                        <td style="padding:4px">
                                                            <asp:Label ID="lblApplNo" runat="server"></asp:Label>
                                                        </td>

                                                        <td align="center" style="width:20%">
                                              Photograph
                                            </td>
                                                          
                                                    </tr>
                                                    <tr style="height:14px">
                                                        <td style="padding:4px;background-color:lightgray">Pin Number : 
                                                        </td>
                                                         <td style="padding:4px">
                                                            <asp:Label ID="lblPINNO" runat="server"></asp:Label>
                                                        </td>

                                                          <td> 
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td rowspan="6" align="center">
                                                            
                                                <asp:Image ID="imgPhoto" runat="server" Width='130px' Height='150px' />
                                                
                                            </td>
                                                    </tr>
                                                     <tr style="height:10px;">
                                                        <td style="padding:4px;background-color:lightgray">Candidate's Name : 
                                                        </td>
                                                          <td style="padding:4px">
                                                            <asp:Label ID="lblCanName" runat="server"></asp:Label>
                                                        </td>
                                                        <td style="padding:4px">Father's Name : 
                                                        </td>
                                                         <td style="padding:4px">
                                                            <asp:Label ID="lblFatherName" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                     <tr style="height:10px;">
                                                        <td style="padding:4px;background-color:lightgray">Gender : 
                                                        </td>
                                                          <td style="padding:4px">
                                                            <asp:Label ID="lblGender" runat="server"></asp:Label>
                                                        </td>
                                                         <td rowspan="2" style="padding:4px">Date Of Birth : 
                                                        </td>
                                                        <td rowspan="2"  style="padding:4px">
                                                            <asp:Label ID="lblDOB" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:14px">
                                                        <td style="padding:4px;background-color:lightgray">Category: 
                                                        </td>
                                                          <td style="padding:4px">
                                                            <asp:Label ID="lblCategory" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                   
                                                     <tr style="height:14px">
                                                        <td style="padding:4px;background-color:lightgray">PwD(Person With Disability ) : 
                                                        </td>
                                                         <td style="padding:4px">
                                                            <asp:Label ID="lblIsPH" runat="server"></asp:Label>
                                                        </td>
                                                        <td style="padding:4px;background-color:lightgray">Scribe : 
                                                        </td>
                                                         <td style="padding:4px">
                                                            <asp:Label ID="lblscribe" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>

                                                     <tr>
                                                        <td colspan="2" align="center" style="background-color:lightgray"><asp:Image ID="Barcode" runat="server" Height="48px"
                                                    Width="100px" />
                                                <br />
                                                <br />
                                                        </td>
                                                       
                                                        <td style="padding:4px;background-color:lightgray">Candidate's Signature : 
                                                        </td>
                                                        <td style="text-align:center;padding:4px">
                                                           <asp:Image ID="imgSign" runat="server" Width='150px' Height='60px'  />
                                                        </td>
                                                    </tr>
                                                  
                                                </table>
                                                    

           <br/>
            <table style="width: 100%; font-size: 12px; border-width: thin; border-color: black; height: 14px; " border="1" cellpadding="0" cellspacing="0">
               
                
                <tr style="height:14px">
                    <td style="text-decoration: none;  font-size: 12px;width:15%;padding:4px;background-color:lightgray">Course Name</td>
                    <td style="background-color:lightgray">&nbsp;&nbsp;
                        <asp:Label ID="lblCourseName" runat="server"></asp:Label>
                    </td>

<td style="text-decoration: none;  font-size: 12px;font-weight:bold;width:10%;padding:4px;background-color:lightgray">Subject
    </td>   
                    <td style="font-weight:bold;width:25%;padding:4px;background-color:lightgray">
                         <asp:Label ID="lblsub" runat="server"></asp:Label>
                    </td> 
                </tr>
                 <tr style="height:14px">
                    <td style="text-decoration: none;  font-size: 12px;padding:4px;background-color:lightgray">Date Of Examination
                    </td>
                      <td style="padding:4px">&nbsp;&nbsp;
                        <asp:Label ID="lblDateOfExam" runat="server"></asp:Label>
                    </td>
                     <td style="text-decoration: none;  font-size: 12px;font-weight:bold;padding:4px">Shift
                    </td>
                    <td style="font-weight:bold;padding:4px">&nbsp;&nbsp;
                        <asp:Label ID="lblShift" runat="server"></asp:Label>
                    </td>
                </tr>
                 <tr style="height:14px">
                    <td style="text-decoration: none;  font-size: 12px;padding:4px;background-color:lightgray">Reporting/Entry Time at Centre
                    </td>
                    <td colspan="3" style="padding:4px">&nbsp;&nbsp;
                        <asp:Label ID="lblReportingTime" runat="server"></asp:Label>
                    </td>
                </tr>
                 <tr style="height:14px">
                    <td style="text-decoration: none;  font-size: 12px;padding:4px;background-color:lightgray">Gate Closing Time Of Centre
                    </td>
                    <td colspan="3" style="padding:4px">&nbsp;&nbsp;
                        <asp:Label ID="lblGateClosedTime" runat="server"></asp:Label>
                    </td>
                </tr>
               
                <tr style="height:14px">
                    <td style="text-decoration: none;  font-size: 12px;padding:4px;background-color:lightgray">Timing Of Test 
                    </td>
                     <td colspan="3" style="padding:4px">&nbsp;&nbsp;
                        <asp:Label ID="lblDuration" runat="server"></asp:Label>
                    </td>
                </tr>
                 <tr style="height:14px">
                    <td style="text-decoration: none;  font-size: 12px;padding:4px;background-color:lightgray">Test Center No 
                    </td>
                     <td colspan="3" style="padding:4px">&nbsp;&nbsp;
                        <asp:Label ID="lblCenterCode" runat="server"></asp:Label>
                    </td>
                </tr>
                 <tr style="height:14px">
                    <td style="text-decoration: none;  font-size: 12px;padding:4px;background-color:lightgray">Venue Of Test
                    </td>
                     <td colspan="3" style="padding:4px">&nbsp;&nbsp;
                        <asp:Label ID="lblCenterName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr style="height:15px">
                    <td colspan="2" style="text-decoration: none;  font-size: 16px;text-align:center;padding:4px;background-color:#44a6c6;color:white ">SELF DECLARATION(UNDERTAKING)
                    </td>
                    
                     <td colspan="2" align="center">  
                                               
                                                <img src="DeanSign.png" style="height: 80px" />
                                                <br />
                                                Senior Director, NTA
                                            </td>
                </tr>
            </table>

           
            <div style="font-size:12px;font-family:Verdana" class="container">
               I, ____________________________resident of ________________________________________________, do hereby, declare the following:
               
                
                    <ol><li>
                      <strong>  That, I have read the Instructions, Guidelines and relevant orders pertaining to COVID-19 pandemic. I have read Information Bulletin, Instructions and Notices related to this examination available on the website ‘ntaaiapget.nic.in’
                       </strong> </li>

                        <li>
                           <strong> I have in the last 14 days(please tick✔, wherever it is applicable to you, otherwise leave blank ): </strong>
                            <ol type="a">
                                <li>
                                    the following flu-like symptoms:
Fever:❏, Cough: ❏, Breathlessness: ❏, Sore throat / Runny Nose: ❏, Body ache: ❏

Others- Please specify: __________________________________________________________________________

                                    </li>
                                <li>been in close contact with a confirmed case of the COVID-19❏
(<strong>“Close contact” </strong>means being at less than one meter for more than 15 minutes.)

                                    </li>
                                <li>	NOT been in close contact with a person suffering from COVID-19 and am NOT under mandatory quarantine: ❏
                                    </li>
                                <li>Travelled ❏the following cities/ country in the last 14 days prior to arriving at the Centre.
                                     <table style="width: 100%; font-size: 12px; border-width: thin; border-color: black; height: 14px; " border="1" cellpadding="0" cellspacing="0">
               <tr>
                                        <td> </td>
                                            <td style="background-color:lightgray"> 1st City</td>
                                             <td style="background-color:lightgray">2nd City</td>
                                             <td style="background-color:lightgray"> 3rd City</td>
                                              <td style="background-color:lightgray"> 4th City</td>
                                            </tr>

                                        <tr>
                                        <td style="background-color:lightgray">Name of cities/ country </td>
                                            <td> </td>
                                            <td></td>
                                            <td></td>
                                             <td> </td>
                                            </tr>

                                        <tr>
                                         <td style="background-color:lightgray"> Date of Arrival in Centre Country</td>
                                            <td></td>
                                            <td> </td>
                                            <td> </td>
                                             <td></td>
                                            </tr>
                                        </table>
                                    </li>
                                </ol>
                            </li>
                        <li><strong>The health and wellbeing of our community is our first priority; therefore the Centre reserves the right to deny entry to its premises.
                         </strong> </li>
                         <li>I/We have read the detailed <strong>“IMPORTANT INSTRUCTIONS for CANDIDATES”</strong> as given on Page-2 and <strong>“ADVISORY for CANDIDATES REGARDING COVID-19”</strong>as given on Page-3, and I/ we undertake to abide by the same.
                            </li>
                        </ol>
                    
                 </div>
             <table style="width: 100%; font-size: 14px; border-width: thin; border-color: black; height: 14px; font-family: Calibri;" border="1" cellpadding="0" cellspacing="0">
              <tr style="height:34px">
                    <td style="vertical-align:bottom;text-align:center;font-weight:bold" rowspan="2"><br/>Candidate’s Photo
(To be pasted)
</td>
                      <td style="vertical-align:bottom;text-align:center;font-weight:bold" rowspan="2"><br/>Candidate’s Left hand thumb impression
(To be done before reaching Exam Centre

                        </td>
                    <td style="vertical-align:bottom;text-align:center;font-weight:bold"><br/>Candidate’s Parent Signature<br/>
 (To be signed before coming to Exam Centre)

                        </td>
                      </tr>
                 <tr>
                    <td style="vertical-align:bottom;text-align:center;font-weight:bold"><br/>Candidate’s Signature<br/>
(To be signed, on the day of Examination, in presence of Invigilator only)

                        </td>
                     </tr>
                
              
            </table>
            
                     <div align="center" style="font-size:small">The above undertaking has to be filled up in advance before reaching the centre, except candidate signature which has to be done in the presence of invigilator.
                       </div>
                                 
                   
            <div class="pagebreak" >                       <br/> 
                <table style="width: 100%; border-style: solid; background-attachment: scroll; background-repeat: repeat;">
                    <tr>
                        <td>                       <br/>
                            <table style="width: 100%; font-family: Verdana; font-size: 12px;">
                                <tr>
                                    <td style="width: 0.5%;"></td>
                                    <td style="width: 99%; text-align: center; text-decoration: underline; font-weight: bold;font-size:14px;color:white;background-color:blue">IMPORTANT INSTRUCTIONS FOR THE CANDIDATES</td>
                                    <td style="width: 0.5%;"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td colspan="3">
                                        <ol style="text-align:justify">
                                            <li>As a precaution for COVID-19, the candidate must reach centre as indicated against Reporting/Entry time at centre.</li>
                                           <br/> <li>No candidate shall be permitted to enter after the Gate Closing Time. </li>
                                           <br/>  <li>No candidate shall be permitted to leave the Examination Room/ Hall before the end of the examination. </li>
                                          <br/>   <li>On completion of the examination, please wait for instructions from Invigilator and do not get up from your seat until advised. The candidates will be permitted to move out one at a time only.</li>
                                           <br/>  <li>All candidates are required to download and carefully read the Instructions and Advisory for COVID-19 given with the Admit Card and strictly adhere to them.</li>
                                           <br/>  <li>This Admit Card consists of three pages- Page 1 contains the <strong>Centre details and Self Declaration (Undertaking) form regarding COVID-19,</strong> page 2 has<strong> “Important instruction for candidates” and page 3 has “Advisory for candidates regarding COVID-19”.</strong> The candidate has to download all the three pages.</li>
                                           <br/>  <li>The Admit Card is provisional, subject to satisfying the eligibility conditions as given in the Information Bulletin.</li>
                                          <br/>   <li>Candidates are suggested to visit the examination venue, a day in advance to see the arrangements at the centre, so that they do not face any problem on the day of examination.</li>
                                          <br/>   <li>If religion/customs require you to wear specific attire, please visit centre early for thorough checking. </li>
                                          <br/>   <li><strong>No Candidate would be allowed to enter the Examination Centre, without Admit Card, Valid ID Proof and proper frisking.</strong> Frisking through Handheld Metal Detector (HHMD) will be carried out without touching body.</li>
                                          <br/>   <li><strong>Candidates will be permitted to carry only the following items with them into the examination venue:</strong></li>
                                            <ol type="a">
                                                <li><strong>Personal transparent water bottle,</strong> 
                                                    </li>
                                                 <li><strong>Personal hand sanitizer (50 ml)</strong></li>
                                            <li><strong>A simple transparent Ball Point Pen</strong></li>
                                            <li><strong>Admit Card and Self Declaration (Undertaking), both duly filled as downloaded from the NTA website (a clear printout on A4 size paper).</strong></li>
                                            <li><strong>One additional copy of the same photograph pasted on Admit Card for affixing on the Attendance Sheet in the presence of Invigilator</strong></li>
                                                </ol>
                                           <br/>  <li>Before reaching the Centre, the candidatemust enter required details in the Self Declaration (Undertaking) in legible handwriting, paste the Photograph, put thumb impression and get the signature of parentat the appropriate place. They should ensure that their Left-Hand Thumb Impression is clear and not smudged.</li>
                                           <br/>  <li>Candidate must carry “Any one of the original and valid Photo Identification Proof issued by the government” – PAN card/Driving License/Voter ID/12th Class Board Admit or Registration card/ Passport/ Aadhaar Card (with photograph)/ E-Aadhaar/ Ration Card./ Aadhaar Enrolment No. with Photo. All other ID/Photocopies of IDs even if attested/scanned photo of IDs in mobile phone will NOT be considered as valid ID Proof.</li>
                                           <br/>  <li><strong>The candidate must bring PwD certificate issued by the Competent Authority, if claiming relaxation under PwD category. The scribe must also carry his/ her own Self Declaration(Undertaking) regarding educational qualification, etc., passport size photograph, valid government identity and self-declaration (Undertaking) regarding COVID-19 (as per above format).</strong></li>
                                           <br/>  <li>Candidates are <strong> NOT allowed</strong> to carry any personal belongings including electronic devices, mobile phone and other banned/ prohibited items listed in the Information Bulletin to the Examination Centre. Examination Officials will not be responsible for safe keep of personal belongings and there will be no facility.</li>
                                           <br/>  <li>Shoes/footwear with thick soles and garments with large buttons are NOT permitted.</li>
                                           <br/>  <li>Five Blank paper sheets for rough work will be provided in the examination Hall/Room. Candidates must write their name and Roll Number at the top of each of the sheet(s) and must drop the sheet/s in the designated drop box without fail, before leaving the examination Hall/Room. Failure to do so may result in non-evaluation of answers.</li>
                                          <br/>   <li>Duly filled Admit Card at the end of examination must be dropped in the designated drop box. Failure to do so may result in non-evaluation of answers.</li>
                                          <br/>   <li>	No Candidate should adopt any unfair means or indulge in any unfair examination practices. All the examination centres are under surveillance of CCTV and equipped with Jammers. </li>
                                          <br/>   <li>	If at any stage, it is found that the candidate has submitted multiple Applications and/or appeared in more than one date/shift, then the candidature will be cancelled and legal action will be taken including debarring in all future examinations conducted by NTA.</li>
                                        <br/> <li>	Candidates are advised to check updates on NTAs website regularly. They should also check their mailbox on the registered E-mail address and SMS in their registered Mobile No. for latest updates and information.</li>  
                                         <br/>    <li>The scores of candidates taking up the entrance examination JAT -BMS/BBA(FIA) & B.A. (Hons.) Business Economics shall be subjected to a Normalization Process as mentioned in NTA Website - https://jeemain.nic.in/WebInfo/Handler/FileHandler.ashx?i=File&ii=4&iii=Y</li> 
                                         <br/>    <li>	There is a common Entrance Test for M.Phil. and Ph.D. programme.</li> 
                                         <br/>    <li>The mode of the examination shall be Computer Based Test (CBT). Candidate must enter his/her Username (Examination Roll No.), Pin No. (Date of birth in YYYYMMDD) and Password (which shall be given in the Examination Hall) to login 5 minutes before the Examination Start time. Please ensure that your Name and other details which will subsequently appear on the screen are correct.

</li>    
                                        </ol>
                                    </td>
                                     

                                </tr> 
                                <tr>
                                    <td colspan="3" align="center" style="font-size:14px;color:blue">NTA website: www.nta.ac.in and nta.ac.in/DuetExam.
For any Assistance:Email:duet@nta.ac.in / Phone-0120-6895200
                                        </td>
                                    </tr>
                             
                            </table>
                        </td>


                    </tr>
                </table>
                </div>
              
               
               
      
                 <div class="pagebreak">                      
                <table style="width: 100%; border-style: solid; background-attachment: scroll; background-repeat: repeat;padding:14px" >
                    <tr>
                        <td >
                            <table style="width: 100%; font-family: Verdana; font-size: 12px;">
                                <tr>
                                    <td style="width: 0.5%;"></td>
                                    <td style="width: 99%; text-align: center; text-decoration: underline; font-weight: bold;font-size:13px;color:white;background-color:blue">ADVISORY  FOR CANDIDATES REGARDING COVID-19<br/> <br/> </td>
                                    
                                    <td style="width: 0.5%;"></td>
                                </tr>
                                <tr>
                                    <td colspan="3">NTA will implement Social Distancing measures as per Government of India guidelines in current situation of COVID-19 to ensure health & safety of the candidates. Adequate measures are implemented for safety of all without compromising the high standards, sanctity, and fairness in conduct of the examination. Candidates are also required to adhere to guidelines and new process for Social Distancing and hygiene to ensure safety & health of their own and fellow candidates.
                                        </td>
                                    </tr>

                                <tr><td colspan="3">
                                    For safety purposes, NTA strongly advises candidates not to bring anything other than permitted items. However, in case of unavoidable situation, there will be arrangement to store the bags at centres at owner’s risk. 
                                   </td> </tr>

                                  <tr><br/><td colspan="3" style="font-weight:bold">
                                      Preparation at centre
                                   </td> </tr>
                                <tr>
                                   
                                    <td colspan="3">
                                        <ol type="i" style="text-align:justify">
                                            <li>Standard Operating Procedures for implementing safety precautions and for maintaining required standard of hygiene are getting implemented.</li>
                                            <li>Before each shift starts, Seating Area will be thoroughly sanitized - monitor keyboard, mouse, webcam, desk and the chair. All door handles, staircase railing, lift buttons, etc will be disinfected. Wheelchairs (if present at the venue) will also be disinfected.</li>
                                            <li>Gap between 2 seats will be maintained as per GOI guidelines. </li>
                                            <li>Hand Sanitizer will be available at entry and inside the exam venue at various places for candidates and centre staff to use. </li>
                                            <li>Barcode readers will be available at the entry point to scan barcode on the Admit Card. The Lab number will be informed to the candidate at this point.</li>
                                             <li>Rough sheets will be kept at all desks before start of exam by invigilators wearing gloves to ensure hygiene.</li>
                                            <li>It is ensured that all the processes are touch free, to the maximum possible extent, to ensure Social Distancing norms.</li>
                                            <li>Candidate to reach Centre as per the Reporting/Entry time at Centre given in the Admit Card to avoid any crowding at the centre at the time of entry and to maintain social distancing.</li>
                                                                                      
                                        </ol>
                                    </td>
                                </tr>

                                  <tr><td colspan="3" style="font-weight:bold">
                                     Pre-Exam Preparation
                                   </td> </tr>
                                <tr>
                                    <td colspan="3">
                                        <ol type="i" style="text-align:justify">
                                            <li>Candidate to check Reporting/ Entry time at Centre given in the Admit Card and to reach centre as per Reporting time only to avoid any crowding at the centre at the time of entry and to maintain social distancing.
                                                </li>
                                            <li>Candidate should fill Admit card as per instructions completely and properly. 
                                                </li>
                                            <li><strong>Candidates will be permitted to carry only certain items with them into the venue </strong>
                                                <ul>
                                                    <li><strong>Personal transparent water bottle</strong>
                                                        </li>
                                                    <li><strong>Personal hand sanitizer (50 ml)</strong>
                                                        </li>
                                                    <li><strong>A simple transparent pen</strong>
                                                        </li>
                                                    <li><strong>Exam related documents (Admit Card, ID card, Photographetc). Please refer to important instructions mentioned in Page No-2.</strong>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ol>
                                        </td>
                                    </tr>

                                <tr><td colspan="3" style="font-weight:bold"><br/>
                                    At time of Entry
                                   </td> </tr>
                                <tr>
                                    <td colspan="3" >
                                <ol type="i" style="text-align:justify">
                                    <li>	Candidates need to maintain a space of at least 6 feet from each other at all the time. Queue manager / ropes and Floor Marks will be arranged outside the centre, follow the instructions provided by centre staff.</li>
                                     <li>Lab number will not be displayed outside the centre to avoid any crowding at any one place in any situation.</li>
                                     <li>Candidates will be required to sanitize hands  with Hand Sanitizer before entry in centre. Hand sanitizer will be available at various locations in the centre </li>
                                     <li>Candidate should bring duly filled in Admit card as per instructions.</li>
                                     <li><strong>Candidate will be offered a fresh 3 Ply mask before entry. In order to stop chances of any UFM being used in the examination, the candidate is expected to wear the freshly provided mask at the centre. The candidate will be required to remove the mask worn by him/ her from home, and use the mask provided at centre only.</strong> </li>
                                     <li>Candidate should bring Identity Proof and other documents as advised under<strong> Point-11 & 13 of IMPORTANT INSTRUCTIONS FOR CANDIDATES given on Page-2.</strong></li>
                                     <li>Do not bring prohibited items to exam centre as there are no arrangements available for safe keeping your belongings. Please refer <strong>Point-11 of IMPORTANT INSTRUCTIONS FOR CANDIDATES given on Page-2</strong> for permitted items.</li>
                                     <li>At time of entry, the filled in Undertaking on Admit Card,  and body temperature (using Thermo Guns) will be checked and centre staff will guide you to respective labs after scanning bar code at Admit Card. Candidates are required to strictly adhere to instructions provided by centre staff.</li>
                                <li>Please observe that no-one will be denied permission to appear for examination, until he/ she violates the COVID-19 directives/advisories of Government (Central/State) applicable on the day of exam and instructions mentioned in the Admit Card.</li> 
                                </ol>
                                        </td>
                                </tr>


                                 <tr><td colspan="3" style="font-weight:bold"><br/>
                                   During Examination
                                   </td> </tr>
                                <tr>
                                    <td colspan="3" >
                                <ol type="i" style="text-align:justify">
                                    <li>Five A4 size sheets will be kept at each candidate’s desk for use by candidate for Rough work. If Additional sheets are required for rough work by the candidate, the same shall be made available on demand.</li>
                                 <li>Before each shift starts (and after last shift of the candidate) Seating Area will be thoroughly sanitized - monitor keyboard, mouse, webcam, desk and the chair. Candidates can further sanitize the same with sanitizers that will be made available in the examination lab/room/hall.</li>
                                    <li><strong>Candidates are required to paste passport size photograph and sign on the Attendance Sheet after sanitizing hands with sanitizer.</strong></li>
                                     </ol>
                                        </td>
                                </tr>

                                 <tr><td colspan="3" style="font-weight:bold"><br/>
                                  After Examination
                                   </td> </tr>
                                <tr>
                                    <td colspan="3" >
                                <ol type="i" style="text-align:justify">
                                    <li>On completion of a shift, the candidates will be permitted to move out in an orderly manner one candidate at a time. Please wait for instructions from invigilator and do not get up from your seat until advised.</li>
                               <li><strong>	Candidate must drop the Admit Card and Rough Sheets in the advised boxes after displaying to the staff available next to drop box. If any candidate misses to drop Admit Card or Rough Sheets in boxes, action (which also includes disqualification from the exam) can be taken against him/her.
                                   </strong></li>
                                         </ol>
                                        </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="text-align:center">
                                        NTA wishes your health and safety and requests your cooperation for smooth and secure conduct of the examination.
                                    </td>
                                    </tr>
                              
                            </table>
                        </td>


                    </tr>
                </table>
              
                
            </div>
        </div>

    </form>
</body>
</html>
