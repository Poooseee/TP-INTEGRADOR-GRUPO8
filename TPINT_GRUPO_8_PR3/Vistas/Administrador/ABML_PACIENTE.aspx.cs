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
            if (Request.Cookies["UsuarioInfo"] != null)
            {
                //EL USUARIO ESTA LOGUEADO EN EL SISTEMA
                HttpCookie cookie = Request.Cookies["UsuarioInfo"];

                if (cookie["TipoUsuario"] == "Administrador")
                {
                    //EL USUARIO TIENE ACCESO
                    string usuario = cookie["Usuario"];
                    lblUsuario.Text = usuario;

                    if (!IsPostBack)
                    {
                        cargarGrdPacientes();
                        cargarProvinciasAlDDL();
                        ddlLocalidadesDefault();
                    }
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
            lblAgregado.Text = "";
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
        public void ddlLocalidadesDefault()
        {
            ddlLocalidad.Items.Insert(0, new ListItem("Seleccione una localidad", "0"));
            ddlLocalidad.DataBind();
        }
        public void cargarLocalidadesAlDDL()
        {
            NegocioLocalidades loc = new NegocioLocalidades();
            DataTable dt = new DataTable();
            int idProvincia = int.Parse(ddlProvincia.SelectedValue);
            dt = loc.obtenerTablaLocalidades(idProvincia);
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
            paciente.Provincia = int.Parse(ddlProvincia.SelectedValue);
            paciente.Localidad = int.Parse(ddlLocalidad.SelectedValue);
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
                lblAgregado.Text = "Se ha agregado correctamente el paciente";
                limpiarAgregado();
                cargarGrdPacientes();
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
        protected void grdPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdPacientes.PageIndex = e.NewPageIndex;
            cargarGrdPacientes();
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

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarLocalidadesAlDDL();
        }
        
        public void limpiarAgregado()
        {
            txtDni.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            ddlSexo.SelectedIndex = 0;
            txtFechaNacimiento.Text = "";
            txtNacionalidad.Text = "";
            ddlProvincia.SelectedIndex = 0;
            ddlLocalidad.SelectedIndex = 0;
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtCorreo.Text = "";
        }

        protected void grdPacientes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string dni = ((Label)grdPacientes.Rows[e.RowIndex].Cells[0].FindControl("lbl_it_dni")).Text;
            int filas = 0;

            NegocioPacientes negPac = new NegocioPacientes();
            filas = negPac.eliminarPaciente(dni);

            if(filas == 1)
            {
                lblMensaje.Text = "PACIENTE ELIMINADO CORRECTAMENTE";
                cargarGrdPacientes();
            }
            else
            {
                lblMensaje.Text = "NO SE PUDO ELIMINAR AL PACIENTE";
            }
        }
    }
   
}