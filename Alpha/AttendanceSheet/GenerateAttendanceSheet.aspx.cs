/* =============================================================================================================
 * Project:CMAT
 * Module : Entry College AND Create College Capacity
 * Developed By : Bipin Ojha
 * Created Date: 10 Aug 2012
 * 
 * =========================================================================================================*/
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Common.Class;
using System.Text.RegularExpressions;
using System.Text;
using System.IO;
using System.Web.Mail;
//using MSCaptcha;
using System.Security.Cryptography;
//using CaptchaDotNet2.Security.Cryptography;
using System.Globalization;
using System.Threading;
using System.Net;
using EvoPdf;
using System.Drawing;
//using EvoPdf;
using KeepAutomation.Barcode.Bean;
using KeepAutomation.Barcode;
using System.Drawing.Imaging;


public partial class SchedulerSep2014_GenerateRoaster : System.Web.UI.Page
{
    CommonPerception MySql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (String.IsNullOrEmpty(Convert.ToString(Session["CentreCode"])))
        {
            Response.Redirect("../AttendanceSheet/Login.aspx");
        }

        if (!IsPostBack)
        {
            CenterList();
        }

    }

    #region Clearfileds()
    void Clearfields()
    {


    }

    #endregion


    protected void btnCreate_Click(object sender, EventArgs e)
    {
        string Centerid = rbCenterName.SelectedValue;
        int Slot = Convert.ToInt32(rbSlot.SelectedValue);
        string ExamDate = rbExamDate.SelectedValue;

        DataSet ds = MySql.GetDataSetWithQuery("Exec SP_GenerateRoaster_2019 '" + Centerid + "','" + Slot + "','" + ExamDate + "' ");
        if (ds.Tables[0].Rows.Count <= 0)
        {
            string scriptSTR = "<script language=javascript>alert('No Data Record!');</script>";
            Page.RegisterStartupScript("clientscript", scriptSTR);
            return;
        }
        
        try
        {
            string url = "";
            url = "AttendanceSheet.aspx?Centerid=" + Centerid + "&slot=" + Slot + "&ExamDate=" + ExamDate + "";
            Response.Redirect(url);
            
        }
        catch (Exception ex)
        {
            return;
        }
    }

    #region Created Center list
    protected void CenterList()
    {
        if (String.IsNullOrEmpty(Convert.ToString(Session["CentreCode"].ToString())))
        {
            Response.Redirect("../AttendanceSheet/Login.aspx");
        }

        DataSet DsCenterlist = new DataSet();
        DsCenterlist = null;
        //DsCenterlist = MySql.GetDataSetWithQuery("Select distinct a.[TC NAME]  +'|'+a.CenterCode   as CollegeName ,b.CenterId  as CenterId from dbo.CenterDetails  a inner join tbCandidateData   b on a.CenterId  =b.CenterId   where a.CenterCode='" + Session["CentreCode"].ToString() + "'");
        DsCenterlist = MySql.GetDataSetWithQuery("Select distinct TESTCENTERNAME  +'|'+AtcCode   as CollegeName , CenterId from dbo.CenterMaster   where CenterId ='" + Session["CentreCode"].ToString() + "'");
        if (DsCenterlist.Tables[0].Rows.Count > 0)
        {
            trcenterlist.Visible = true;
            rbCenterName.DataSource = DsCenterlist;
            rbCenterName.DataTextField = "CollegeName";
            rbCenterName.DataValueField = "CenterId";
            rbCenterName.DataBind();
            rbCenterName.Enabled = false;
        }
        else
        {
            //do nothing
            Session.Abandon();
            Response.Write("<script  language='javascript' align='center'>window.alert('There is No Data scheduled for this Centre');history.back(-1);</script> ");
        }
    }
    #endregion

    public void ExportToExcel()
    {
        DataSet dt = new DataSet();
        string Date = rbExamDate.SelectedValue;
        string CenterName = rbCenterName.SelectedItem.Text;
        string Centerid = rbCenterName.SelectedValue;
        int Slot = Convert.ToInt32(rbSlot.SelectedValue);
        string ExamDate = rbExamDate.SelectedValue;


        dt = MySql.GetDataSet("Exec SP_ExcelData_2019 '" + rbCenterName.SelectedValue + "', '" + Slot + "', '" + ExamDate + "'");

        if (dt != null && dt.Tables[0].Rows.Count > 0)
        {
            DataTable dtdata = dt.Tables[0];
            DataTable dtCloned = dtdata.Clone();
            dtCloned.Columns[0].DataType = typeof(string);
            dtCloned.Columns[1].DataType = typeof(string);
            dtCloned.Columns[2].DataType = typeof(string);
            dtCloned.Columns[3].DataType = typeof(string);

            foreach (DataRow row in dtdata.Rows)
            {
                dtCloned.ImportRow(row);
            }
            DataRow dr = dtCloned.NewRow();
            dr[0] = "NTA DUET EXAMINATION";
            dtCloned.Rows.InsertAt(dr, 0);
            DataRow dr1 = dtCloned.NewRow();
            dr1[0] = "ATTENDANCE SHEET";
            dtCloned.Rows.InsertAt(dr1, 1);

            DataRow dr2 = dtCloned.NewRow();
            dr2[0] = "Name of Exam Center";
            dr2[2] = CenterName;
            dtCloned.Rows.InsertAt(dr2, 2);

            DataRow dr3 = dtCloned.NewRow();
            dr3[0] = "Date of Exam";
            dr3[2] = rbExamDate.SelectedItem.Text.ToString();
            dtCloned.Rows.InsertAt(dr3, 3);

            DataRow dr4 = dtCloned.NewRow();
            dr4[0] = "Exam Time";
            dr4[2] = Convert.ToString(dt.Tables[0].Rows[0]["SlotTiming"]);
            dtCloned.Rows.InsertAt(dr4, 4);

            dtCloned.Columns.Remove("SlotTiming");

            DataRow dr5 = dtCloned.NewRow();
            dr5[0] = "S.NO";
            dr5[1] = "Roll Number";
            dr5[2] = "CandidateName";
            dr5[3] = "PaperName";
            dtCloned.Rows.InsertAt(dr5, 5);


            //string filename = rbCenterName.SelectedItem.Text + ".xls";
            string attachment = "attachment; filename=NTADUET-AttendanceSheet.xls";
            Response.ClearContent();
            Response.AddHeader("content-disposition", attachment);
            Response.ContentType = "application/excel";
            StringWriter stw = new StringWriter();
            HtmlTextWriter htextw = new HtmlTextWriter(stw);
            GridView dgGrid = new GridView();
            dgGrid.DataSource = dtCloned;
            dgGrid.DataBind();

            dgGrid.HeaderRow.Cells[0].Visible = false;
            dgGrid.HeaderRow.Cells[1].Visible = false;
            dgGrid.HeaderRow.Cells[2].Visible = false;
            dgGrid.HeaderRow.Cells[3].Visible = false;

            foreach (GridViewRow row in dgGrid.Rows)
            {
                if (row.RowIndex == 0 || row.RowIndex == 1)
                {
                    row.BackColor = Color.LightGray;
                    row.Cells[1].Visible = false;
                    row.Cells[2].Visible = false;
                    row.Cells[3].Visible = false;
                    row.Cells[0].Attributes.Add("colspan", "4");
                    row.Cells[0].Attributes.Add("style", "text-align: center");
                }

                if (row.RowIndex == 2 || row.RowIndex == 3 || row.RowIndex == 4)
                {
                    row.BackColor = Color.LightGray;
                    row.Cells[1].Visible = false;
                    row.Cells[3].Visible = false;
                    row.Cells[0].Attributes.Add("colspan", "2");
                    row.Cells[0].Attributes.Add("style", "text-align: center");
                    row.Cells[2].Attributes.Add("colspan", "2");
                    row.Cells[2].Attributes.Add("style", "text-align: center");

                }
            }

            dgGrid.RenderControl(htextw);
            Response.Write(stw.ToString());

            Response.End();
        }
        else
        {
            string scriptSTR = "<script language=javascript>alert('No Data Record!');</script>";
            Page.RegisterStartupScript("clientscript", scriptSTR);
            return;
        }
    }

    protected void btnExportToExcel_Click(object sender, EventArgs e)
    {
        try
        {
            ExportToExcel();
        }
        catch (Exception ex) { }
    }
}