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

public partial class DUET2018_LoginPage : ClsErrorLog
{
    CommonPerception mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string LoginId = txtLogin.Value;
            string Password = txtPassword.Value;

            if (LoginId == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter Form No');", true);
                txtLogin.Focus();
                return;
            }

            if (Password == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter Password');", true);
                txtPassword.Focus();
                return;
            }

            if (LoginId == "ALPHA2019" && Password == "@LPHA#2019")
            {
                Session["LoginId"] = LoginId;
                Response.Redirect("WelcomePage.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Invalid Credentails');", true);
                return;
            }
        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }
}