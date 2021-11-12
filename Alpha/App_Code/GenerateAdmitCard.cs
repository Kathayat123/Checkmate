using Common.Class;
using EvoPdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for GenerateAdmitCard
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class GenerateAdmitCard : System.Web.Services.WebService
{
    private static string ChecksumKey = "aptechduet2018";

    public static string GetHMACSHA256(string text)
    {
        UTF8Encoding encoder = new UTF8Encoding();

        byte[] hashValue;
        byte[] keybyt = encoder.GetBytes(ChecksumKey);
        byte[] message = encoder.GetBytes(text);

        HMACSHA256 hashString = new HMACSHA256(keybyt);
        string hex = "";

        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        return hex;
    }


    public GenerateAdmitCard()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string GetAdmitCard(string ApplicationNo, string MobileNo, string SendCheckSumKey)
    {
        string Message = "";
        if (String.IsNullOrEmpty(ApplicationNo))
        {
            return "Enter ApplicationNo";
        }
        if (String.IsNullOrEmpty(MobileNo))
        {
            return "Enter MobileNo";
        }
        if (String.IsNullOrEmpty(SendCheckSumKey))
        {
            return "Enter CheckSumKey";
        }

        string CSK = GetHMACSHA256(ApplicationNo + "|" + MobileNo);

        if (CSK != SendCheckSumKey)
        {
            return "Invalid CheckSumKey";
        }

        try
        {
            Message = GenerateAdmitcardByHTML(ApplicationNo, MobileNo);
            return Message;
        }
        catch
        {
            return "Try Again..";
        }
    }

    public string GenerateAdmitcardByHTML(string ApplicationNo, string MobileNo)
    {
        CommonPerception MySql = new CommonPerception();
        DataSet ds = MySql.GetDataSet("sp_ChecKifValidUser '" + ApplicationNo + "' , '" + MobileNo + "'");
        string Message = "";

        if (ds.Tables.Count > 0)
        {
            string AdmitCardUrl = ConfigurationManager.AppSettings["AdmitCardUrl"].ToString();
            string AdmitCardSavePath = ConfigurationManager.AppSettings["AdmitCardSavePath"].ToString();
            PdfConverter pdfConverter = new PdfConverter();

            pdfConverter.LicenseKey = "aOb15/T05/D15/Pp9+f09un29en+/v7+";

            string RollNo = Convert.ToString(ds.Tables[0].Rows[0]["RollNo"]);
            if (!String.IsNullOrEmpty(RollNo))
            {
                string url = "";
                url = AdmitCardUrl + RollNo + "";
                pdfConverter.HtmlElementsMappingOptions.HtmlElementSelectors = new string[] { "IMG", "H1", "H2", "#id1", "#id2" };
                Document pdfDocument = pdfConverter.GetPdfDocumentObjectFromUrl(url);
                foreach (HtmlElementMapping elementMapping in pdfConverter.HtmlElementsMappingOptions.HtmlElementsMappingResult)
                {
                    foreach (HtmlElementPdfRectangle elementLocationInPdf in elementMapping.PdfRectangles)
                    {
                        PdfPage pdfPage = pdfDocument.Pages[elementLocationInPdf.PageIndex];
                        RectangleF pdfRectangleInPage = elementLocationInPdf.Rectangle;
                        RectangleElement highlightRectangle = new RectangleElement(pdfRectangleInPage.X, pdfRectangleInPage.Y,
                            pdfRectangleInPage.Width, pdfRectangleInPage.Height);
                    }
                }

                string outFilePath = System.IO.Path.Combine(AdmitCardSavePath, RollNo + ".pdf ");

                pdfDocument.Save(outFilePath);
                string UpdateStatus = "Update CandidateInfo set DownLoadAdmitCard='1', DownLoadAdmitCardDate=getdate() Where RollNo='" + RollNo + "'";
                MySql.ExecuteNonQuery(UpdateStatus);

                System.Web.HttpContext.Current.Response.ContentType = "Application/pdf";
                System.Web.HttpContext.Current.Response.AppendHeader("Content-Disposition", "attachment; filename=" + RollNo + ".pdf");
                System.Web.HttpContext.Current.Response.TransmitFile(outFilePath);
                System.Web.HttpContext.Current.Response.End();
                Message = "Generated";
            }
            else
            {
                return "Try Again..";
            }
        }
        else
        {
            return "Invalid Credetials.";
        }
        return Message;
    }
}
