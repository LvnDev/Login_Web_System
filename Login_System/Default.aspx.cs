using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_System
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = UsernameTextbox.Text;
            Session["password"] = PasswordTextbox.Text;
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            accountsEntities db = new accountsEntities();
            var dblogins = db.logins;
            foreach (var logins in dblogins)
            {

                if (UsernameTextbox.Text == logins.username && PasswordTextbox.Text == logins.password)
                {
                    Session["username"] = UsernameTextbox.Text;
                    Session["password"] = PasswordTextbox.Text;

                    Response.Redirect("Index.aspx");
                }
                else
                {
                    error.Text = "Incorrect login";
                }

            }
        }

        protected void SignUpRedirectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp-Page.aspx");
        }
    }
}