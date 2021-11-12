using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using Common.Class;
public partial class SchedulerJune2016_Roster : System.Web.UI.Page
{
    string strcenterid = "";
    string strslot = "";
    string strexamtime = "";
    string strexammode = "";
    string strcount = "";
    string seat = "";
    CommonPerception MySql = new CommonPerception();

    protected void Page_Load(object sender, EventArgs e)

    {
        if (!IsPostBack)
        {
            strcenterid = Request.QueryString["centerid"].ToString();
            strslot = Request.QueryString["slot"].ToString();
            strexamtime = Request.QueryString["ExamDate"].ToString();
            
        }
        GenerateRoster();
    }

    void GenerateRoster()
    {
        DataSet ds = MySql.GetDataSetWithQuery("Exec SP_GenerateRoaster_2019 '" + strcenterid + "','" + strslot + "','" + strexamtime + "' ");
        DataTable dt = ds.Tables[0];
        int startpage = 0;
        int mod = Convert.ToInt32(ds.Tables[0].Rows.Count) % 5 > 0 ? 1 : 0;
        int endpage = (Convert.ToInt32(ds.Tables[0].Rows.Count) / 5) + mod;
        StringBuilder html = new StringBuilder();
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            if (i == 0 || i % 5 == 0)
            {
                if (i > 0)
                {
                    #region Footer
                    html.Append("<tr>");
                    html.Append("<td colspan='3'>");

                    html.Append("<table border = '1' style='font-family: Verdana; font-size: 10px;border-width: 1px; cellpadding='0'; cellspacing='0'' width='100%' >");
                    html.Append("<tr style='width:100%'>");
                    html.Append("<td style='width:50%'>");
                    html.Append("Invigilator Should ");
                    html.Append("</td>");

                    html.Append("<td style='width:10%'>");
                    html.Append("</td>");

                    html.Append("<td style='width:20%'>");
                    html.Append("Invigilator  ");
                    html.Append("</td>");

                    html.Append("<td style='width:20%'>");
                    html.Append("Centre Head with seal ");
                    html.Append("</td>");
                    html.Append("</tr>");

                    html.Append("<tr>");
                    html.Append("<td rowspan='2'>");
                    html.Append("1. Carefully check identity of each candidate appearing in the examination from the photograph and signature provided in the Attendance Sheet and Admit Card with authorised photo ID  ");
                    html.Append("</br>");
                    html.Append("2. Ensure that candidate mentions the Mother’s Name,System No. , puts signature, Left Thumb Impression and Photograph at the appropriate place on this Attendance Sheet. ");
                    html.Append("</br>");
                    html.Append("3. Collect Admit Card from the Candidate. ");
                    html.Append("</br>");
                    html.Append("4. Mark ‘ABSENT’ with RED PEN at the space provided for System No. and the Candidate’s signature for those ABSENT. ");

                    html.Append("</td>");

                    html.Append("<td>");
                    html.Append("Name  ");
                    html.Append("</td>");
                    html.Append("<td>");
                    html.Append("</td>");
                    html.Append("<td>");
                    html.Append("</td>");
                    html.Append("</tr>");

                    html.Append("<tr>");
                    html.Append("<td>");
                    html.Append("Signature with Date  ");
                    html.Append("</td>");
                    html.Append("<td>");
                    html.Append("</td>");


                    html.Append("<td>"); 
                    html.Append("</td>");
                    html.Append("</tr>");

                    html.Append("</table>");
                    html.Append("</td>");
                    html.Append("</tr>");
                    html.Append("</table>");
                    html.Append("</br>"); html.Append("</br>"); html.Append("</br>");
                    #endregion

                    html.Append("<br/>");
                    html.Append("<br/>");
                }
                startpage = (i / 5) + 1;

                #region Header
                html.Append("<table border = '0' style='font-family: Verdana; font-size: 18px;border-width: 1px;' cellpadding='0'; cellspacing='0'' width='100%' >");
                html.Append("<tr>");
                html.Append("<td style='width:30%'>");
                html.Append("<img src='NTA.png' alt=''>");
                html.Append("</td>");
                html.Append("<td style='width:40%;font-size:14px'>");
                html.Append("<b>DUET - 2019 </br><u>ATTENDANCE SHEET </u></b>");
                html.Append("</td style='width:30%'>");
                html.Append("<td align='right'>");
                html.Append("Page <span style=color: navy; font-weight: bold>" + startpage + "</span> of <span style='font-size: 16px; color: green; font-weight: bold'>" + endpage + "</span> pages");
                html.Append("</td>");
                html.Append("</tr>");
                html.Append("</table>");

                html.Append("<table style='font-family: Verdana; font-size:12px'>");
                html.Append("<tr>");
                html.Append("<td>");
                html.Append("EXAM DATE AND TIME :");
                html.Append("</td>");
                html.Append("<td style='height:20px;padding-left:10px'>");
                html.Append(Convert.ToString(ds.Tables[0].Rows[i]["ExamDate"]).ToUpper());
                html.Append("</td>");
                html.Append("<td style='height:20px;padding-left:30px'>");
                html.Append(Convert.ToString(ds.Tables[0].Rows[i]["Duration"]));
                html.Append("</td>");
                html.Append("</tr>");

                html.Append("<tr>");
                html.Append("<td>");
                html.Append("CENTER NO & NAME : ");
                html.Append("</td>");
                html.Append("<td style='height:20px;padding-left:10px'>");
                html.Append(Convert.ToString(ds.Tables[0].Rows[i]["CenterCode"]).ToUpper());
                html.Append("</td>");
                html.Append("<td style='height:20px;padding-left:30px'>");
                html.Append(Convert.ToString(ds.Tables[0].Rows[i]["CollegeName"]));
                html.Append("</td>");
                html.Append("</tr>");

                html.Append("</table>");

                #endregion

                html.Append("<table border = '1' style='font-family: Verdana; font-size: small;border-width: 1px;' cellpadding='0'; cellspacing='0'' width='100%' >");
            }

            #region Main Content
            html.Append("<tr width='100%'>");
            html.Append("<td width='30%'>");
            html.Append("<table  width='100%'>");
            html.Append("<tr>");
            html.Append("<td colspan='2'>");
            html.Append("Roll No.:");
            html.Append(Convert.ToString(ds.Tables[0].Rows[i]["RollNumber"]));
            html.Append("</td>");
            html.Append("</tr>");
            html.Append("<tr>");
            html.Append("<td colspan='2'>");
            html.Append("Name:");
            html.Append(Convert.ToString(ds.Tables[0].Rows[i]["FirstName"]));
            html.Append("</td>");
            html.Append("</tr>");
            html.Append("<tr>");
            html.Append("<td colspan='1'>");
            string PhotoURL = "http://exam.cbtexam.in/alphaphoto/" + Convert.ToString(ds.Tables[0].Rows[i]["ApplicationName"]) + "/photo/" + Convert.ToString(ds.Tables[0].Rows[i]["UploadedPhotoFile"]).ToUpper();
            html.Append("<img Width='100px' Height='100px' src=\"" + PhotoURL + "\">");
            html.Append("</td>");
            html.Append("<td colspan='1'>");
            string SignURL = "http://exam.cbtexam.in/alphaphoto/" + Convert.ToString(ds.Tables[0].Rows[i]["ApplicationName"]) + "/signature/" + Convert.ToString(ds.Tables[0].Rows[i]["SignatureFile"]).ToUpper();
            html.Append("<img Width='100px' Height='100px' src=\"" + SignURL + "\">");
            html.Append("</td>");
            html.Append("</tr>");
            html.Append("<tr>");
                html.Append("<td colspan='2'>");
                html.Append("Application No.:");
                html.Append(Convert.ToString(ds.Tables[0].Rows[i]["FormNo"]));
                html.Append("</td>");
            html.Append("</tr>");
            html.Append("<tr>");
            html.Append("<td colspan='2'>");
            html.Append("Course :");
            html.Append(Convert.ToString(ds.Tables[0].Rows[i]["Course"]));
            html.Append("</td>");
            html.Append("</tr>");
            html.Append("</table>");
            html.Append("<br/>");
            html.Append("</td>");
            html.Append("<td width='70%'>");
            html.Append("<table border = '1' style='font-family: Verdana; font-size: 12px;border-width: 1px; cellpadding='0'; cellspacing='0'' width='100%' >");
            html.Append("<tr style='height:50px;'>");
            html.Append("<td style='30%'>");
            html.Append("Mother's Name(To be filled by Candidate): ");
            html.Append("<br/>"); html.Append("<br/>");
            html.Append("</td>");
            html.Append("<td style='30%'>");
            html.Append("Admit Card Collected <br/> Yes/No:");
            html.Append("<br/>"); html.Append("<br/>");
            html.Append("</td>");
            html.Append("<td rowspan='4' style='vertical-align: top;'>");
            html.Append("Paste Candidate’s Photo ");
            html.Append("</td>");
            html.Append("</tr>");
            html.Append("<tr style='height:50px;'>");
            html.Append("<td>");
            html.Append("System No.:");
            html.Append("</td>");
            html.Append("<td rowspan='3' style='vertical-align: top;'>");
            html.Append("Candidate's Left Thumb Impression ");
            html.Append("</td>");
            html.Append("</tr>");
            html.Append("<tr style='height:50px;'>");
            html.Append("<td>");
            html.Append("Candidate’s Signature : <br/> (beginning of Paper) ");
            html.Append("<br/>"); html.Append("<br/>"); html.Append("<br/>");
            html.Append("</td>");
            html.Append("</tr>");
            html.Append("<tr>");
            html.Append("<td>");
            html.Append("Candidate’s Signature : <br/> (end of Paper) ");
            html.Append("<br/>"); html.Append("<br/>"); html.Append("<br/>");
            html.Append("</td>");
            html.Append("</tr>");
            html.Append("</table>");
            html.Append("</td>");
            html.Append("</tr>");
            #endregion
        }

        #region Footer
        html.Append("<tr>");
        html.Append("<td colspan='3'>");

        html.Append("<table border = '1' style='font-family: Verdana; font-size: 10px;border-width: 1px; cellpadding='0'; cellspacing='0'' width='100%' >");
        html.Append("<tr style='width:100%'>");
        html.Append("<td style='width:50%'>");
        html.Append("Invigilator Should ");
        html.Append("</td>");

        html.Append("<td style='width:10%'>");
        html.Append("</td>");

        html.Append("<td style='width:20%'>");
        html.Append("Invigilator  ");
        html.Append("</td>");

        html.Append("<td style='width:20%'>");
        html.Append("Centre Head with seal ");
        html.Append("</td>");
        html.Append("</tr>");

        html.Append("<tr>");
        html.Append("<td rowspan='2'>");
        html.Append("1. Carefully check identity of each candidate appearing in the examination from the photograph and signature provided in the Attendance Sheet and Admit Card with authorised photo ID  ");
        html.Append("</br>");
        html.Append("2. Ensure that candidate mentions the Mother’s Name,System No. , puts signature, Left Thumb Impression and Photograph at the appropriate place on this Attendance Sheet. ");
        html.Append("</br>");
        html.Append("3. Collect Admit Card from the Candidate. ");
        html.Append("</br>");
        html.Append("4. Mark ‘ABSENT’ with RED PEN at the space provided for System No. and the Candidate’s signature for those ABSENT. ");

        html.Append("</td>");



        html.Append("<td>");
        html.Append("Name  ");
        html.Append("</td>");
        html.Append("<td>");
        html.Append("</td>");
        html.Append("<td>");
        html.Append("</td>");
        html.Append("</tr>");

        html.Append("<tr>");
        html.Append("<td>");
        html.Append("Signature with Date  ");
        html.Append("</td>");
        html.Append("<td>");
        html.Append("</td>");



        html.Append("<td>");
        html.Append("</td>");
        html.Append("</tr>");
        html.Append("</table>");

        #endregion


        PlaceHolder1.Controls.Add(new LiteralControl(html.ToString()));
    }


}