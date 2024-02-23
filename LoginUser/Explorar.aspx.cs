using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginUser
{
    public partial class Explorar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string term = Request.Form["searchInput"];
            DataTable dt = BuscarLugaresPorTitulo(term);

        }

        private DataTable BuscarLugaresPorTitulo(string term)
        {
            DataTable dt = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;
            string query = "SELECT * FROM Lugares WHERE titulo LIKE '%' + @term + '%'";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@term", term);
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                }
            }
            return dt;
        }
    }
}