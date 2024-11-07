using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class login : System.Web.UI.Page
    {
        NegocioUsuarios negUs = new NegocioUsuarios();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvInicioSesion_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (negUs.nombreUsuarioValido(txtUsuario.Text))
            {
                args.IsValid = true;
            }
            else { args.IsValid = false; }
        }

        protected void cvContrasena_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (negUs.contraseniaValida(txtContraseña.Text))
            {
                args.IsValid = true;
            }
            else { args.IsValid = false; }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            switch (negUs.inicioSession(txtUsuario.Text, txtContraseña.Text))
            {
                case 1:
                    Server.Transfer("Administrador/menuAdministrador.aspx");
                    break;
                case 2:
                    Server.Transfer("Medico/TurnosYPacientes.aspx");
                    break;
                case 0:

                    break;
            }
        }
    }
}