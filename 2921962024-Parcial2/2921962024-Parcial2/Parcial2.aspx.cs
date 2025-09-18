using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2921962024_Parcial2
{
    public partial class Parcial2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            double min, max;

           
            if (double.TryParse(txtMin.Text, out min) && double.TryParse(txtMax.Text, out max))
            {
                
                string cs = ConfigurationManager.ConnectionStrings["ConexionAzure"].ConnectionString;

                using (SqlConnection con = new SqlConnection(cs))
                {
                   
                    string query = @"SELECT EnglishProductName, ListPrice
                                 FROM DimProduct
                                 WHERE ListPrice BETWEEN @Min AND @Max";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Min", min);
                        cmd.Parameters.AddWithValue("@Max", max);

                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                      
                        gvProductos.DataSource = dt;
                        gvProductos.DataBind();
                    }
                }
            }
            else
            {
              
                gvProductos.DataSource = null;
                gvProductos.DataBind();
            }
        }
}

}