﻿using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

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
            Turno turno = new Turno();

            //NO AGARRA LOS VALORES NUEVOS, SE QUEDA CON LOS VIEJOS
            turno.NroTurno = Convert.ToInt32(((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblNroTurno")).Text);
            string fechaTexto = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblFechaTurno")).Text;
            string[] fechaValida = fechaTexto.Split('/');
            turno.Fecha = DateTime.Parse(fechaValida[2] + "-" + fechaValida[1] + "-" + fechaValida[0]);
            turno.Hora = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblHoraTurno")).Text;
            turno.DniPaciente1 = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblDNIPaciente")).Text;
            turno.Presentismo = ((DropDownList)grvTurnos.Rows[e.RowIndex].FindControl("ddlPresentismo")).SelectedValue;
            turno.Estado = ((DropDownList)grvTurnos.Rows[e.RowIndex].FindControl("ddlEstado")).SelectedValue;
            turno.Observaciones = ((TextBox)grvTurnos.Rows[e.RowIndex].FindControl("txtObservaciones")).Text;
            
            //ACTUALIZAMOS
            NegocioTurnos negTur = new NegocioTurnos();

            if (negTur.actualizarTurno(turno))
            {
                lblMensaje.Text = "TURNO ACTUALIZADO CON EXITO";
            }
            else
            {
                lblMensaje.Text = "ERROR AL ACTUALIZAR EL TURNO";
            }
            
            grvTurnos.EditIndex = -1;
            cargarGrdTurnos();
        }

        protected void lnkbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            if(Request.Cookies["UsuarioInfo"] != null)
            {
                eliminarCookie();
            }
            else
            {
                eliminarSessions();
            }

            Response.Redirect("../login.aspx");
        }
        private void eliminarCookie()
        {
            HttpCookie cookie = new HttpCookie("UsuarioInfo");
            cookie.Path = "/";

            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
        }

        private void eliminarSessions()
        {
            Session.Remove("TipoUsuario");
            Session.Remove("Usuario");
            Session.Remove("Legajo");
        }

        protected void grvTurnos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lbl = (Label)e.Row.FindControl("lblFechaTurno");
                DateTime lblFecha = Convert.ToDateTime(((Label)e.Row.FindControl("lblFechaTurno")).Text);

                lbl.Text = lblFecha.ToString("dd/MM/yyyy");
            }
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if(txtPaciente.Text.Trim().Length > 0 && !string.IsNullOrEmpty(txtFecha.Text))
            {
                NegocioTurnos negTur = new NegocioTurnos();
                grvTurnos.DataSource = negTur.filtrarTurnos(3 , txtPaciente.Text , txtFecha.Text);

                grvTurnos.DataBind();
            }
            else if(txtPaciente.Text.Trim().Length > 0)
            {
                NegocioTurnos negTur = new NegocioTurnos();
                grvTurnos.DataSource = negTur.filtrarTurnos(2 , txtPaciente.Text , null);

                grvTurnos.DataBind();
            }
            else if (!string.IsNullOrEmpty(txtFecha.Text))
            {
                NegocioTurnos negTur = new NegocioTurnos();
                grvTurnos.DataSource = negTur.filtrarTurnos(1 , null , txtFecha.Text);

                grvTurnos.DataBind();
            }
            else
            {
                cargarGrdTurnos();
            }
        }
    }
}