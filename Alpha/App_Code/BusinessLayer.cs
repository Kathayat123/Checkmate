using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Property_Layer;
using Data_Layer;
//==========================================================================================================
 //Developed by Bipin Bihari ojha on 23rd june 2011..........................,High risk to Change/Modify
//===========================================================================================================

namespace Business_Layer
{
    public class BusinessLayer
    {
        //public DataSet dsUserLogin(User_Login obj)
        //{
        //    User_Login_Data objUser_LoginData = new User_Login_Data();
        //    DataSet Ds = new DataSet();
        //    Ds = objUser_LoginData.Get_Login_Data(obj);
        //    return Ds;
        //}

        public string DsCollegeData(FiledDetails obj)
        {
            string RetrunFlag = string.Empty;
            Direct_InsertintoDB ObjInsert = new Direct_InsertintoDB();
            RetrunFlag=ObjInsert.Insert_CollegeRegData(obj);
            return "1";
        }

        //Select Expiry Date

        //public DataSet DsExpiryDate(Candidate_Login obj)
        //{
        //    User_Login_Data objUser = new User_Login_Data();
        //    DataSet Ds = new DataSet();
        //    Ds = objUser.GetExpiryDate(obj);
        //    return Ds;
        //}
    }
}
