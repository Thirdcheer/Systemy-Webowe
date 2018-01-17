using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Systemy_webowe.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void ValidateUser(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Validate_User"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", LoginUser.UserName);
                    cmd.Parameters.AddWithValue("@Password", LoginUser.Password);
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
                switch (userId)
                {
                    case -1:
                        LoginUser.FailureText = "Username and/or password is incorrect.";
                        break;
                    case -2:
                        LoginUser.FailureText = "Account has not been activated.";
                        break;
                    default:
                        FormsAuthentication.RedirectFromLoginPage(LoginUser.UserName, LoginUser.RememberMeSet);
                        break;
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        }
    }
}
