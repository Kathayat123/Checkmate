using Common.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DU_HomePage : ClsErrorLog
{
    CommonPerception mysql = new CommonPerception();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin1_Click(object sender, EventArgs e)
    {
        try
        {
            GetUserInfo();
        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }

    private void GetUserInfo()
    {
        string LoginID = UserId.Value;
        string UserPassword = ddPassword.Value;

        DataSet ds = mysql.GetDataSet("sp_CheckIfUserIsValid '" + LoginID + "', '" + UserPassword + "'");
        if (ds.Tables[0].Rows.Count <= 0)

        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Invalid Credentials');", true);
            UserId.Focus();
            return;
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('OBJECTION FORM HAS BEEN CLOSED NOW.');", true);
            return;
            string RollNo = Encrypt(LoginID, true);

            if (String.IsNullOrEmpty(Convert.ToString(ds.Tables[0].Rows[0]["papersetname"])))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Result is not available because you was absent for the Exam.');", true);
                UserId.Focus();
                return;
            }

            Session["Subject"] = Convert.ToString(ds.Tables[0].Rows[0]["papersetname"]);
            Response.Redirect("WelcomePage.aspx?RollNo=" + RollNo);
        }
    }



}