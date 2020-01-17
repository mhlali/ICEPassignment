using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace DocApp.Account
{
    public partial class mLogin : System.Web.UI.Page
    {
        public SqlConnection myCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
        public string status;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string selectQuery = "Select * FROM tblPatients";

            try
            {
                myCon.Open();
                SqlCommand com = new SqlCommand(selectQuery, myCon);
                SqlDataReader reader = com.ExecuteReader();

                while (reader.Read())
                {
                    var returnUsername = reader.GetValue(0);
                    var returnPassword = reader.GetValue(1);

                    if (returnUsername.ToString() == txtUsername.Text.Trim() && returnPassword.ToString() == txtPassword.Text.Trim())
                    {
                        Response.Redirect("~/BookAppointment.aspx");
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