﻿using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class MenuMedicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["UsuarioInfo"] != null)
            {
                HttpCookie cookie = Request.Cookies["UsuarioInfo"];

                //EL USUARIO ESTA LOGUEADO EN EL SISTEMA CON LA COOKIE
                if(cookie["TipoUsuario"].ToString() == "Medico")
                {
                    //EL USUARIO TIENE ACCESO
                    string usuario = cookie["Usuario"];
                    lblUsuario.Text = usuario;
                    cargarGrdTurnos();
                }
                else 
                {
                    //EL USUARIO NO ES MEDICO, SE REDIRIGE A ADMINISTRADOR
                    Response.Redirect("../Administrador/menuAdministrador.aspx");
                }
            }
            else if (Session["TipoUsuario"] != null)
            {
                //EL USUARIO ESTA LOGUEADO EN EL SISTEMA
                if (Session["TipoUsuario"].ToString() == "Medico")
                {
                    //EL USUARIO TIENE ACCESO
                    string usuario = Session["Usuario"].ToString();
                    lblUsuario.Text = usuario;
                    cargarGrdTurnos();
                }
                else
                {
                    //EL USUARIO NO ES MEDICO, SE REDIRIGE A ADMINISTRADOR
                    Response.Redirect("../Administrador/menuAdministrador.aspx");
                }
            }
            else
            {
                //EL USUARIO NO ESTA LOGUEADO EN EL SISTEMA
                 Response.Redirect("../login.aspx");
            }
        }
        public void cargarGrdTurnos()
        {
            NegocioTurnos negocioTurnos = new NegocioTurnos();
            grvTurnos.DataSource = negocioTurnos.obtenerTablaTurnos();
            grvTurnos.DataBind();
        }
        protected void grvTurnos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            NegocioTurnos negocioTurnos = new NegocioTurnos();
            grvTurnos.EditIndex = e.NewEditIndex;
            negocioTurnos.obtenerTablaTurnos();
            grvTurnos.DataBind();
        }

        protected void grvTurnos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvTurnos.EditIndex = -1;
            cargarGrdTurnos();
        }

        protected void grvTurnos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            /* FALTA CREAR LA ENTIDAD TURNO Y MANDAR ESTO A LA BD
            string NroTurno = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblNroTurno")).Text;
            string Fecha = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblFechaTurno")).Text;
            string Hora = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblHoraTurno")).Text;
            string Paciente = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblDNIPaciente")).Text;
            string Presentismo = ((DropDownList)grvTurnos.Rows[e.RowIndex].FindControl("ddlPresentismo")).SelectedValue;
            string Estado = ((DropDownList)grvTurnos.Rows[e.RowIndex].FindControl("ddlEstado")).SelectedValue;
            string Observaciones = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblObservaciones")).Text;
            */
            grvTurnos.EditIndex = -1;
            cargarGrdTurnos();
        }

        protected void lnkbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            eliminarCookie();

            Response.Redirect("../login.aspx");
        }
        private void eliminarCookie()
        {
            HttpCookie cookie = new HttpCookie("UsuarioInfo");
            cookie.Path = "/";

            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
        }
    }
}