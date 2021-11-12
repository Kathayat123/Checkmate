using Common.Class;
using KeepAutomation.Barcode.Bean;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
        try
        {
            if (String.IsNullOrEmpty(Convert.ToString(Session["LoginId"])))
            {
                Response.Redirect("LoginPage.aspx");
            }
            lblName.Text = "WELCOME ADMIN !!!";

        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }

    protected void ddlSelect_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (ddlSelect.SelectedIndex > 0)
            {
                GetData();
            }
        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }

    public void GetData()
    {
        try
        {
            string sQuery = "";
            //DataTable distinctValues = new DataTable();
            string Server1 = "server=192.168.184.11,14333;database=alpha_2019;uid=attestuser;Password=Att3stPwd;Max Pool Size=1000;Min Pool Size=5";
            string Server2 = "server=192.168.184.12,1433;database=alpha_2019;uid=attestuser;Password=Att3stPwd;Max Pool Size=1000;Min Pool Size=5";
            string SelectOption = ddlSelect.SelectedValue;

            sQuery = "Select ApplicationName, Course, ExamDate,Shift, RollNumber  from ExamData Where IsDownload = 1 ";

            mysql.ExecuteNonQuery(@"Truncate table ApplicationWiseData
                                    Insert into ApplicationWiseData
                                    Select ApplicationName, Course, ExamDate, Shift, RollNumber from ExamData Where IsDownload = 1");

            DataTable dtAll = GetDataSet(sQuery, Server2).Tables[0];

            using (SqlConnection con = new SqlConnection(Server1))
            {
                using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
                {
                    //Set the database table name
                    sqlBulkCopy.DestinationTableName = "ApplicationWiseData";
                    con.Open();
                    sqlBulkCopy.WriteToServer(dtAll);
                    con.Close();
                }
            }

            lblCount.Text = "ADMIT CARD DOWNLOADED COUNT: " + SingleCellResultInString("Select Count(distinct rollnumber) from ApplicationWiseData", Server1);

            if (SelectOption == "1")
            {
                sQuery = @"IF OBJECT_ID('tempdb..#Temp') IS NOT NULL DROP TABLE #Temp Select distinct * Into #Temp from ApplicationWiseData
                          Select ApplicationName, count(*) TotalCount from #Temp group by ApplicationName order by ApplicationName ";
            }
            if (SelectOption == "2")
            {
                sQuery = @"IF OBJECT_ID('tempdb..#Temp') IS NOT NULL DROP TABLE #Temp Select distinct * Into #Temp from ApplicationWiseData
                        Select Course, count(*) TotalCount from #Temp group by Course order by Course ";
            }
            if (SelectOption == "3")
            {
                sQuery = @"IF OBJECT_ID('tempdb..#Temp') IS NOT NULL DROP TABLE #Temp Select distinct * Into #Temp from ApplicationWiseData
                        Select CONVERT(VARCHAR(10), ExamDate,105) ExamDate,Shift, count(*) TotalCount from #Temp group by CONVERT(VARCHAR(10), ExamDate,105), Shift order by ExamDate , Shift ";
            }
            gvData.DataSource = GetDataSet(sQuery, Server1);
            gvData.DataBind();
        }
        catch (Exception ex)
        {

        }
    }

    public string SingleCellResultInString(string strquery, string connstr)
    {
        SqlCommand dbcom;
        SqlConnection dbcon;
        string lcchkRec = "";
        dbcon = new SqlConnection(connstr);
        try
        {
            dbcon.Open();
            dbcom = new SqlCommand(strquery, dbcon);

            lcchkRec = dbcom.ExecuteScalar().ToString();
            dbcon.Close();
        }
        catch (Exception err)
        {

        }

        finally
        {
            if (dbcon.State == ConnectionState.Open)
            {
                dbcon.Close();
            }
        }
        return lcchkRec;
    }


    public DataSet GetDataSet(string sqlText, string ConnStr)
    {
        try
        {

            DataSet ds = null;
            SqlCommand dbcom;
            SqlConnection dbcon;
            SqlDataAdapter dadapter;

            // connection string
            dbcon = new SqlConnection(ConnStr);

            //call the stored procedure
            dbcom = new SqlCommand(sqlText, dbcon);
            //dbcom.CommandType=CommandType.StoredProcedure;
            dadapter = new SqlDataAdapter(dbcom);

            ds = new DataSet();
            dadapter.Fill(ds, "results");
            dbcon.Close();
            return ds;
        }
        catch (Exception ex)
        {


            return null;
        }
    }
}