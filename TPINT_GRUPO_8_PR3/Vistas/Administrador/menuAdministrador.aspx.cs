using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPacientes_Click(object sender, EventArgs e)
        {
            Server.Transfer("ABML_Paciente.aspx");
        }

        protected void btnMedicos_Click(object sender, EventArgs e)
        {
            Server.Transfer("ABML_Medico.aspx");
        }

        protected void btnTurnos_Click(object sender, EventArgs e)
        {
            Server.Transfer("asignacionTurnos.aspx");
        }

        protected void btnInformes_Click(object sender, EventArgs e)
        {
            Server.Transfer("Informes.aspx");
        }

        protected void lnkbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            //ELIMINAMOS LA COOKIE
            if (Request.Cookies["UsuarioInfo"] != null)
            {
                HttpCookie cookie = Request.Cookies["UsuarioInfo"];
                cookie.Expires = DateTime.Now.AddDays(-1);
                this.Response.Cookies.Add(cookie);
            }

            Response.Redirect("login.aspx");
        }
    }
}