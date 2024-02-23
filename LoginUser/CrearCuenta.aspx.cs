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
    public partial class CrearCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnCrearCuenta_Click(object sender, EventArgs e)
        {
            string patron = "ecoreserva"; // Define el patrón aquí
            string conectar = ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;

            try
            {
                using (SqlConnection sqlConectar = new SqlConnection(conectar))
                {
                    SqlCommand cmd = new SqlCommand("AgregarUsuario", sqlConectar)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add("@nombre", SqlDbType.VarChar, 50).Value = TextBoxNombre.Text;
                    cmd.Parameters.Add("@contraseña", SqlDbType.VarChar, 100).Value = TextBoxContraseña.Text;
                    cmd.Parameters.Add("@patron", SqlDbType.VarChar, 50).Value = patron;

                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                }

                Response.Redirect("LoginUser.aspx"); // Redirigir al usuario al formulario de inicio de sesión después de crear la cuenta
            }
            catch (Exception ex)
            {
                lblError.Text = "Error al crear la cuenta: " + ex.Message;
            }
        }

    }

}
