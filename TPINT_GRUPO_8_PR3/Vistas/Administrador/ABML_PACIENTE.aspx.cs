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
            tablaPacientes();
        }
        protected void grdPacientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdPacientes.EditIndex = e.NewEditIndex;
            tablaPacientes();
        }
        protected Paciente llenarEntidadPaciente()
        {
            Paciente paciente = new Paciente();

            paciente.Dni = txtDni.Text.Trim();
            paciente.Nombre = txtNombre.Text.Trim();
            paciente.Apellido = txtApellido.Text.Trim();
            paciente.Sexo = ddlSexo.SelectedValue.ToString();
            paciente.FechaNac = txtFechaNacimiento.Text.Trim();
            paciente.Nacionalidad = txtNacionalidad.Text.Trim();
            paciente.Provincia = int.Parse(ddlProvincia.SelectedValue);
            paciente.Localidad = int.Parse(ddlLocalidad.SelectedValue);
            paciente.Direccion = txtDireccion.Text.Trim();
            paciente.Telefono = txtTelefono.Text.Trim();
            paciente.Email = txtCorreo.Text.Trim();
            paciente.Estado = false;

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

        protected void grdPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdPacientes.PageIndex = e.NewPageIndex;
            tablaPacientes();
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
            lblMensaje.Text = "¿SEGURO QUIERE ELIMINAR ESTE PACIENTE?";
            lblMensaje.ForeColor = System.Drawing.Color.Red;
            lbtnSI.Visible = true;
            lbtnNo.Visible = true;
            string dni = ((Label)grdPacientes.Rows[e.RowIndex].Cells[0].FindControl("lbl_it_dni")).Text;
            Session["RowIndexDeletePaciente"] = dni;
            /*int filas = 0;

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
            }*/
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            tablaPacientes();
        }
        public void tablaPacientes()
        {
            Paciente pac = new Paciente();
            pac.Dni = txtBusquedaDni.Text;
            pac.Apellido = txtBusqApellido.Text;
            pac.FechaNac = txtFechaNacPac.Text;
            pac.Sexo = ddlBusqSexo.SelectedValue.ToString();
            pac.Nacionalidad = txtBusqNacio.Text;
            grdPacientes.DataSource = negPacientes.ObtenerTablaFiltrada(pac);
            grdPacientes.DataBind();
        }
        protected void btnListarTodo_Click(object sender, EventArgs e)
        {
            txtBusqApellido.Text = string.Empty;
            txtBusqNacio.Text = string.Empty;
            txtBusquedaDni.Text = string.Empty;
            txtFechaNacPac.Text = string.Empty;
            ddlBusqSexo.SelectedIndex = 0;
            cargarGrdPacientes();
        }

        protected void lbtnSI_Click(object sender, EventArgs e)
        {
            string Dni = (string)Session["RowIndexDeletePaciente"];
            if (negPacientes.eliminarPaciente(Dni))
            {
                lblMensaje.Text = "PACIENTE ELIMINADO CORRECTAMENTE";
            }
            else
            {
                lblMensaje.Text = "NO SE HA PODIDO ELIMINAR EL PACIENTE";
            }
            tablaPacientes();
            lbtnNo.Visible = false;
            lbtnSI.Visible = false;
        }

        protected void lbtnNo_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = string.Empty;
            lbtnNo.Visible = false;
            lbtnSI.Visible = false;
        }

        protected void grdPacientes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowState.HasFlag(DataControlRowState.Edit))
            {
                DropDownList ddlLocalidad = (DropDownList)e.Row.FindControl("ddl_eit_Localidad");
                DropDownList ddlProvincia = (DropDownList)e.Row.FindControl("ddl_eit_Provincia");
                NegocioLocalidades loc = new NegocioLocalidades();
                NegocioProvincias prov = new NegocioProvincias();
                DataTable dt = new DataTable();

                dt = prov.obtenerTablaProvincias();
                ddlProvincia.DataSource = dt;
                ddlProvincia.DataTextField = "nombreProvincia_PR";
                ddlProvincia.DataValueField = "IdProvincia_PR";
                ddlProvincia.DataBind();
                ddlProvincia.Items.Insert(0, new ListItem("Seleccione una provincia", "0"));

                dt = loc.obtenerTablaLocalidades(0);
                ddlLocalidad.DataSource = dt;
                ddlLocalidad.DataTextField = "nombreLocalidad_L";
                ddlLocalidad.DataValueField = "IdLocalidad_L";
                ddlLocalidad.DataBind();
                ddlLocalidad.Items.Insert(0, new ListItem("Seleccione una localidad", "0"));
            }
        }

        protected void grdPacientes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Paciente paciente = new Paciente();
            NegocioPacientes negPac = new NegocioPacientes();

            paciente.Dni = ((Label)grdPacientes.Rows[e.RowIndex].FindControl("lbl_Eit_Dni")).Text;
            paciente.Nombre = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Nombre")).Text;
            paciente.Apellido = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Apellido")).Text;
            paciente.Sexo = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Sexo")).Text;
            paciente.Nacionalidad = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Nacionalidad")).Text;
            paciente.FechaNac = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_FechaDeNacimiento")).Text;
            paciente.Direccion = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Direccion")).Text;
            paciente.Localidad = int.Parse(((DropDownList)grdPacientes.Rows[e.RowIndex].FindControl("ddl_eit_Localidad")).SelectedValue);
            paciente.Provincia = int.Parse(((DropDownList)grdPacientes.Rows[e.RowIndex].FindControl("ddl_eit_Provincia")).SelectedValue);
            paciente.Email = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Correo")).Text;
            paciente.Telefono = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Telefono")).Text;

            negPac.actualizarPaciente(paciente);
            grdPacientes.EditIndex = -1;
            tablaPacientes();
        }
    }
   
}