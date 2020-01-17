using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DocApp
{
    public partial class ViewPatients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dbConnectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            try
            {
                var selectQuery = "SELECT Username FROM tblPatients";
                var dbConnection = new SqlConnection(dbConnectionString);
                var dataAdapter = new SqlDataAdapter(selectQuery, dbConnection);

                var sqlCommandBuilder = new SqlCommandBuilder(dataAdapter);
                var ds = new DataSet();
                dataAdapter.Fill(ds);
                gdvPatients.DataSource = ds.Tables[0];
                gdvPatients.DataBind();
            }
            catch (Exception ex)
            {

                Console.WriteLine("Error occured" + ex.Message);
            }
        }
    }
}