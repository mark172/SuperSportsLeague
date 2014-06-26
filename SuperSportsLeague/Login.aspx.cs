using HashLibrary;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuperSportsLeague
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginControl_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool authenticated = this.ValidateCredentials(LoginControl.UserName, LoginControl.Password);

            if (authenticated)
            {
                FormsAuthentication.RedirectFromLoginPage(LoginControl.UserName, LoginControl.RememberMeSet);
            }
        }

        public bool IsAlphaNumeric(string text)
        {
            return Regex.IsMatch(text, "^[a-zA-Z0-9]+$");
        }

        private bool ValidateCredentials(string userName, string password)
        {
            bool returnValue = false;

            if (this.IsAlphaNumeric(userName) && userName.Length <= 50 && password.Length <= 50)
            {
                SqlConnection conn = null;

                try
                {
                    string sql = "SELECT COUNT(*) FROM Login WHERE UserName = @UserName and Password = @Password";

                    conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GoDaddyDB"].ConnectionString);
                    SqlCommand cmd = new SqlCommand(sql, conn);

                    SqlParameter user = new SqlParameter();
                    user.ParameterName = "@UserName";
                    user.Value = userName.Trim();
                    cmd.Parameters.Add(user);

                    SqlParameter pass = new SqlParameter();
                    pass.ParameterName = "@Password";
                    pass.Value = Hasher.HashString(password.Trim());
                    cmd.Parameters.Add(pass);

                    conn.Open();

                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0) returnValue = true;
                }
                catch (Exception ex)
                {
                    // Babu says do this later
                }
                finally
                {
                    if (conn != null) conn.Close();
                }
            }
            else
            {
                // Log error - Vhy must vee log? 
                
            }

            return returnValue;
        }
    }
}