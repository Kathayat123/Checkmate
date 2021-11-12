using Common.Class;
using KeepAutomation.Barcode.Bean;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PMPortal_ListOfMasterQps : System.Web.UI.Page
{
    CommonPerception mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindList();
        }
    }

    private void BindList()
    {
        string SavePath = "";
        StringBuilder html = new StringBuilder();
        DataSet ds = mysql.GetDataSet("Select *, Case when savedpath is null then '' else 'Yes' end Uploaded from MasterQP where Isactive = 1 Order by ExamDate, Shift");
        if (ds != null && ds.Tables.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string ExamDate = Convert.ToDateTime(dr["ExamDate"]).ToString("yyyy-MM-dd");
                string Shift = Convert.ToString(dr["Shift"]);
                string Subject = Convert.ToString(dr["Subject"]);
                if (Convert.ToString(dr["Uploaded"]).ToUpper() == "YES")
                    SavePath = Convert.ToString(dr["SavedPath"]).Replace(@"\\192.168.183.15\Projects\Alpha_July2019\", "http://ntaexam.cbtexam.in/");

                if (ExamDate == "2019-07-03" && Shift == "1")
                {
                    tr0301.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph03072019Shift1.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-03" && Shift == "2")
                {
                    tr0302.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph03072019Shift2.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-03" && Shift == "3")
                {
                    tr0303.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph03072019Shift3.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }

                if (ExamDate == "2019-07-04" && Shift == "1")
                {
                    tr0401.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph04072019Shift1.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-04" && Shift == "2")
                {
                    tr0402.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph04072019Shift2.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-04" && Shift == "3")
                {
                    tr0403.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph04072019Shift3.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }

                if (ExamDate == "2019-07-05" && Shift == "1")
                {
                    tr0501.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph05072019Shift1.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-05" && Shift == "2")
                {
                    tr0502.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph05072019Shift2.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-05" && Shift == "3")
                {
                    tr0503.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph05072019Shift3.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-06" && Shift == "1")
                {
                    tr0601.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph06072019Shift1.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-06" && Shift == "2")
                {
                    tr0602.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph06072019Shift2.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-06" && Shift == "3")
                {
                    tr0603.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph06072019Shift3.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-07" && Shift == "1")
                {
                    tr0701.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph07072019Shift1.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-07" && Shift == "2")
                {
                    tr0702.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph07072019Shift2.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
                if (ExamDate == "2019-07-07" && Shift == "3")
                {
                    tr0703.Visible = true;
                    html.Append("<a class='btn btn-4 swing' target='_blank' href='" + SavePath + "'>" + Subject + "</a>");
                    html.Append("<br/>");
                    ph07072019Shift3.Controls.Add(new LiteralControl(html.ToString()));
                    html.Clear();
                }
            }
        }
    }
}