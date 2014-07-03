using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuperSportsLeague
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            InsertToDatabase();
            SendContactEmail();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your information was submitted successfully. You will be contacted shortly.')", true);
            ClearForm();
        }

        /* insert record to databse */
        public void InsertToDatabase()
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["GoDaddyDB"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(cs))
                {
                    conn.Open();

                    String sqlCommandString = "INSERT INTO UserInfo (Name, Email, Message) " +
                                                 "VALUES (@Name, @Email, @Message);";
                    SqlCommand sqlCmd = new SqlCommand(sqlCommandString, conn);
                    sqlCmd.Parameters.AddWithValue("@Name", txtName.Text);
                    sqlCmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    sqlCmd.Parameters.AddWithValue("@Message", txtMessage.Text);
                    sqlCmd.ExecuteNonQuery();

                }
            }
            catch (Exception ex)
            {
                var errorMessage = ex.ToString();
                Response.Redirect("~/ErrorPages/500Error.aspx");
            }

        }


        private void ClearForm()
        {
            if (IsPostBack)
            {
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtMessage.Text = string.Empty;
            }
        }

        /* method to send contatct form info as an email */
        private void SendContactEmail()
        {
            string senderEmail = txtEmail.Text;

            MailMessage contactEmail = new MailMessage();

            contactEmail.From = new MailAddress("no-reply@supersportsleague.com");
            contactEmail.To.Add(new MailAddress("mark172@me.com"));
            contactEmail.To.Add(new MailAddress("deansnowden@gmail.com"));


            contactEmail.Subject = "Super Sports League info request";
            contactEmail.Body = "Name:  " + txtName.Text + "\n";
            contactEmail.Body += "Email:  " + senderEmail + "\n";
            contactEmail.Body += "Message:\n\t" + txtMessage.Text;

            SmtpClient client = new SmtpClient();
            client.Send(contactEmail);
        }


        /* clears all text boxes */
        private void ClearControl( Control control )
        {
            var textbox = control as TextBox;
            if (textbox != null)
                textbox.Text = string.Empty;

            foreach( Control childControl in control.Controls )
            {
                ClearControl( childControl );
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearControl(this);
        }       
    }
}