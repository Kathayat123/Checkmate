using Common.Class;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DU_WelcomePage : ClsErrorLog
{
    CommonPerception mysql = new CommonPerception();
    public string RollNo = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
        try
        {
            string EncryRollNo = Convert.ToString(Request.QueryString["RollNo"]);

            RollNo = Decrypt(EncryRollNo.Replace(' ', '+'), true);

            int count = mysql.SingleCellResult("Select Count(*) from tblCandidateInfo Where rollnumber = '" + RollNo + "'");
            if (count <= 0)
            {
                Response.Redirect("HomePage.aspx");
                return;
            }

            lblMessage.Text = "";
        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }


    protected void btnResultCat_Click(object sender, EventArgs e)
    {
        try
        {
            string EncryRollNo = Convert.ToString(Request.QueryString["RollNo"]);
            string RollNo = Decrypt(EncryRollNo.Replace(' ', '+'), true);

            string UpdateStatus = "Update dbo.tblCandidateInfo set ResultDownload='1', ResultDownloadDate=getdate() Where Rollnumber='" + RollNo + "'";
            mysql.ExecuteNonQuery(UpdateStatus);
            //Response.Redirect(Convert.ToString(ConfigurationManager.AppSettings["ResponseSheet"]) + "\\" + RollNo + ".pdf");

            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + RollNo + ".pdf");
            Response.TransmitFile(Convert.ToString(ConfigurationManager.AppSettings["ResponseSheet"]) + "\\" + RollNo + ".pdf");
            Response.End();
        }
        catch { }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string EncryRollNo = Convert.ToString(Request.QueryString["RollNo"]);
        Response.Redirect("Objection.aspx?RollNo=" + EncryRollNo);

    }
    protected void btnAns_Click(object sender, EventArgs e)
    {
        try
        {
            string strfilename = "";
            strfilename = mysql.SingleCellResultInString("Select PapersetName from tblCandidateInfo Where rollnumber = '" + RollNo + "'");

            if (strfilename != "")
            {
                strfilename = strfilename + ".pdf";
                Response.ContentType = "Application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + strfilename);
                Response.TransmitFile(Convert.ToString(ConfigurationManager.AppSettings["ResponseSheet"]) + "\\" + strfilename);
                Response.End();
            }
        }
        catch (Exception ex) { }
    }
}