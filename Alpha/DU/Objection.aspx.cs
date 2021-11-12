using Common.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Resources;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DU_Objection : ClsErrorLog
{
    ResourceManager rm;
    CultureInfo ci;
    CommonPerception MySql = new CommonPerception();
    string filepath1 = "";
    string lstrFullPath1 = string.Empty;

    string filepath2 = "";
    string lstrFullPath2 = string.Empty;
    string cat = string.Empty;
    public string RollNo = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("HomePage.aspx");
            string EncryRollNo = Convert.ToString(Request.QueryString["RollNo"]);
            if (EncryRollNo == "")
            {
                Response.Redirect("HomePage.aspx");
            }
            RollNo = Decrypt(EncryRollNo.Replace(' ', '+'), true);
            int count = MySql.SingleCellResult("Select Count(*) from tblCandidateInfo Where rollnumber = '" + RollNo + "'");

            if (count <= 0)
            {
                Response.Redirect("HomePage.aspx");
                return;
            }


            if (!IsPostBack)
            {
                lblregno.Text = Convert.ToString(RollNo);
                btnExit.Visible = false;
                btnsaveExit.Visible = false;
                fillsubjectname(); //
                //fillQuestioncode(); //
                fillQueryType();
                fillgrid();
            }

        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    void fillsubjectname()
    {
        try
        {

            ddlsubject.Items.Clear();

            ddlsubject.Items.Insert(0, new ListItem("--------------SELECT--------------", "0"));
            ddlsubject.Items.Insert(1, new ListItem(Convert.ToString(Session["Subject"]), Convert.ToString(Session["Subject"])));

        }
        catch (Exception ex)
        {
            LogError(ex);
        }



    }
    void fillQueryType()
    {
        try
        {

            DataSet ds = new DataSet();
            ds = MySql.GetDataSetWithQuery("exec sp_QueryType");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlquerytype.DataSource = ds;
                ddlquerytype.DataTextField = "query";
                ddlquerytype.DataValueField = "ID";
                ddlquerytype.DataBind();
                ddlquerytype.Items.Insert(0, new ListItem("--------------SELECT--------------", "0"));
            }

        }
        catch (Exception ex)
        {
            LogError(ex);
        }



    }

    bool isvalidate()
    {

        lblCMessage.Text = "";
        if (ddlsubject.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select subject');", true);
            ddlsubject.Focus();
            return false;
        }
        if (ddlQno.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Question Id');", true);
            ddlQno.Focus();
            return false;
        }
        if (ddloptionid.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Option Id Id');", true);
            ddloptionid.Focus();
            return false;
        }
        //if (ddlsection.SelectedValue == "0")
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select section');", true);
        //    ddlsection.Focus();
        //    return false;
        //}
        if (ddlquerytype.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select type of objections');", true);
            ddlquerytype.Focus();
            return false;
        }

        if (ddlquerytype.SelectedValue == "4" && txtobjection.Text.Replace("'", "''") == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter  objections');", true);
            txtobjection.Focus();
            return false;
        }
        //if (txtremarks.Value.Trim()  == "")
        if (txtremarks.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter remarks');", true);
            txtremarks.Focus();
            return false;
        }

        if (uploadCandidatephoto.FileName != "")
        {
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please upload file.');", true);
            //    txtremarks.Focus();
            //    return false;
            //}
            //else
            //{
            string NameChange = "";
            string Imagepath = string.Empty;
            string[] ImageName;
            string ImageExtension = string.Empty;
            string Itype = "";

            NameChange = uploadCandidatephoto.PostedFile.FileName.ToString();
            Imagepath = NameChange;
            ImageName = Imagepath.Split('.');
            ImageExtension = ImageName[1];
            Itype = ImageCase(ImageExtension).ToString();

            if (Itype == "1" || Itype == "2")
            {
                if (uploadCandidatephoto.PostedFile.ContentLength > 80000)
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, File size should be 80KB";
                    return false;
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Oops ! Error occured while uploading, Please upload JPG/JPEG format only.');", true);
                return false;
            }
        }

        return true;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        lblCMessage.Text = "";
        string lstrFullPath1 = System.Configuration.ConfigurationManager.AppSettings["ObjFrmSavePath"];
        try
        {
            if (isvalidate())
            {
                int objid = 0;
                string strsql = "exec sp_insertobejction @setname='" + ddlsubject.SelectedValue + "',@Qno='" + ddlQno.SelectedValue + "',@section='"
                    + ddloptionid.SelectedValue + "',@QueryType='" + ddlquerytype.SelectedValue + "',@Remarks='" + txtremarks.Text.Replace("'", "''").ToUpper()
                    + "',@canid='" + Convert.ToString(RollNo) + "',@Objection='" + txtobjection.Text.Replace("'", "''").ToUpper() + "'";
                DataSet ds = MySql.GetDataSetWithQuery(strsql);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    objid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
                }
                #region DOCUMENTS
                if (uploadCandidatephoto.FileName != "" && uploadCandidatephoto.PostedFile.ContentLength > 0)
                {
                    string NameChange = "";
                    string Imagepath = string.Empty;
                    string[] ImageName;
                    string ImageExtension = string.Empty;
                    string Itype = "";

                    NameChange = uploadCandidatephoto.PostedFile.FileName.ToString();
                    Imagepath = NameChange;
                    ImageName = Imagepath.Split('.');
                    ImageExtension = ImageName[1];
                    Itype = ImageCase(ImageExtension).ToString();

                    if (Itype == "1" || Itype == "2")
                    {
                        if (uploadCandidatephoto.PostedFile.ContentLength > 80000)
                        {
                            lblCMessage.Text = "Oops ! Error occured while uploading, Applicant's Photo size should be 80KB";
                            return;
                        }
                        else
                        {
                            filepath1 = "";

                            if (!Directory.Exists(lstrFullPath1))
                            {
                                Directory.CreateDirectory(lstrFullPath1);
                                filepath1 = lstrFullPath1 + '/' + objid + "_O" + '.' + ImageExtension;
                                uploadCandidatephoto.SaveAs(filepath1);
                            }
                            else
                            {
                                filepath1 = lstrFullPath1 + '/' + objid + "_O" + '.' + ImageExtension;
                                uploadCandidatephoto.SaveAs(filepath1);
                            }

                            strsql = "exec sp_updateobejction @UploaddocumentPath='" + filepath1 + "',@id='" + objid + "'";
                            ds = MySql.GetDataSetWithQuery(strsql);
                        }
                    }
                }

                #endregion
                fillgrid();
                Reset();
            }



        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }
    void fillgrid()
    {
        string strsql = "exec sp_getobejction @canid='" + Convert.ToString(RollNo) + "'";
        DataSet ds = MySql.GetDataSetWithQuery(strsql);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }
    }
    void Reset()
    {

        ddlQno.SelectedIndex = -1;
        ddlquerytype.SelectedValue = "0";
        txtremarks.Text = "";

        ddlQno.Enabled = false;
        txtobjection.Text = "";
        txtobjection.Visible = false;
        ddlquerytype.Enabled = false;
        txtremarks.Enabled = false;
        btnsubmit.Visible = false;
        ddloptionid.Enabled = false;
        btnsaveExit.Visible = true;
        btnExit.Visible = true;
    }

    #region ImageFormatchecker
    protected int ImageCase(string Format)
    {
        int ImageType = 0;
        if (Format == "jpg") { ImageType = 1; }
        else if (Format == "JPG") { ImageType = 1; }
        else if (Format == "Jpg") { ImageType = 1; }
        else if (Format == "JPg") { ImageType = 1; }
        else if (Format == "jPG") { ImageType = 1; }
        else if (Format == "jpg") { ImageType = 1; }

        else if (Format == "jpeg") { ImageType = 2; }
        else if (Format == "JPEG") { ImageType = 2; }
        else if (Format == "Jpeg") { ImageType = 2; }
        else if (Format == "JPeg") { ImageType = 2; }
        else if (Format == "jPeG") { ImageType = 2; }
        return ImageType;

    }
    #endregion

    protected void btnExit_Click(object sender, EventArgs e)
    {


        ddlQno.SelectedIndex = -1;
        ddlquerytype.SelectedValue = "0";
        txtremarks.Text = "";
        ddloptionid.Enabled = true;
        ddlQno.Enabled = true;
        ddlquerytype.Enabled = true;
        txtremarks.Enabled = true;
        btnsubmit.Visible = true;
        btnExit.Visible = false;
        btnsaveExit.Visible = false;

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../DU/HomePage.aspx");
    }

    protected void ddlset_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlquerytype_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlquerytype.SelectedIndex != -1)
        {
            if (ddlquerytype.SelectedValue == "4")
            {
                txtobjection.Visible = true;
                txtobjection.Focus();
            }
            else
            {
                txtobjection.Text = "";
                txtobjection.Visible = false;
                txtremarks.Focus();
            }
        }
    }
    protected void btnsaveExit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../DU/HomePage.aspx");
    }




    protected void btnBack_Click(object sender, EventArgs e)
    {
        string EncryRollNo = Convert.ToString(Request.QueryString["RollNo"]);
        //string EncryRollNo = "7hwfajkG0IE=";
        Response.Redirect("WelcomePage.aspx?RollNo=" + EncryRollNo);
    }


    protected void ddlsubject_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {

            DataSet ds = new DataSet();
            ds = MySql.GetDataSetWithQuery("exec sp_getquestion @papersetname='" + Convert.ToString(ddlsubject.SelectedValue) + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlQno.DataSource = ds;
                ddlQno.DataTextField = "Questionid";
                ddlQno.DataValueField = "Questionid";
                ddlQno.DataBind();
                ddlQno.Items.Insert(0, new ListItem("--------------SELECT--------------", "0"));
            }
            else
            {
                ddlQno.Focus();

            }

        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }
    protected void ddlQno_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {

            DataSet ds = new DataSet();
            ds = MySql.GetDataSetWithQuery("exec sp_getoption @Questionid='" + Convert.ToString(ddlQno.SelectedValue) + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddloptionid.DataSource = ds;
                ddloptionid.DataTextField = "optionid";
                ddloptionid.DataValueField = "optionid";
                ddloptionid.DataBind();
                ddloptionid.Items.Insert(0, new ListItem("--------------SELECT--------------", "0"));
            }
            else
            {
                ddloptionid.Focus();

            }

        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }
}