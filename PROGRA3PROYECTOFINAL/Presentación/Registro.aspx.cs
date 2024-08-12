using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROGRA3PROYECTOFINAL.Presentación
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (password != confirmPassword)
            {
                lblError.Text = "Las contraseñas no coinciden.";
                lblError.Visible = true;
                return;
            }

            // Obtén la cadena de conexión desde el web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SistemaReciclajeConnectionString"].ConnectionString;

            string query = "INSERT INTO Usuarios (Usuario, Correo, Password) VALUES (@Usuario, @Correo, @Password)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Usuario", usuario);
                cmd.Parameters.AddWithValue("@Correo", email);
                cmd.Parameters.AddWithValue("@Password", password);

                con.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Loguin.aspx");
                }
                catch (Exception ex)
                {
                    lblError.Text = "Error al registrar el usuario: " + ex.Message;
                    lblError.Visible = true;
                }
            }
        }
    }
}