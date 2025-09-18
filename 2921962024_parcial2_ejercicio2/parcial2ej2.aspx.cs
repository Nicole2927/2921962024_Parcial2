using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2921962024_parcial2_ejercicio2
{
    public partial class parcial2ej2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTest();
            }
        }

        private void CargarTest()
        {
            string cs = ConfigurationManager.ConnectionStrings["ConexionAzure"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"
                SELECT *
                FROM SalesLT.SalesReason
                ";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    gvResumen.DataSource = dt;
                    gvResumen.DataBind();
                }

            }
        }
    }
}