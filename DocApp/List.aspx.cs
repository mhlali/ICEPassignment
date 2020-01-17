using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace DocApp
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dbConnectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            try
            {
                var selectQuery = "SELECT * FROM tblAppointments";
                var dbConnection = new SqlConnection(dbConnectionString);
                var dataAdapter = new SqlDataAdapter(selectQuery, dbConnection);

                var sqlCommandBuilder = new SqlCommandBuilder(dataAdapter);
                var ds = new DataSet();
                dataAdapter.Fill(ds);
                gdvList.DataSource = ds.Tables[0];
                gdvList.DataBind();
            }
            catch (Exception ex)
            {
                
                Console.WriteLine("Error occured"+ex.Message);
            }
           
        }

       
    }
}