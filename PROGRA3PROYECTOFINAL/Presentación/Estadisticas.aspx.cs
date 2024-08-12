using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROGRA3PROYECTOFINAL.Presentación
{
    public partial class Estadisticas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEstadisticas();
            }
        }

        private void CargarEstadisticas()
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SistemaReciclajeConnectionString"].ConnectionString;

            string query = @"
                SELECT Material, SUM(Cantidad) AS TotalCantidad
                FROM RegistroReciclaje
                GROUP BY Material
                ORDER BY Material";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                gvEstadisticas.DataSource = reader;
                gvEstadisticas.DataBind();
            }
        }
        protected void btnHome_Click(object sender, EventArgs e)
        {
            // Redirige a la página de inicio
            Response.Redirect("Home.aspx");
        }
    }
}