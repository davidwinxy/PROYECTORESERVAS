using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace LoginUser
{
    public partial class LoginUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string patron = "ecoreserva";
        protected void BtnIgresar_Click (object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("ValidarUsuario", sqlConectar)
                {
                    CommandType = CommandType.StoredProcedure
                };
            cmd.Connection.Open();
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar, 50).Value = Tnombre.Text;
            cmd.Parameters.Add("@contraseña", SqlDbType.VarChar, 50).Value = Tcontraseña.Text;
            cmd.Parameters.Add("@patron", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read()) 
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                Session["iniciada"] = Tnombre.Text;
                lblError.Text = "Datos incorrectos";
            }
            cmd.Connection.Close();
        }
    }
}