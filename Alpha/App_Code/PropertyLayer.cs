using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Property_Layer
{
    public class FiledDetails
    {
        private string strInstitutionId;

        public string InstitutionId
        {
            get { return strInstitutionId; }
            set { strInstitutionId = value; }
        }

        private string strInstituteName;

        public string InstituteName
        {
            get { return strInstituteName; }
            set { strInstituteName = value; }
        }

        private string strInsAddress;

        public string Address
        {
            get { return strInsAddress; }
            set { strInsAddress = value; }
        }
        private string strState;

        public string State
        {
            get { return strState; }
            set { strState = value; }
        }
        private string  strCity;

        public string  City
        {
            get { return strCity; }
            set { strCity = value; }
        }
        private string phSTDCode;

        public string StdCode
        {
            get { return phSTDCode; }
            set { phSTDCode = value; }
        }
        private string strPhoneNumber;

        public string PhoneNumber
        {
            get { return strPhoneNumber; }
            set { strPhoneNumber = value; }
        }

        private string strFaxCode;

        public string FaxCode
        {
            get { return strFaxCode; }
            set { strFaxCode = value; }
        }
        private string strFaxNo;

        public string FaxNo
        {
            get { return strFaxNo; }
            set { strFaxNo = value; }
        }

        private string strHodName;

        public string HodName
        {
            get { return strHodName; }
            set { strHodName = value; }
        }
        private string strHodDesignation;

        public string HodDesgination
        {
            get { return strHodDesignation; }
            set { strHodDesignation = value; }
        }

        private string strHODOtherDesignation;

        public string HODOtherDesignation
        {
            get { return strHODOtherDesignation; }
            set { strHODOtherDesignation = value; }
        }
	
        private string strHodEmail;

        public string HodEmail
        {
            get { return strHodEmail; }
            set { strHodEmail = value; }
        }
        private string strHodNo;

        public string HodNo
        {
            get { return strHodNo; }
            set { strHodNo = value; }
        }

        private string strHodMobile;

        public string HodMobile
        {
            get { return strHodMobile; }
            set { strHodMobile = value; }      
        }

        private string strHodFax;

        public string HodFax
        {
            get { return strHodFax; }
            set { strHodFax = value; }
        }

        private string strRegistarName;

        public string RegistarName
        {
            get { return strRegistarName; }
            set { strRegistarName = value; }
        }
        private string strRegistarDesg;

        public string RegistarDesg
        {
            get { return strRegistarDesg; }
            set { strRegistarDesg = value; }
        }
        private string strRegEmail;

        public string RegEmail
        {
            get { return strRegEmail; }
            set { strRegEmail = value; }
        }

        private string strRegMobile;

        public string RegMobile
        {
            get { return strRegMobile; }
            set { strRegMobile = value; }
        }

        private string strRegistarNo;

        public string RegistarNo
        {
            get { return strRegistarNo; }
            set { strRegistarNo = value; }
        }

        private string strRegFaxNo;

        public string RegFaxNo
        {
            get { return strRegFaxNo; }
            set { strRegFaxNo = value; }
        }

        private string strUniversityName;

        public string UniversityName
        {
            get { return strUniversityName; }
            set { strUniversityName = value; }
        }
	
        private string strUniversityId;

        public string UniversityId
        {
            get { return strUniversityId; }
            set { strUniversityId = value; }
        }

        private string strUniversityType;

        public string UniversityType
        {
            get { return strUniversityType; }
            set { strUniversityType = value; }
        }
	
        private string strAuthorityFlag;

        public string AuthorityFlag
        {
            get { return strAuthorityFlag; }
            set { strAuthorityFlag = value; }
        }

        private string strAllotementAuthoritySeats;

        public string AllotementSeats
        {
            get { return strAllotementAuthoritySeats; }
            set { strAllotementAuthoritySeats = value; }
        }

        private string strAdmissionAuthname;

        public string AuthAdminssionName
        {
            get { return strAdmissionAuthname; }
            set { strAdmissionAuthname = value; }
        }
	
	

        private DateTime strCdate;

        public DateTime Cdate
        {
            get { return strCdate; }
            set { strCdate = value; }
        }
        private string strHostIp;

        public string HostIp
        {
            get { return strHostIp; }
            set { strHostIp = value; }
        }

        private int CollegeLoginId;

        public int CLoginId
        {
            get { return CollegeLoginId; }
            set { CollegeLoginId = value; }
        }

        private string StrLoginId;

        public string LoginId
        {
            get { return StrLoginId; }
            set { StrLoginId = value; }
        }

        private string StrPassword;

        public string Password
        {
            get { return StrPassword; }
            set { StrPassword = value; }
        }
		
    }

    public class ForgotPassword_Parameters
    {
        private string strCollegeLoginId;

        public string CollegeLoginId
        {
            get { return strCollegeLoginId; }
            set { strCollegeLoginId = value; }
        }

        private string strCollegeEmailId;

        public string CollegeEmailId
        {
            get { return strCollegeEmailId; }
            set { strCollegeEmailId = value; }
        }
	
	
    }

    public class Candidate_Login
    {
        string _candidateid;

        public string Candidateid
        {
            get { return _candidateid; }
            set { _candidateid = value; }
        }
    }

    public class GetImplementation_Id
    {
        string _ImplId;

        public string ImplId
        {
            get { return _ImplId; }
            set { _ImplId = value; }
        }
    }

    public class CandidateDetails
    {
        private int strRegistrationId;

        public int RegistrationId
        {
            get { return strRegistrationId; }
            set { strRegistrationId = value; }
        }
        private string strCandidateName;

        public string CandidateName
        {
            get { return strCandidateName; }
            set { strCandidateName = value; }
        }
        private string strFatherName;

        public string FatherName
        {
            get { return strFatherName; }
            set { strFatherName = value; }
        }
        private string strMotherName;

        public string MotherName
        {
            get { return strMotherName; }
            set { strMotherName = value; }
        }
        private DateTime strDateOfBirth;

        public DateTime DateOfBirth
        {
            get { return strDateOfBirth; }
            set { strDateOfBirth = value; }
        }
        private string strCategory;

        public string Category
        {
            get { return strCategory; }
            set { strCategory = value; }
        }
        private string strReligion;

        public string Religion
        {
            get { return strReligion; }
            set { strReligion = value; }
        }
        private string strPhysicalDisability;

        public string PhysicalDisability
        {
            get { return strPhysicalDisability; }
            set { strPhysicalDisability = value; }
        }
        private string strTypeofDisability;

        public string TypeofDisability
        {
            get { return strTypeofDisability; }
            set { strTypeofDisability = value; }
        }
        private string strEmailId;

        public string EmailId
        {
            get { return strEmailId; }
            set { strEmailId = value; }
        }
        private string strMobileNo;

        public string MobileNo
        {
            get { return strMobileNo; }
            set { strMobileNo = value; }
        }
        private string strGender;

        public string Gender
        {
            get { return strGender; }
            set { strGender = value; }
        }
        private int strPasswordRecovery_Q;

        public int PasswordRecovery_Q
        {
            get { return strPasswordRecovery_Q; }
            set { strPasswordRecovery_Q = value; }
        }
        private string strPasswordRecovery_A;

        public string PasswordRecovery_A
        {
            get { return strPasswordRecovery_A; }
            set { strPasswordRecovery_A = value; }
        }
        private string strPassword;

        public string Password
        {
            get { return strPassword; }
            set { strPassword = value; }
        }
        private string strstrAddressLine1;

        public string AddressLine1
        {
            get { return strstrAddressLine1; }
            set { strstrAddressLine1 = value; }
        }
        private string strAddressLine2;

        public string AddressLine2
        {
            get { return strAddressLine2; }
            set { strAddressLine2 = value; }
        }
        private int strPinCode;

        public int PinCode
        {
            get { return strPinCode; }
            set { strPinCode = value; }
        }
        private int strCity;
        public int City
        {
            get { return strCity; }
            set { strCity = value; }
        }
        private int strStateProvince;
        public int StateProvince
        {
            get { return strStateProvince; }
            set { strStateProvince = value; }
        }
        private string strLandlineNo;
        public string LandlineNo
        {
            get { return strLandlineNo; }
            set { strLandlineNo = value; }
        }
        private string strNationality;
        public string Nationality
        {
            get { return strNationality; }
            set { strNationality = value; }
        }
        private int strPreferredCity1;
        public int PreferredCity1
        {
            get { return strPreferredCity1; }
            set { strPreferredCity1 = value; }
        }
        private int strPreferredCity2;
        public int PreferredCity2
        {
            get { return strPreferredCity2; }
            set { strPreferredCity2 = value; }
        }
        private int strPreferredCity3;
        public int PreferredCity3
        {
            get { return strPreferredCity3; }
            set { strPreferredCity3 = value; }
        }
        private DateTime strPreferredExamDate1;
        public DateTime PreferredExamDate1
        {
            get { return strPreferredExamDate1; }
            set { strPreferredExamDate1 = value; }
        }
        private DateTime strPreferredExamDate2;
        public DateTime PreferredExamDate2
        {
            get { return strPreferredExamDate2; }
            set { strPreferredExamDate2 = value; }
        }
        private DateTime strPreferredExamDate3;
        public DateTime PreferredExamDate3
        {
            get { return strPreferredExamDate3; }
            set { strPreferredExamDate3 = value; }
        }
        private int strHSCDetails;
        public int HSCDetails
        {
            get { return strHSCDetails; }
            set { strHSCDetails = value; }
        }
        private string strAnyother;
        public string Anyother
        {
            get { return strAnyother; }
            set { strAnyother = value; }
        }
        private string strBachlorDegree;
        public string BachlorDegree
        {
            get { return strBachlorDegree; }
            set { strBachlorDegree = value; }
        }
        private decimal strGraduationPercentage;
        public decimal GraduationPercentage
        {
            get { return strGraduationPercentage; }
            set { strGraduationPercentage = value; }
        }
        private int strYearofQualifyingExam;
        public int YearofQualifyingExam
        {
            get { return strYearofQualifyingExam; }
            set { strYearofQualifyingExam = value; }
        }
        private int strQualifyingDegree;
        public int QualifyingDegree
        {
            get { return strQualifyingDegree; }
            set { strQualifyingDegree = value; }
        }
        private string strAnyOther1;
        public string AnyOther1
        {
            get { return strAnyOther1; }
            set { strAnyOther1 = value; }
        }
        private int strQualifyingUniversity;
        public int QualifyingUniversity
        {
            get { return strQualifyingUniversity; }
            set { strQualifyingUniversity = value; }
        }
        private string strPaymentLock;
        public string PaymentLock
        {
            get { return strPaymentLock; }
            set { strPaymentLock = value; }
        }

    }


    
   
}
