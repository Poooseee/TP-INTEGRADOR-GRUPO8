﻿using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administrador
{
    public partial class ABML_MEDICO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGrdMedicos();
                cargarProvinciasAlDDL();
                cargarLocalidadesAlDDL();
                obtenerCookie();
            }

        }
        NegocioMedicos negMedicos = new NegocioMedicos();
        public void obtenerCookie()
        {
            HttpCookie cookie = this.Request.Cookies["UsuarioInfo"];
            lblUsuario.Text = cookie["Usuario"];
        }
        public void cargarProvinciasAlDDL()
        {
            NegocioProvincias prov = new NegocioProvincias();
            DataTable dt = new DataTable();
            dt = prov.obtenerTablaProvincias();
            ddlProvincia.DataSource = dt;
            ddlProvincia.DataTextField = "nombreProvincia_PR";
            ddlProvincia.DataValueField = "IdProvincia_PR";
            ddlProvincia.DataBind();
            ddlProvincia.Items.Insert(0, new ListItem("Seleccione una provincia", "0"));
        }
        public void cargarLocalidadesAlDDL()
        {
            NegocioLocalidades loc = new NegocioLocalidades();
            DataTable dt = new DataTable();
            dt = loc.obtenerTablaLocalidades();
            ddlLocalidad.DataSource = dt;
            ddlLocalidad.DataTextField = "nombreLocalidad_L";
            ddlLocalidad.DataValueField = "IdLocalidad_L";
            ddlLocalidad.DataBind();
            ddlLocalidad.Items.Insert(0, new ListItem("Seleccione una localidad", "0"));
        }
        public void cargarGrdMedicos()
        {
            NegocioMedicos NM = new NegocioMedicos();
            grdMedicos.DataSource = NM.obtenerTablaMedicos();
            grdMedicos.DataBind();
        }
        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdMedicos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdMedicos.EditIndex = -1;
            cargarGrdMedicos();
        }

        protected void grdMedicos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdMedicos.EditIndex = e.NewEditIndex;
            cargarGrdMedicos();
        }

        protected void grdMedicos_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }
        protected void grdMedicos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }
        protected Medico llenarEntidadMedico()
        {
            Medico medico = new Medico();
            medico.Legajo = int.Parse(txtLegajo.Text.Trim());
            medico.Dni = int.Parse(txtDNI.Text.Trim());
            medico.Nombre = txtNombre.Text.Trim();
            medico.Apellido = txtApellido.Text.Trim();
            medico.Sexo = ddlSexo.SelectedValue.ToString();
            medico.Nacionalidad = ddlNacionalidad.SelectedValue.ToString();
            medico.FechaNac = DateTime.Parse(txtFechaNac.Text.Trim());
            medico.Direccion = txtDireccion.Text.Trim();
            medico.Localidad = int.Parse(ddlLocalidad.SelectedValue.ToString());
            medico.Provincia = int.Parse(ddlProvincia.SelectedValue.ToString());
            medico.Email = txtCorreo.Text.Trim();
            medico.Telefono = txtTelefono.Text.Trim();
            medico.Especialidad = ddlEspecialidades.SelectedItem.ToString();
            medico.Baja = false;
           
            return medico;
        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            
            //se carga un objeto con todos los valores
            Medico medico = llenarEntidadMedico();
            if (negMedicos.agregarMedico(medico))
            {
                
            }
            else
            {
               
            }

        }
    }
}