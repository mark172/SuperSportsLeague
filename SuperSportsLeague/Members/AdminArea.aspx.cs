using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuperSportsLeague
{
    public partial class AdminArea : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["GoDaddyDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            QueryDatabase();
        }

        /* Get all records from DB */
        private void QueryDatabase()
        {
            try
            {

                string SqlString = "SELECT * FROM UserInfo";
                using (SqlConnection conn = new SqlConnection(cs))
                {
                    using (SqlCommand cmd = new SqlCommand(SqlString, conn))
                    {
                        conn.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            GridView1.DataSource = reader;
                            GridView1.DataBind();
                        }
                    }
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gridViewSSL_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        /* delete record */
        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());

            using (SqlConnection conn = new SqlConnection(cs))
            {
                string sql = "DELETE FROM UserInfo WHERE ID=" +  ID + "";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue( "@ID", ID);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    QueryDatabase();
                }
            }
        }

        /* confirm delete record from data grid */
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[0].Text;
                foreach (Button button in e.Row.Cells[3].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                    }
                }
            }
        }

        /* update records after delete*/
        protected void ChangePage(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.QueryDatabase();
        }


    }
}