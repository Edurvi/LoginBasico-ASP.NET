using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class loginEdurvi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        string patron = "edurviggez";

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_VALIDARUSUARIO", sqlConectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@USUARIO", SqlDbType.VarChar, 50).Value = txtUsuario.Text;
            cmd.Parameters.Add("@CONTRASENIA", SqlDbType.VarChar, 50).Value = txtContraseña.Text;
            cmd.Parameters.Add("@PATRON", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader dr = cmd.ExecuteReader(); 
            if (dr.Read())
            {
                Session["usuariologueado"] = txtUsuario.Text;
                Response.Redirect("Index.aspx");
            } else
            {
                lblError.Text = "Error al Iniciar Sesion";
            }
            cmd.Connection.Close();

        }
    }
}