using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class asignacionTurnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UsuarioInfo"] != null)
            {
                //EL USUARIO ESTA LOGUEADO EN EL SISTEMA
                HttpCookie cookie = Request.Cookies["UsuarioInfo"];

                if (cookie["TipoUsuario"] == "Administrador")
                {
                    //EL USUARIO TIENE ACCESO
                    string usuario = cookie["Usuario"];
                    lblUsuario.Text = usuario;
                }
                else
                {
                    //EL USUARIO NO TIENE ACCESO
                    Response.Redirect("../Medico/TurnosYPacientes.aspx");
                }
            }
            else
            {
                //EL USUARIO NO ESTA LOGUEADO EN EL SISTEMA
                Response.Redirect("../login.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grvTurnos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdPacientes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}