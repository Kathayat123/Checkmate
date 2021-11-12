/********************************************************************************************          
Client           :  AICTE   
Purpose          :  Data Layer Conceptual Methods
Used Procedure   :  For Insert n update n Select Statement 
Created By       :  Mr.Bipin ojha           
Created Date     :  27/05/2012         
Modified By      :            
Modified Date    :            
Purpose          : For All Accessibale Methods as per Send request and give Respone to .CS Page  

*********************************************************************************************/
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using Property_Layer;
using Common.Class;

namespace Data_Layer
{    
    public class DataLayer
    {

        public  int pbcCommonVar;
        public  int lcCountForPrePopulData;
        public  string pbcAdminName;
        public  string pbcAdminEmailId;
        public  string pbcReEnterEmail;
        public  int pbcProfileId;
        public  int pbcLocationId;
        public  string pbcDesig;
        public  string pbcOrgn;
        

        public static string[,] pbcPrePopulatedArr = new string[6, 8];

        public static string ConnectionString()
        {
            return System.Configuration.ConfigurationSettings.AppSettings["ConnectionString"].ToString();
        }

        public static string ConnectionStringnewAATC()
        {
            return System.Configuration.ConfigurationSettings.AppSettings["ConnectionStringnewAATC"].ToString();
        }

        public DataSet DsgetDataset(string query)
        {
            DataSet Ds = null;
            SqlCommand dbcom;
            SqlConnection dbcon; ;
            SqlDataAdapter da;
            dbcon = new SqlConnection(DataLayer.ConnectionString());

            dbcom = new SqlCommand(query, dbcon);
            da = new SqlDataAdapter(dbcom);
            Ds = new DataSet();
            da.Fill(Ds, "result");
            dbcon.Close();
            dbcon.Dispose();
            return Ds;
        }

        public DataSet DsgetDatasetNewAATC(string query)
        {
            DataSet Ds = null;
            SqlCommand dbcom;
            SqlConnection dbcon; ;
            SqlDataAdapter da;
            dbcon = new SqlConnection(DataLayer.ConnectionStringnewAATC());

            dbcom = new SqlCommand(query, dbcon);
            da = new SqlDataAdapter(dbcom);
            Ds = new DataSet();
            da.Fill(Ds, "result");
            dbcon.Close();
            dbcon.Dispose();
            return Ds;
        }

        public SqlDataReader GetDataReader(string sqlText)
        {
            SqlCommand dbcom;
            SqlConnection dbcon;
            SqlDataReader dr;
            dbcon = new SqlConnection(DataLayer.ConnectionString());
            dbcom = new SqlCommand(sqlText, dbcon);
            dbcom.Connection.Open();
            dr = dbcom.ExecuteReader();
            return dr;
        }

        public string SingleCellResultInString(string strquery)
        {
            SqlCommand dbcom;
            SqlConnection dbcon;
            string lcchkRec = "";
            dbcon = new SqlConnection(DataLayer.ConnectionString());
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

        public string SingleCellResultInStringAATC(string strquery)
        {
            SqlCommand dbcom;
            SqlConnection dbcon;
            string lcchkRec = "";
            dbcon = new SqlConnection(DataLayer.ConnectionStringnewAATC());
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


        public int SingleCellResult(string strquery)
        {
            SqlCommand dbcom;
            SqlConnection dbcon;
            int lcchkRec = 0;
            dbcon = new SqlConnection(DataLayer.ConnectionString());
            try
            {
                dbcon.Open();
                dbcom = new SqlCommand(strquery, dbcon);
                lcchkRec = (int)dbcom.ExecuteScalar();
                dbcon.Close();
            }
            catch (Exception err)
            {
                lcchkRec = 0;
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

        public int SingleCellResultAATC(string strquery)
        {
            SqlCommand dbcom;
            SqlConnection dbcon;
            int lcchkRec = 0;
            dbcon = new SqlConnection(DataLayer.ConnectionStringnewAATC());
            try
            {
                dbcon.Open();
                dbcom = new SqlCommand(strquery, dbcon);
                lcchkRec = (int)dbcom.ExecuteScalar();
                dbcon.Close();
            }
            catch (Exception err)
            {
                lcchkRec = 0;
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

        public bool ExecuteNonQuery(string sqlText)
        {
            bool result;
            SqlCommand dbcom;
            SqlConnection dbcon;
            dbcon = new SqlConnection(DataLayer.ConnectionString());
            try
            {
                // connection string


                //call the stored procedure
                dbcom = new SqlCommand(sqlText, dbcon);
                dbcom.CommandType = CommandType.Text;
                dbcon.Open();
                dbcom.ExecuteNonQuery();

                result = true;
            }
            catch (Exception err)
            {
                result = false;
            }
            finally
            {
                dbcon.Close();
            }
            return result;

        }

        // To Check the User Already there or Not
        public bool CheckUserAdd(string chkLogin_Id)
        {

            SqlCommand dbcom;
            SqlConnection dbcon;
            SqlDataReader dr;
            SqlParameter dbparam;

            int lcchkUserID = 0;
            // connection string
            dbcon = new SqlConnection(DataLayer.ConnectionString());

            //call the stored procedure
            dbcom = new SqlCommand("SP_CheckUser", dbcon);
            dbcom.CommandType = CommandType.StoredProcedure;

            //define the parameters

            dbcom.Parameters.Add(new SqlParameter("@Login_Id", SqlDbType.VarChar, 50));
            dbcom.Parameters["@Login_Id"].Value = chkLogin_Id;

            dbparam = dbcom.Parameters.Add(new SqlParameter("@ID", SqlDbType.Int));

            //Our parameter is for output as mentioned
            dbparam.Direction = ParameterDirection.Output;

            try
            {
                dbcon.Open();
                dbcom.ExecuteNonQuery();

                lcchkUserID = (int)dbcom.Parameters["@ID"].Value;

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

            if (lcchkUserID == 1)
            {
                //user name already exists
                return false;
            }
            // 
            return true;
        }

        public bool CorporateEmail(TextBox tb)
        {
            string str = tb.Text;
            string[] arr = str.Split('@');
            string[] mailchk = arr[1].Split('.');
            string chk = mailchk[0];
            switch (chk.ToLower())
            {
                case "gmail":
                case "fastmail":
                case "yahoo":
                case "aim":
                case "inbox":
                case "goowy":
                case "msn":
                case "hotmail":
                case "myway":
                case "care2":
                case "lycos":
                case "indiatimes":
                case "rediffmail":
                case "mail":
                case "apexmail":
                case "bigfoot":
                case "eudoramail":
                case "Qualcomm":
                case "goplay":
                case "iname":
                case "juno":
                case "mailcity":
                case "mailexcite":
                case "myownemail":
                case "net":
                case "net@ddress":
                case "netaddress":
                case "planetarymotion":
                case "prontomail":
                case "recycler":
                case "rocketmail":
                case "start":
                case "thedoghousemail":
                case "usa":
                case "women":
                case "zdnetmail":
                case "netscapemail":
                case "postmark":
                case "metallica":
                case "hriders":
                case "spymac":
                case "gawab":

                    tb.Text = "";
                    //tb.re
                    return false;

                default:
                    return true;


            }
        }

//===========================================================================================================
//Execute two query// Added by Bipin Ojha on 27th June ..............................
//===========================================================================================================
        public DataSet GetDataSetWithTwoQuery(string sqlText1, string sqlText2)
        {
            DataSet ds = null;
            DataSet ds1 = null;
            SqlCommand dbcom1;
            SqlCommand dbcom2;
            SqlConnection dbcon;
            SqlDataAdapter dadapter;
            SqlDataAdapter dadapter1;

            // connection string
            dbcon = new SqlConnection(DataLayer.ConnectionString());

            //call the stored procedure
            dbcom1 = new SqlCommand(sqlText1, dbcon);
            dbcom1.CommandType = CommandType.Text;
            dadapter = new SqlDataAdapter(dbcom1);

            ds = new DataSet();

            dadapter.Fill(ds, "results");

            dbcom2 = new SqlCommand(sqlText2, dbcon);
            dbcom2.CommandType = CommandType.Text;
            dadapter = new SqlDataAdapter(dbcom2);

            ds1 = new DataSet();

            dadapter.Fill(ds1, "results");

            ds.Merge(ds1);
            dbcon.Close();
            return ds;
        }

//===========================================================================================================
//Execute two query// Added by Bipin Ojha on 27th June ..............................
//===========================================================================================================
        public DataSet GetDataSetWithTwoQuerynew(string sqlText1, string sqlText2)
        {
            DataSet ds = null;
            DataSet ds1 = null;
            SqlCommand dbcom1;
            SqlCommand dbcom2;
            SqlConnection dbcon;
            SqlDataAdapter dadapter;
            SqlDataAdapter dadapter1;

            // connection string
            dbcon = new SqlConnection(DataLayer.ConnectionString());

            //call the stored procedure
            dbcom1 = new SqlCommand(sqlText1, dbcon);
            dbcom1.CommandType = CommandType.Text;
            dadapter = new SqlDataAdapter(dbcom1);

            ds = new DataSet();
            dadapter.Fill(ds, "results");

            dbcom2 = new SqlCommand(sqlText2, dbcon);
            dbcom2.CommandType = CommandType.Text;
            dadapter = new SqlDataAdapter(dbcom2);

            ds1 = new DataSet();
            dadapter.Fill(ds1, "results");

            ds.Merge(ds1, false, MissingSchemaAction.Add);
            dbcon.Close();
            return ds;
        }


        public decimal SingleCellResult_decimal(string strquery)
        {
            SqlCommand dbcom;
            SqlConnection dbcon;
            decimal lcchkRec = 0;
            dbcon = new SqlConnection(DataLayer.ConnectionString());
            try
            {
                dbcon.Open();
                dbcom = new SqlCommand(strquery, dbcon);
                lcchkRec = (decimal)dbcom.ExecuteScalar();
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


    }

    public class Direct_InsertintoDB
    {
        CommonPerception Mysql = new CommonPerception();
        public string Insert_CollegeRegData(FiledDetails obj)
        {
            string Response = "0";
           /* Create Unique Id 
            string NewId = Mysql.SingleCellResultInString("exec Sp_GetUniqueId 'AT_M_CollegeReg','Ins_Id'");
            /* Create Password
            string NewPassword = Mysql.SingleCellResultInString("exec Sp_GetUniquePassword 'AT_M_CollegeReg','Ins_Pwd'"); */

            string Ins = ""; bool blins;
            Ins = "exec Sp_New_CollegeRegistration " + obj.LoginId + ",'" + obj.Password + "','" + obj.InstituteName + "', '" + obj.InstitutionId + "','" + obj.Address + "','" + obj.State + "','" + obj.City + "','" + obj.PhoneNumber + "','" + obj.FaxNo + "', '" + obj.HodName + "', '" + obj.HodDesgination + "','" + obj.HODOtherDesignation + "','" + obj.HodEmail + "', '" + obj.HodNo + "', '" + obj.HodMobile + "', '" + obj.HodFax + "', '" + obj.RegistarName + "', '" + obj.RegistarDesg + "', '" + obj.RegEmail + "','" + obj.RegMobile + "','" + obj.RegistarNo + "','" + obj.RegFaxNo + "', '" + obj.UniversityName + "','" + obj.AuthorityFlag + "','" + obj.UniversityType + "','" + obj.UniversityName + "', '" + obj.AllotementSeats + "','" + obj.AuthAdminssionName + "' ";
            blins = Mysql.ExecuteNonQuery(Ins);
            Response = "1";
            return Response;
                               
        }

        public string Update_CollegeRegData(FiledDetails obj)
        {
            string Response="0";
            string Ins = ""; bool blins;
            Ins = "exec Sp_Edit_CollegeRegistration " + obj.CLoginId + ",'" + obj.InstituteName + "','" + obj.Address + "','" + obj.State + "','" + obj.City + "','" + obj.PhoneNumber + "','" + obj.FaxNo + "', '" + obj.HodName + "', '" + obj.HodDesgination + "','" + obj.HodEmail + "', '" + obj.HodNo + "', '" + obj.HodMobile + "', '" + obj.HodFax + "', '" + obj.RegistarName + "', '" + obj.RegistarDesg + "', '" + obj.RegEmail + "','" + obj.RegMobile + "','" + obj.RegistarNo + "','" + obj.RegFaxNo + "', '" + obj.UniversityName + "','" + obj.AuthorityFlag + "','" + obj.UniversityType + "','" + obj.UniversityName + "','" + obj.AuthAdminssionName + "','" + obj.HODOtherDesignation + "' ";
            blins = Mysql.ExecuteNonQuery(Ins);
            Response="1";
            return Response;
            
        }

        public DataSet GetExpiryDate(Candidate_Login obj)
        {
            SqlConnection con = new SqlConnection(DataLayer.ConnectionString());
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            DataSet ds = new DataSet();
            string sql="";
            sql = "Select top 1 ExpiryDate from tblCandUpload where candid='" + obj.Candidateid + "' order by ExpiryDate desc ";
            cmd = new SqlCommand(sql, con);
            da = new SqlDataAdapter(cmd);
            da.Fill(ds, "result");
            con.Close();
            return ds;
        }

    }

    public class RetrivePassword
    {
        CommonPerception Mysql = new CommonPerception();
        public string RetrivalCollegePassword(ForgotPassword_Parameters obj)
        {
            string Password = "0";
            DataSet Ds = new DataSet(); Ds = null;
            Ds = Mysql.GetDataSet("Select Ins_Id,Ins_Pwd,ATCR_HODEmail from dbo.AT_M_CollegeReg where Ins_Id=" + obj.CollegeLoginId + " and ATCR_HODEmail='" + obj.CollegeEmailId + "' ");
            if (Ds.Tables[0].Rows.Count > 0)
            {
                Password = Ds.Tables[0].Rows[0]["Ins_Pwd"].ToString();
            }
            return Password;        
        }
    }


    //To insert Candidate info in table
    public class CandidateInfo
    {
        CommonPerception Mysql = new CommonPerception();
        public bool SaveCandidateInfo(CandidateDetails obj)
        {
            string strQuery = "";
            bool result;
            strQuery = "exec Sp_InsertRegistrationdetails '" + obj.CandidateName + "','" + obj.FatherName + "','" + obj.MotherName + "','" + obj.DateOfBirth + "','" + obj.Category + "','" + obj.Religion + "','" + obj.PhysicalDisability + "','" + obj.TypeofDisability + "','" + obj.EmailId + "','" + obj.MobileNo + "','" + obj.Gender + "','" + obj.PasswordRecovery_Q + "','" + obj.PasswordRecovery_A + "','" + obj.Password + "'";
            result = Mysql.ExecuteNonQuery(strQuery);
            return result;
        }
    }

    //To Update Candidate info in table 
    public class UpdateCandidateDetails
    {
        CommonPerception Mysql = new CommonPerception();
        public bool UpdateCandidateInfo(CandidateDetails obj)
        {
            string strQuery = "";
            bool result;
            strQuery = "exec Sp_UpdateRegistrationdetails '" + obj.RegistrationId + "','" + obj.CandidateName + "','" + obj.FatherName + "','" + obj.MotherName + "','" + obj.DateOfBirth + "','" + obj.Religion + "','" + obj.MobileNo + "','" + obj.Gender + "'";
            //,'" + obj.AddressLine1 + "','" + obj.AddressLine2 + "','" + obj.PinCode + "','" + obj.City + "','" + obj.StateProvince + "','" + obj.LandlineNo + "','" + obj.Nationality + "','" + obj.PreferredCity1 + "','" + obj.PreferredCity2 + "','" + obj.PreferredCity3 + "','" + obj.PreferredExamDate1 + "','" + obj.PreferredExamDate2 + "','" + obj.PreferredExamDate3 + "','" + obj.HSCDetails + "','" + obj.Anyother + "','" + obj.BachlorDegree + "','" + obj.GraduationPercentage + "', '" + obj.YearofQualifyingExam + "','" + obj.QualifyingDegree + "','" + obj.AnyOther1 + "','" + obj.QualifyingUniversity + "'
            result = Mysql.ExecuteNonQuery(strQuery);
            return result;
        }
    }

    /*public class DataCollegeEntry
    {
        CommonPerception Mysql = new CommonPerception();
        public string Insert_CollegeEntry(CollegeEntry.CrateCollegeEntry obj)
        {
            string strQuery = "";
            bool result;
            strQuery = Mysql.SingleCellResultInString("Select * from dbo.tbExamCenterMaster where CenterCode='" + obj.CenterCode + "' ");
            if (strQuery != "")
            {
                return "0";
            }
            strQuery = "exec Sp_InsertExamCenterMaster '0', '" + obj.CenterCode + "','" + obj.CollegName + "','" + obj.Address + "'," + obj.State + "," + obj.City + "," + obj.Pincode + "," + obj.Region + ",'" + obj.Cperson + "','" + obj.ContactpersonNo + "', '" + obj.MobileNo + "'," + obj.NoofMachines + " ";
            result = Mysql.ExecuteNonQuery(strQuery);
            return "1";

        }

        public bool Update_CollegeEntry(CollegeEntry.CrateCollegeEntry obj)
        {
            string strQuery = "";
            bool result;
            strQuery = "exec Sp_UpdateExamCenterMaster " + obj.CenterId + ",'" + obj.CollegName + "','" + obj.Address + "'," + obj.State + "," + obj.City + "," + obj.Pincode + "," + obj.Region + ",'" + obj.Cperson + "','" + obj.ContactpersonNo + "','" + obj.MobileNo + "'," + obj.NoofMachines + " ";
            result = Mysql.ExecuteNonQuery(strQuery);
            return result;

        }
    } */

    public class DataCollegeEntry
    {
        CommonPerception Mysql = new CommonPerception();
        public string Insert_CollegeEntry(CollegeEntry.CrateCollegeEntry obj)
        {
            string strQuery = "";
            bool result;
            strQuery = Mysql.SingleCellResultInString("Select * from dbo.tbExamCenterMaster where CenterCode='" + obj.CenterCode + "' ");
            if (strQuery != "")
            {
                return "0";
            }
            strQuery = "exec Sp_InsertExamCenterMaster '0', '" + obj.CenterCode + "','" + obj.CollegName + "','" + obj.Address + "'," + obj.State + "," + obj.City + "," + obj.Pincode + "," + obj.Region + ",'" + obj.Cperson + "','" + obj.ContactpersonNo + "', '" + obj.MobileNo + "'," + obj.NoofMachines + ",'" + obj.AnyAdditional + "'," + obj.NoofAdditionalMC1 + "," + obj.NoofAdditionalMC2 + "," + obj.NoofAdditionalMC3 + "," + obj.NoofAdditionalMC4 + " ," + obj.NoofAdditionalMC5 + " ";
            result = Mysql.ExecuteNonQuery(strQuery);
            return "1";

        }

        public bool Update_CollegeEntry(CollegeEntry.CrateCollegeEntry obj)
        {
            string strQuery = "";
            bool result;
            strQuery = "exec Sp_UpdateExamCenterMaster " + obj.CenterId + ",'" + obj.CollegName + "','" + obj.Address + "'," + obj.State + "," + obj.City + "," + obj.Pincode + "," + obj.Region + ",'" + obj.Cperson + "','" + obj.ContactpersonNo + "','" + obj.MobileNo + "'," + obj.NoofMachines + ",'" + obj.AnyAdditional + "'," + obj.NoofAdditionalMC1 + "," + obj.NoofAdditionalMC2 + "," + obj.NoofAdditionalMC3 + "," + obj.NoofAdditionalMC4 + " ," + obj.NoofAdditionalMC5 + "  ";
            result = Mysql.ExecuteNonQuery(strQuery);
            return result;

        }
    }
   

        
}
