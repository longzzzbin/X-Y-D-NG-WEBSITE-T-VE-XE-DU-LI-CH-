using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUserId.Text=="admin" && txtPassword.Text=="admin")
            {
                Session["UserName"] = "Admin";
                Response.Redirect("BusDetailsReport.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Admin ID hoặc mật khẩu không đúng. Vui lòng nhập lại.')", true); 
            }
        }
    }
}