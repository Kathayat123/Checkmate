using Common.Class;
using KeepAutomation.Barcode.Bean;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PMPortal_MasterQPTask : ClsErrorLog
{
    CommonPerception mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (String.IsNullOrEmpty(Convert.ToString(Session["LoginId"])))
            {
                Response.Redirect("LoginPage.aspx");
            }
            lblName.Text = "WELCOME ADMIN !!!";

            if (!IsPostBack)
            {
                BindGrid();
            }


        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }

    private void BindGrid()
    {
        gvData.DataSource = mysql.GetDataSet("Select *, Case when savedpath is null then '' else 'Yes' end Uploaded from MasterQP Order by Subject");
        gvData.DataBind();
    }
    protected void gvData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvData.EditIndex = -1;
        this.BindGrid();
    }
    protected void gvData_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvData.EditIndex = e.NewEditIndex;
        this.BindGrid();
    }
    protected void gvData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            try
            {
                string Uploaded = (e.Row.FindControl("lblSavedPath") as Label).Text;
                if (Uploaded.ToUpper() != "YES")
                {
                    (e.Row.FindControl("lnkView") as LinkButton).Visible = false;
                }
            }
            catch { }
        }
    }

    protected void gvData_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            GridViewRow row = gvData.Rows[e.RowIndex];
            int MasterID = Convert.ToInt32(gvData.DataKeys[e.RowIndex].Values[0]);
            bool IsActive = (row.FindControl("IsActive") as CheckBox).Checked;
            string SavedPath = @"\\192.168.183.15\Projects\Alpha_July2019\MASTER_QP\";
            //string SavedPath = @"D:\Files\MASTER_QP\";

            string FileName = (row.FindControl("lblSubject") as Label).Text;
            FileName = Regex.Replace(FileName, @"[^0-9a-zA-Z]+", "");

            if (!Directory.Exists(SavedPath))
            {
                Directory.CreateDirectory(SavedPath);
                SavedPath = SavedPath + '/' + FileName;
                (row.FindControl("fuUpload") as FileUpload).SaveAs(SavedPath);
            }
            else
            {
                SavedPath = SavedPath + '/' + FileName + ".pdf";
                (row.FindControl("fuUpload") as FileUpload).SaveAs(SavedPath);
            }

            bool Success = mysql.ExecuteNonQuery("Update MasterQP Set IsActive = " + Convert.ToInt32(IsActive)
                + ", UpdatedTime = Getdate(), SavedPath = '" + SavedPath + "' where MasterID = " + MasterID);

            if (Success)
            {
                gvData.EditIndex = -1;
                this.BindGrid();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Try Again..');", true);
                return;
            }


        }
        catch (Exception ex)
        {
            LogError(ex);
        }

    }

    protected void gvData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvData.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }

    protected void lnkView_Click(object sender, EventArgs e)
    {
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        int index = gvRow.RowIndex;
        int MasterID = Convert.ToInt32(gvData.DataKeys[index].Values[0]);

        string SavePath = mysql.SingleCellResultInString("Select savedpath from MasterQP where Masterid = " + MasterID);
        Response.Redirect(SavePath.Replace(@"\\192.168.183.15\Projects\Alpha_July2019\", "http://ntaexam.cbtexam.in/"));
    }
}