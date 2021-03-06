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

public partial class Admin_AdmitCard : ClsErrorLog
{
    CommonPerception mysql = new CommonPerception();

    protected void Page_Load(object sender, EventArgs e)
    {
        string CID = "";
        string Encrypt = Convert.ToString(Request.QueryString["ID"]);

        //if (Encrypt == null || Encrypt == "")
        //{
        //    Response.Redirect("LoginPage.aspx");
        //}

        CID = Encrypt;

        if (!IsPostBack)
        {
            try
            {
                DataSet ds = new DataSet();
                ds = mysql.GetDataSetWithQuery("exec Sp_GetAdmitCardDetails @RollNo='" + CID + "'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    BarCode barcode = new BarCode();
                    barcode.Symbology = KeepAutomation.Barcode.Symbology.Code128Auto;
                    barcode.Orientation = KeepAutomation.Barcode.Orientation.Degree0;
                    barcode.BarcodeUnit = KeepAutomation.Barcode.BarcodeUnit.Pixel;
                    barcode.X = 1;
                    barcode.Y = 40;
                    barcode.BarCodeWidth = 100;
                    barcode.BarCodeHeight = 40;
                    barcode.DPI = 72;
                    barcode.CodeToEncode = CID;
                    barcode.DisplayText = false;
                    Bitmap bmp = barcode.generateBarcodeToBitmap();
                    MemoryStream ms = new MemoryStream();
                    bmp.Save(ms, ImageFormat.Jpeg);
                    byte[] bmpBytes = ms.ToArray();
                    string base64String = Convert.ToBase64String(bmpBytes, 0, bmpBytes.Length);
                    Barcode.ImageUrl = "data:image/Jpeg;base64," + base64String;

                    lblRollNo.Text = Convert.ToString(ds.Tables[0].Rows[0]["RollNumber"]).ToUpper();
                    lblPINNO.Text = Convert.ToString(ds.Tables[0].Rows[0]["Pin"]).ToUpper();
                    lblCanName.Text = Convert.ToString(ds.Tables[0].Rows[0]["FirstName"]).ToUpper();
                    lblFatherName.Text = Convert.ToString(ds.Tables[0].Rows[0]["FatherName"]).ToUpper();
                    lblDOB.Text = Convert.ToString(ds.Tables[0].Rows[0]["DateOfBirth"]).ToUpper();
                    lblGender.Text = Convert.ToString(ds.Tables[0].Rows[0]["Gender"]).ToUpper();
                    lblCategory.Text = Convert.ToString(ds.Tables[0].Rows[0]["Category"]).ToUpper();
                    lblIsPH.Text = Convert.ToString(ds.Tables[0].Rows[0]["PWDCategory"]).ToUpper();
                    lblFormNo.Text = Convert.ToString(ds.Tables[0].Rows[0]["Formno"]).ToUpper();
                    lblAppName.Text = Convert.ToString(ds.Tables[0].Rows[0]["ApplicationName"]).ToUpper();
                    lblCourseName.Text = Convert.ToString(ds.Tables[0].Rows[0]["Course"]).ToUpper();
                    lblReportingTime.Text = Convert.ToString(ds.Tables[0].Rows[0]["ReportingTime"]).ToUpper();
                    lblGateClosedTime.Text = Convert.ToString(ds.Tables[0].Rows[0]["GateClosed"]).ToUpper();
                    lblDateOfExam.Text = Convert.ToString(ds.Tables[0].Rows[0]["ExamDate"]).ToUpper();
                    lblShift.Text = Convert.ToString(ds.Tables[0].Rows[0]["Shift"]).ToUpper();
                    lblDuration.Text = Convert.ToString(ds.Tables[0].Rows[0]["Duration"]).ToUpper();
                    lblCenterCode.Text = Convert.ToString(ds.Tables[0].Rows[0]["CenterCode"]).ToUpper();
                    lblCenterName.Text = Convert.ToString(ds.Tables[0].Rows[0]["CenterDetails"]).ToUpper();
                    lblDate.Text = DateTime.Now.ToString();
                    imgPhoto.ImageUrl = "http://exam.cbtexam.in/alphaphoto/" + lblAppName.Text + "/photo/" + Convert.ToString(ds.Tables[0].Rows[0]["UploadedPhotoFile"]).ToUpper();
                    imgSign.ImageUrl = "http://exam.cbtexam.in/alphaphoto/" + lblAppName.Text + "/signature/" + Convert.ToString(ds.Tables[0].Rows[0]["SignatureFile"]).ToUpper();
                }
            }
            catch (Exception ex)
            {
				
                LogError(ex);
				Response.Redirect("TryAgain.html");
            }
        }

    }
}