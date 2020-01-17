using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DocApp
{
    public partial class Appointments : System.Web.UI.Page
    {
        public SqlConnection myCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
        public string status;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string selectQuery = "Select * FROM tblDoctor";

            try
            {
                myCon.Open();
                SqlCommand com = new SqlCommand(selectQuery, myCon);
                SqlDataReader reader = com.ExecuteReader();

                while (reader.Read())
                {
                    var returnUsername = reader.GetValue(3);
                    var returnPassword = reader.GetValue(4);

                    if (returnUsername.ToString() == txtUsername.Text.Trim() && returnPassword.ToString() == txtPassword.Text.Trim())
                    {
                        Response.Redirect("~/List.aspx");
                    }
                    else
                    {
                        lblLogin.Text = "Incorrect password or username, try again".ToUpper() + returnPassword.ToString();
                    }
                    Session["name"] = txtUsername.Text;
                }
            }
            catch (Exception ex)
            {

                lblLogin.Text = "Problem encountered " + ex.Message;
            }
            finally
            {
                myCon.Close();
            }
        }
    }

}
