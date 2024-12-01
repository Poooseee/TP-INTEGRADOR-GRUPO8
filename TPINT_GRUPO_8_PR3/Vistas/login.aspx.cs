using Entidades;
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
                //EL USUARIO ESTA LOGUEADO EN EL SISTEMA CON LA COOKIE
                HttpCookie cookie = Request.Cookies["UsuarioInfo"];
                string tipoUsuario = cookie["TipoUsuario"];
                
                if(tipoUsuario.ToLower() == "medico")
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
            else if(Session["TipoUsuario"] != null)
            {
                if(Session["TipoUsuario"].ToString() == "Medico")
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

        //CONTROLAR NOMBRE DE USUARIO
        protected void cvInicioSesion_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (negUs.nombreUsuarioValido(txtUsuario.Text))
            {
                args.IsValid = true;
            }
            else { args.IsValid = false; }
        }

        //CONTROLAR CONTRASEÑA
        protected void cvContrasena_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (negUs.contraseniaValida(txtContraseña.Text))
            {
                args.IsValid = true;
            }
            else { args.IsValid = false; }
        }

        //BOTON DE INGRESAR
        private void crearCookie(string usuario, int legajo, string TipoUsuario)
        {
            //CREAMOS LA COOKIE
            HttpCookie cookie = new HttpCookie("UsuarioInfo");
            cookie["Legajo"] = legajo.ToString();
            cookie["TipoUsuario"] = TipoUsuario;
            cookie["Usuario"] = usuario;
            cookie.Path = "/";

            //EXPIRA EN 7 DIAS
            cookie.Expires = DateTime.Now.AddDays(7);

            //AGREGAMOS LA COOKIE
            Response.Cookies.Add(cookie);
        }
        private void crearSession(string usuario, int legajo, string TipoUsuario)
        {
            //CREAMOS LA SESSION
            Session["Legajo"] = legajo;
            Session["TipoUsuario"] = TipoUsuario;
            Session["Usuario"] = usuario;
        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            DataRow datosUsuario = negUs.inicioSesion(txtUsuario.Text, txtContraseña.Text);
            
            if(datosUsuario != null)
            {
                //AGARRAMOS LOS DATOS
                string usuario = datosUsuario["Usuario"].ToString();
                int legajo = Convert.ToInt32(datosUsuario["Legajo"]);
                string TipoUsuario = datosUsuario["TipoUsuario"].ToString();

                if(cbRecordarme.Checked)
                {
                    crearCookie(usuario,legajo,TipoUsuario);
                }
                else
                {
                    crearSession(usuario, legajo, TipoUsuario);
                }

                if (datosUsuario["TipoUsuario"].ToString() == "Medico")
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
                lblCredencialesIncorrectas.Text = "Credenciales Incorrectas";
            }
           
        }

        //BOTON MOSTRAR/OCULTAR CONTRASEÑA
        private void MostrarContraseña()
        {
            txtContraseña.TextMode = TextBoxMode.SingleLine;
            btnMostrar.Text = "Ocultar";
            txtContraseña.Attributes["value"] = contrasenia;
        }
        private void OcultarContraseña()
        {
            txtContraseña.TextMode = TextBoxMode.Password;
            btnMostrar.Text = "Mostrar";
            txtContraseña.Attributes["value"] = contrasenia;
        }
        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            contrasenia = txtContraseña.Text;

            if (txtContraseña.TextMode == TextBoxMode.Password)
            {
                MostrarContraseña();
            }
            else
            {
                OcultarContraseña();  
            }
        }
    }
}