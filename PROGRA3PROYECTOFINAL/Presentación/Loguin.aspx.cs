using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace PROGRA3PROYECTOFINAL.Presentación
{
    public partial class Loguin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text;
            string password = txtPassword.Text;

            // Obtener la cadena de conexión desde el web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SistemaReciclajeConnectionString"].ConnectionString;

            string query = "SELECT Id FROM Usuarios WHERE Usuario=@Usuario AND Password=@Password";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Usuario", usuario);
                cmd.Parameters.AddWithValue("@Password", password);

                con.Open();
                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    // Usuario autenticado, guardar información en la sesión
                    Session["UsuarioId"] = result.ToString();
                    Session["Usuario"] = usuario;

                    // Redirigir a la página de registro de reciclaje
                    Response.Redirect("RegistroReciclaje.aspx");
                }
                else
                {
                    // Error en la autenticación
                    lblError.Text = "Usuario o contraseña incorrectos.";
                    lblError.Visible = true;
                }
            }
        }
    }
}
