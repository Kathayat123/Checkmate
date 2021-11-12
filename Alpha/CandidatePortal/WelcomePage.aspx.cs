using Common.Class;
using KeepAutomation.Barcode.Bean;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CandidatePortal_WelcomePage : ClsErrorLog
{
    CommonPerception mysql = new CommonPerception();
    string FormNo = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string Encrypt = Convert.ToString(Request.QueryString["ID"]);
        FormNo = Decrypt(Encrypt, true);

        if (String.IsNullOrEmpty(FormNo))
        {
            Response.Redirect("Login.aspx");
        }

        DataSet ds = mysql.GetDataSet("Select * from ExamData where FormNo = '" + FormNo + "' order by Course");

        trDownload1.Visible = false;
        trDownload2.Visible = false;
        trDownload3.Visible = false;
        trDownload4.Visible = false;
        trDownload5.Visible = false;
        trDownload6.Visible = false;
        trDownload6.Visible = false;

        if (ds != null && ds.Tables.Count > 0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow dr = ds.Tables[0].Rows[i];
                lblName.Text = "WELCOME " + " " + Convert.ToString(dr["FirstName"]) + "!";
                string Subject = Convert.ToString(dr["Course"]);
                string Rollnumber = Convert.ToString(dr["Rollnumber"]);


                if (i == 0)
                {
                    trDownload1.Visible = true;
                    btnDownload1.Text = Subject;
                    btnDownload1.ToolTip = Rollnumber;
                }
                if (i == 1)
                {
                    trDownload2.Visible = true;
                    btnDownload2.Text = Subject;
                    btnDownload2.ToolTip = Rollnumber;
                }
                if (i == 2)
                {
                    trDownload3.Visible = true;
                    btnDownload3.Text = Subject;
                    btnDownload3.ToolTip = Rollnumber;
                }
                if (i == 3)
                {
                    trDownload4.Visible = true;
                    btnDownload4.Text = Subject;
                    btnDownload4.ToolTip = Rollnumber;
                }
                if (i == 4)
                {
                    trDownload5.Visible = true;
                    btnDownload5.Text = Subject;
                    btnDownload5.ToolTip = Rollnumber;
                }
                if (i == 5)
                {
                    trDownload6.Visible = true;
                    btnDownload6.Text = Subject;
                    btnDownload6.ToolTip = Rollnumber;
                }
                if (i == 6)
                {
                    trDownload7.Visible = true;
                    btnDownload7.Text = Subject;
                    btnDownload7.ToolTip = Rollnumber;
                }
            }
        }
    }

    protected void btnDownload1_Click(object sender, EventArgs e)
    {
        string RollNumber = btnDownload1.ToolTip;
        Response.Redirect("AdmitCard.aspx?ID=" + Encrypt(RollNumber, true));
    }

    protected void btnDownload2_Click(object sender, EventArgs e)
    {
        string RollNumber = btnDownload2.ToolTip;
        Response.Redirect("AdmitCard.aspx?ID=" + Encrypt(RollNumber, true));
    }

    protected void btnDownload3_Click(object sender, EventArgs e)
    {
        string RollNumber = btnDownload3.ToolTip;
        Response.Redirect("AdmitCard.aspx?ID=" + Encrypt(RollNumber, true));
    }

    protected void btnDownload4_Click(object sender, EventArgs e)
    {
        string RollNumber = btnDownload4.ToolTip;
        Response.Redirect("AdmitCard.aspx?ID=" + Encrypt(RollNumber, true));
    }

    protected void btnDownload5_Click(object sender, EventArgs e)
    {
        string RollNumber = btnDownload5.ToolTip;
        Response.Redirect("AdmitCard.aspx?ID=" + Encrypt(RollNumber, true));
    }

    protected void btnDownload6_Click(object sender, EventArgs e)
    {
        string RollNumber = btnDownload6.ToolTip;
        Response.Redirect("AdmitCard.aspx?ID=" + Encrypt(RollNumber, true));
    }

    protected void btnDownload7_Click(object sender, EventArgs e)
    {
        string RollNumber = btnDownload7.ToolTip;
        Response.Redirect("AdmitCard.aspx?ID=" + Encrypt(RollNumber, true));
    }
}