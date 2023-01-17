using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_System
{
    public partial class SignUp_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = sUsernameTextbox.Text;
            Session["password"] = sPasswordTextbox.Text;
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            accountsEntities db = new accountsEntities();

            var tblLogins = db.logins;
            logins newLogin = new logins();

            newLogin.username = sUsernameTextbox.Text;
            newLogin.password = sPasswordTextbox.Text;

            db.SaveChanges();

            Response.Redirect("Default.aspx");
        }

        protected void LoginRedirectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}