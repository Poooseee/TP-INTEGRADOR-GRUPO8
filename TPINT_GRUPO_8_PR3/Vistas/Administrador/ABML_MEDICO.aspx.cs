using Entidades;
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
                if (Request.Cookies["UsuarioInfo"] != null)
                {
                    //EL USUARIO ESTA LOGUEADO EN EL SISTEMA
                    HttpCookie cookie = Request.Cookies["UsuarioInfo"];

                    if (cookie["TipoUsuario"] == "Administrador")
                    {
                        //EL USUARIO TIENE ACCESO
                        string usuario = cookie["Usuario"];
                        lblUsuario.Text = usuario;

                        cargarGrdMedicos();
                        cargarProvinciasAlDDL();
                        cargarEspecialidadesAlDDL();
                        obtenerCookie();
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

        }
        NegocioMedicos negMedicos = new NegocioMedicos();
        public void obtenerCookie()
        {
          //  HttpCookie cookie = this.Request.Cookies["UsuarioInfo"];
           // lblUsuario.Text = cookie["Usuario"];
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

        public void cargarEspecialidadesAlDDL()
        {
            NegocioEspecialidades esp = new NegocioEspecialidades();
            DataTable dt = new DataTable();
            dt = esp.obtenerTablaEspecialidades();
            ddlEspecialidades.DataSource = dt;
            ddlEspecialidades.DataTextField = "nombreEspecialidad_E";
            ddlEspecialidades.DataBind();
            ddlEspecialidades.Items.Insert(0, new ListItem("Seleccione una especialidad"));
        }
        public void cargarGrdMedicos()
        {
            NegocioMedicos NM = new NegocioMedicos();
            grdMedicos.DataSource = NM.obtenerTablaMedicos();
            grdMedicos.DataBind();
        }
        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            NegocioLocalidades loc = new NegocioLocalidades();
            DataTable dt = new DataTable();
            int IdProvincia = ddlProvincia.SelectedIndex;
            dt = loc.obtenerTablaLocalidades(IdProvincia);
            ddlLocalidad.DataSource = dt;
            ddlLocalidad.DataTextField = "nombreLocalidad_L";
            ddlLocalidad.DataValueField = "IdLocalidad_L";
            ddlLocalidad.DataBind();
            ddlLocalidad.Items.Insert(0, new ListItem("Seleccione una localidad", "0"));
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
                lblAgregado.Text = "El medico se ha agregado correctamente.";
            }
            else
            {
                lblAgregado.Text = "No se ha podido agregar el medico.";
            }

        }

        protected void grdMedicos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int legajo = Convert.ToInt32(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lbl_it_legajo")).Text);
           if(negMedicos.BajaMedico(legajo))
            {
                lblMensaje.Text = "ELIMINADO CORRECTAMENTE";
            }
            else
            {
                lblMensaje.Text = "NO SE PUDO ELIMINAR";
            }
            cargarGrdMedicos();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtBuscarLegajo.Text.Trim().Length > 0)
            {
                DataTable dt = new DataTable();
                int legajo = int.Parse(txtBuscarLegajo.Text);
                dt = negMedicos.FiltrarMedicosPorLegajo(legajo);
                grdMedicos.DataSource = dt;
                grdMedicos.DataBind();
                txtBuscarLegajo.Text = "";
            }
        }
        protected void btnListarTodos_Click(object sender, EventArgs e)
        {
            cargarGrdMedicos();
            txtBuscarLegajo.Text = "";
        }
    }
}