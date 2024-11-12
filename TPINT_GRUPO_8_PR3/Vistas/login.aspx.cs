using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class login : System.Web.UI.Page
    {
        string contrasenia;
        NegocioUsuarios negUs = new NegocioUsuarios();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Request.Cookies["UsuarioInfo"] != null)
            {
                //EL USUARIO ESTA LOGUEADO EN EL SISTEMA
                HttpCookie cookie = Request.Cookies["UsuarioInfo"];
                string tipoUsuario = cookie["TipoUsuario"];
                
                if(tipoUsuario == "Medico")
                {
                    //MEDICO
                    Response.Redirect("/Medico/TurnosYPacientes.aspx");
                }
                else
                {
                    //ADMINISTRADOR
                    Response.Redirect("/Administrador/menuAdministrador.aspx");
                }
            }
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
            DataRow fila = negUs.inicioSesion(txtUsuario.Text, txtContraseña.Text);

            if(fila != null)
            {
                //AGARRAMOS LOS DATOS
                string usuario = fila["Usuario"].ToString();
                int legajo = Convert.ToInt32(fila["Legajo"]);
                string TipoUsuario = fila["TipoUsuario"].ToString();

                //CREAMOS LA COOKIE
                HttpCookie cookie = new HttpCookie("UsuarioInfo");
                cookie["Legajo"] = legajo.ToString();
                cookie["TipoUsuario"] = TipoUsuario;
                cookie["Usuario"] = usuario;
                cookie.Path = "/";

                //EXPIRA EN 2 HORAS
                cookie.Expires = DateTime.Now.AddHours(2);

                //AGREGAMOS LA COOKIE
                Response.Cookies.Add(cookie);

                if(fila["TipoUsuario"].ToString() == "Medico")
                {
                    Response.Redirect("Medico/TurnosYPacientes.aspx");
                }
                else
                {
                    Response.Redirect("Administrador/menuAdministrador.aspx");
                }
            }
            else
            {
                //LIMPIAMOS LOS TEXT
                txtUsuario.Text = "";
                txtContraseña.Text = "";
            }
           
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            contrasenia = txtContraseña.Text;
            if (txtContraseña.TextMode == TextBoxMode.Password)
            {

                txtContraseña.TextMode = TextBoxMode.SingleLine;
                btnMostrar.Text = "Ocultar";
                txtContraseña.Attributes["value"] = contrasenia;

            }
            else
            {
                txtContraseña.TextMode = TextBoxMode.Password;
                btnMostrar.Text = "Mostrar";
                txtContraseña.Attributes["value"] = contrasenia;
            }
        }
    }
}