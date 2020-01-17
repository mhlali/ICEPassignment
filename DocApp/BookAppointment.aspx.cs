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
    public partial class BookAppointment : System.Web.UI.Page
    {
        string status;
        public SqlConnection dbConnectionString = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string insertQuery = "INSERT INTO tblAppointments(ID,FirstName,LastName,Email,AppointmentDate,AppointmentTime) VALUES(@value1,@value2,@value3,@value4,@value5,@value6)";

            try
            {
                dbConnectionString.Open();
                SqlCommand com = new SqlCommand(insertQuery, dbConnectionString);

                com.Parameters.AddWithValue("@value1", txtID.Text);
                com.Parameters.AddWithValue("@value2", txtFirstName.Text);
                com.Parameters.AddWithValue("@value3", txtLastName.Text);
                com.Parameters.AddWithValue("@value4", txtEmail.Text);
                com.Parameters.AddWithValue("@value5", txtAppoDate.Text);
                com.Parameters.AddWithValue("@value6", txtAppoTime.Text);


                int result = com.ExecuteNonQuery();

                if (result == 1)
                {
                    status = "Appointment is successfully booked";
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