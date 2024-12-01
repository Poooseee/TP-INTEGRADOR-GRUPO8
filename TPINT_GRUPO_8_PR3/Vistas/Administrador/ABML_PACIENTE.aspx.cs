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

                if (cookie["TipoUsuario"].ToLower() == "administrador")
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
                  
                }
                else
                {
                    //EL USUARIO NO TIENE ACCESO
                    Response.Redirect("../Medico/TurnosYPacientes.aspx");
                }
            }
            else if (Session["TipoUsuario"] != null)
            {
                //EL USUARIO ESTA LOGUEADO EN EL SISTEMA
                if (Session["TipoUsuario"].ToString().ToLower() == "administrador")
                {
                    //EL USUARIO TIENE ACCESO
                    string usuario = Session["Usuario"].ToString();
                    lblUsuario.Text = usuario;
                    if (!IsPostBack)
                    {
                        cargarGrdPacientes();
                        cargarProvinciasAlDDL();
                        ddlLocalidadesDefault();
                    }
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
        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarLocalidadesAlDDL();
        }
        
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Paciente paciente = llenarEntidadPaciente();
            if (negPacientes.agregarPaciente(paciente))
            {
                lblAgregado.Text = "Se ha agregado correctamente el paciente";
                limpiarAgregado();
                tablaPacientes();
            }
            else
            {
                lblAgregado.Text = "Error al agregar el paciente. Verifique que el DNI sea correcto";
            }
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
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            tablaPacientes();
        }
        protected void btnListarTodo_Click(object sender, EventArgs e)
        {
            txtBusqApellido.Text = string.Empty;
            txtBusqNacio.Text = string.Empty;
            txtBusquedaDni.Text = string.Empty;
            txtFechaNacPac.Text = string.Empty;
            ddlBusqSexo.SelectedIndex = 0;
           tablaPacientes();
        }
        protected void grdPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdPacientes.PageIndex = e.NewPageIndex;
            tablaPacientes();
        }
        protected void grdPacientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdPacientes.EditIndex = e.NewEditIndex;
            tablaPacientes();
        }
        protected void grdPacientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdPacientes.EditIndex = -1;
            tablaPacientes();
        }
        protected void grdPacientes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowState.HasFlag(DataControlRowState.Edit))
            {
                string dni = ((Label)e.Row.FindControl("lbl_Eit_Dni")).Text;

                //FECHA DE NACIMIENTO
                DataTable paciente = negPacientes.ObtenerPacientePorDni(dni);
                DateTime fechaNaciminetoDt = DateTime.Parse(paciente.Rows[0]["fechaNac_P"].ToString());
                string fechaNacimiento = fechaNaciminetoDt.ToString("yyyy-MM-dd");
                TextBox txtFechaNacimineto = (TextBox)e.Row.FindControl("txt_Eit_FechaDeNacimiento");
                txtFechaNacimineto.Text = fechaNacimiento;

                //DDL'S
                DropDownList ddlLocalidad = (DropDownList)e.Row.FindControl("ddl_eit_Localidad");
                DropDownList ddlProvincia = (DropDownList)e.Row.FindControl("ddl_eit_Provincia");

                //NEGOCIOS
                NegocioLocalidades loc = new NegocioLocalidades();
                NegocioProvincias prov = new NegocioProvincias();
                NegocioPacientes negPac = new NegocioPacientes();

                DataTable dt = new DataTable();

                dt = prov.obtenerTablaProvincias();
                ddlProvincia.DataSource = dt;
                ddlProvincia.DataTextField = "nombreProvincia_PR";
                ddlProvincia.DataValueField = "IdProvincia_PR";
                ddlProvincia.DataBind();
                ddlProvincia.SelectedValue = negPac.obtenerProvinciaAsignada(dni);

                ddlProvincia.SelectedIndexChanged += ddl_eit_Provincia_SelectedIndexChanged;


                dt = loc.obtenerTablaLocalidades(Convert.ToInt32(ddlProvincia.SelectedValue));
                ddlLocalidad.DataSource = dt;
                ddlLocalidad.DataTextField = "nombreLocalidad_L";
                ddlLocalidad.DataValueField = "IdLocalidad_L";
                ddlLocalidad.DataBind();
                ddlLocalidad.SelectedValue = negPac.obtenerLocalidadAsignada(dni);

            }
        }


        protected void lnkbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UsuarioInfo"] != null)
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

        protected void grdPacientes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            lblMensaje.Text = "¿SEGURO QUIERE ELIMINAR ESTE PACIENTE?";
            lblMensaje.ForeColor = System.Drawing.Color.Red;
            lbtnSI.Visible = true;
            lbtnNo.Visible = true;
            string dni = ((Label)grdPacientes.Rows[e.RowIndex].Cells[0].FindControl("lbl_it_dni")).Text;
            Session["RowIndexDeletePaciente"] = dni;
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

        protected void grdPacientes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Paciente paciente = new Paciente();
            NegocioPacientes negPac = new NegocioPacientes();

            paciente.Dni = ((Label)grdPacientes.Rows[e.RowIndex].FindControl("lbl_Eit_Dni")).Text;
            paciente.Nombre = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Nombre")).Text;
            paciente.Apellido = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Apellido")).Text;
            paciente.Sexo = (((DropDownList)grdPacientes.Rows[e.RowIndex].FindControl("ddl_Eit_Sexo")).SelectedValue);
            paciente.Nacionalidad = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Nacionalidad")).Text;
            paciente.FechaNac = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_FechaDeNacimiento")).Text;
            paciente.Direccion = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Direccion")).Text;
            paciente.Localidad = int.Parse(((DropDownList)grdPacientes.Rows[e.RowIndex].FindControl("ddl_eit_Localidad")).SelectedValue);
            paciente.Provincia = int.Parse(((DropDownList)grdPacientes.Rows[e.RowIndex].FindControl("ddl_eit_Provincia")).SelectedValue);
            paciente.Email = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Correo")).Text;
            paciente.Telefono = ((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txt_Eit_Telefono")).Text;

            if (negPac.actualizarPaciente(paciente))
            {
                lblMensaje.Text = "EL PACIENTE SE ACTUALIZÓ CORRECTAMENTE";
                lblMensaje.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMensaje.Text = "EL PACIENTE NO SE PUDO ACTUALIZAR";
                lblMensaje.ForeColor= System.Drawing.Color.Red;
            }
            grdPacientes.EditIndex = -1;
            tablaPacientes();
        }

        protected void btnDarAlta_Click(object sender, EventArgs e)
        {
            lblMsjAlta.Text = "¿SEGURO QUIERE DAR DE ALTA A ESTE PACIENTE?";
            lblMsjAlta.ForeColor = System.Drawing.Color.Green;
            lbtnAltaSI.Visible = true;
            lbtnAltaNO.Visible = true;
        }

        protected void lbtnAltaSI_Click(object sender, EventArgs e)
        {
            string Dni = txtAltaBusquedaDni.Text;
            if (negPacientes.darAltaPaciente(Dni))
            {
                lblMsjAlta.Text = "PACIENTE DADO DE ALTA CORRECTAMENTE";
            }
            else
            {
                lblMsjAlta.Text = "NO SE HA PODIDO DAR DE ALTA AL PACIENTE";
            }
            tablaPacientes();
            txtAltaBusquedaDni.Text = "";
            lbtnAltaNO.Visible = false;
            lbtnAltaSI.Visible = false;
        }

        protected void lbtnAltaNO_Click(object sender, EventArgs e)
        {
            lblMsjAlta.Text = string.Empty;
            lbtnAltaNO.Visible = false;
            lbtnAltaSI.Visible = false;
        }

        protected void ddl_eit_Provincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            //ACTIVADOR DEL EVENTO
            DropDownList ddlProvincia = (DropDownList)sender;

            //FILA ACTUAL DEL DDL
            GridViewRow row = (GridViewRow)ddlProvincia.NamingContainer;

            //DDL LOCALIDAD
            DropDownList ddlLocalidad = (DropDownList)row.FindControl("ddl_eit_Localidad");


            NegocioLocalidades loc = new NegocioLocalidades();
            int IdProvincia = Convert.ToInt32(ddlProvincia.SelectedValue);

            DataTable dt = new DataTable();
            dt = loc.obtenerTablaLocalidades(IdProvincia);

            ddlLocalidad.DataSource = dt;
            ddlLocalidad.DataTextField = "nombreLocalidad_L";
            ddlLocalidad.DataValueField = "IdLocalidad_L";
            ddlLocalidad.DataBind();
        }
    }
   
}