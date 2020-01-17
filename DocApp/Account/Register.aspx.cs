using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using DocApp.Models;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Configuration;

namespace DocApp.Account
{
    public partial class Register : Page
    {
        string status;
        public SqlConnection dbConnectionString = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            
            string insertQuery = "INSERT INTO tblPatients(Username,Password,ConfirmPassword) VALUES(@value1,@value2,@value3)";

            try
            {
                dbConnectionString.Open();
                SqlCommand com = new SqlCommand(insertQuery, dbConnectionString);
                
                com.Parameters.AddWithValue("@value1", UserName.Text);
                com.Parameters.AddWithValue("@value2", Password.Text);
                com.Parameters.AddWithValue("@value3", ConfirmPassword.Text);
                

                int result = com.ExecuteNonQuery();

                if (result == 1)
                {
                    status = "Patient is successfully registered";
                    lblStatus.Text = status;
                }


            }
            catch (Exception exc)
            {

                status = "Error occured " + exc.Message;
                lblStatus.Text = status;
            }
            finally
            {
                dbConnectionString.Close();
            }
        }
    }
}