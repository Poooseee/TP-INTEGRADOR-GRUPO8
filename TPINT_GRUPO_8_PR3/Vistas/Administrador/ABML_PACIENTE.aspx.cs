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
    public partial class ABML_PACIENTE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGrdPacientes();
            cargarProvinciasAlDDL();
            cargarLocalidadesAlDDL();
            obtenerCookie();
        }
        NegocioPacientes negPacientes = new NegocioPacientes();

        public void cargarGrdPacientes()
        {
            NegocioPacientes NP = new NegocioPacientes();
            grdPacientes.DataSource = NP.obtenerTablaPacientes();
            grdPacientes.DataBind();
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
        public void obtenerCookie()
        {
            HttpCookie cookie = this.Request.Cookies["UsuarioInfo"];
            lblUsuario.Text = cookie["Usuario"];
        }
        protected void grdPacientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdPacientes.EditIndex = -1;
            cargarGrdPacientes();
        }
        protected void grdPacientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdPacientes.EditIndex = e.NewEditIndex;
            cargarGrdPacientes();
        }

        protected void grdPacientes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected Paciente llenarEntidadPaciente()
        {
            Paciente paciente = new Paciente();

            paciente.Dni = int.Parse(txtDni.Text.Trim());
            paciente.Nombre = txtNombre.Text.Trim();
            paciente.Apellido = txtApellido.Text.Trim();
            paciente.Sexo = ddlSexo.SelectedValue.ToString();
            paciente.FechaNac = DateTime.Parse(txtFechaNacimiento.Text.Trim());
            paciente.Nacionalidad = txtNacionalidad.Text.Trim();
            paciente.Provincia = ddlProvincia.SelectedValue.ToString();
            paciente.Localidad =ddlLocalidad.SelectedValue.ToString();
            paciente.Direccion = txtDireccion.Text.Trim();
            paciente.Telefono = txtTelefono.Text.Trim();
            paciente.Email = txtCorreo.Text.Trim();           

            return paciente;
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Paciente paciente = llenarEntidadPaciente();
            if (negPacientes.agregarPaciente(paciente))
            {

            }
            else
            {

            }
        }

        protected void btnBuscarDni_Click(object sender, EventArgs e)
        {
            string DNI;
            DNI = txtBusquedaDni.Text.Trim();
            negPacientes.obtenerPacientesPorDNI(DNI);
        }

        protected void btnBuscarApel_Click(object sender, EventArgs e)
        {
            string Apellido;
            Apellido = txtBusqApellido.Text.Trim(); 
            negPacientes.obtenerPacientesPorApellido(Apellido);
        }

        protected void btnBuscarNacio_Click(object sender, EventArgs e)
        {

        }

        protected void btnBuscarSexo_Click(object sender, EventArgs e)
        {

        }

        protected void btnBuscarFechaNac_Click(object sender, EventArgs e)
        {

        }
    }
   
}