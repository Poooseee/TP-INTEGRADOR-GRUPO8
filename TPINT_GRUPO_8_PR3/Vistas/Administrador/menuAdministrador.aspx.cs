﻿using System;
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
            HttpCookie cookie = new HttpCookie("UsuarioInfo");
            cookie.Path = "/";

            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);

            Response.Redirect("../login.aspx");
        }
    }
}