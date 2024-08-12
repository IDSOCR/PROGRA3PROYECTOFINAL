using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROGRA3PROYECTOFINAL.Presentación
{
    public partial class RegistroReciclaje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Asumiendo que el nombre del usuario está almacenado en una sesión después del login
                lblUsuario.Text = "Usuario: " + Session["Usuario"].ToString();

                // Cargar historial del usuario
                CargarHistorial();
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string usuario = Session["Usuario"].ToString();
            string material = ddlMaterial.SelectedValue;
            decimal cantidad = Convert.ToDecimal(txtCantidad.Text);
            DateTime fecha = DateTime.Now;
            int puntos = (int)(cantidad * 5);

            // Obtener la cadena de conexión desde el web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SistemaReciclajeConnectionString"].ConnectionString;

            string query = "INSERT INTO RegistroReciclaje (Usuario, Material, Cantidad, Fecha, Puntos) VALUES (@Usuario, @Material, @Cantidad, @Fecha, @Puntos)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Usuario", usuario);
                cmd.Parameters.AddWithValue("@Material", material);
                cmd.Parameters.AddWithValue("@Cantidad", cantidad);
                cmd.Parameters.AddWithValue("@Fecha", fecha);
                cmd.Parameters.AddWithValue("@Puntos", puntos);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            // Recargar el historial
            CargarHistorial();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Limpiar la sesión y redirigir al usuario a la página de inicio
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Inicio.aspx");
        }

        private void CargarHistorial()
        {
            string usuario = Session["Usuario"].ToString();
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SistemaReciclajeConnectionString"].ConnectionString;

            string query = "SELECT Fecha, Material, Cantidad, Puntos FROM RegistroReciclaje WHERE Usuario=@Usuario";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Usuario", usuario);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                gvHistorial.DataSource = reader;
                gvHistorial.DataBind();
            }
        }
    }
}