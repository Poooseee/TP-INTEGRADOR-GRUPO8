using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

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
                        //cargarGrdHorarios();
                        cargarProvinciasAlDDL();
                        cargarEspecialidadesAlDDL();
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
                    if (Session["TipoUsuario"].ToString() == "Administrador")
                    {
                        //EL USUARIO TIENE ACCESO
                        string usuario = Session["Usuario"].ToString();
                        lblUsuario.Text = usuario;
                        cargarGrdMedicos();
                        //cargarGrdHorarios();
                        cargarProvinciasAlDDL();
                        cargarEspecialidadesAlDDL();
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
        NegocioHorarios negHorarios = new NegocioHorarios();
        int legajoSeleccionado;
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
            if (txtBuscarLegajo.Text.Trim().Length > 0)
            {
                DataTable dt = new DataTable();
                int legajo = int.Parse(txtBuscarLegajo.Text);
                dt = negMedicos.FiltrarMedicosPorLegajo(legajo);
                grdMedicos.DataSource = dt;
                grdMedicos.DataBind();
                
            }
            else
            {
            grdMedicos.DataSource = NM.obtenerTablaMedicos();
            grdMedicos.DataBind();

            }

        }

        public void cargarGrdHorarios()
        {
            NegocioHorarios NH = new NegocioHorarios();
            grdHorarios.DataSource = NH.obtenerTablaHorarios();
            grdHorarios.DataBind();
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
        protected Medico ObtenerYActualizarDatosMedico(GridViewRow fila)
        {

            Medico medico = new Medico();
            medico.Legajo = int.Parse(((Label)fila.FindControl("lbl_it_legajo")).Text);
            medico.Especialidad = ((DropDownList)fila.FindControl("ddl_eit_Especialidad")).SelectedValue;
            medico.Nombre = (((TextBox)fila.FindControl("txt_Eit_Nombre")).Text);
            medico.Apellido = (((TextBox)fila.FindControl("txt_Eit_Apellido")).Text);
            medico.Sexo = (((TextBox)fila.FindControl("txt_Eit_Sexo")).Text);
            medico.Nacionalidad = (((TextBox)fila.FindControl("txt_Eit_Nacionalidad")).Text);
            medico.FechaNac = (((TextBox)fila.FindControl("txt_Eit_FechaDeNacimiento")).Text);
            medico.Direccion = (((TextBox)fila.FindControl("txt_Eit_Direccion")).Text);
            medico.Localidad = int.Parse(((DropDownList)fila.FindControl("ddl_eit_Localidad")).SelectedValue);
            medico.Provincia = int.Parse(((DropDownList)fila.FindControl("ddl_eit_Provincia")).SelectedValue);
            medico.Email = (((TextBox)fila.FindControl("txt_Eit_Correo")).Text);
            medico.Telefono = (((TextBox)fila.FindControl("txt_Eit_Telefono")).Text);
            medico.Baja = false;

            return medico;
        }
        protected void grdMedicos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int RowIndex = e.RowIndex;
            GridViewRow fila = grdMedicos.Rows[RowIndex];

            Medico medico = ObtenerYActualizarDatosMedico(fila);

            if (negMedicos.actualizarMedico(medico))
            {
                grdMedicos.EditIndex = -1;
                cargarGrdMedicos();
                lblMensaje.Text = "MÉDICO ACTUALIZADO CORRECTAMENTE";
            }
            else
            {
                lblMensaje.Text = "NO SE PUDO ACTUALIZAR AL MÉDICO";
            }
        }
        protected Medico llenarEntidadMedico()
        {
            Medico medico = new Medico();
            medico.Dni = int.Parse(txtDNI.Text.Trim());
            medico.Nombre = txtNombre.Text.Trim();
            medico.Apellido = txtApellido.Text.Trim();
            medico.Sexo = ddlSexo.SelectedValue.ToString();
            medico.Nacionalidad = txtNacionalidad.Text;
            medico.FechaNac = txtFechaNac.Text.Trim();
            medico.Direccion = txtDireccion.Text.Trim();
            medico.Localidad = int.Parse(ddlLocalidad.SelectedValue.ToString());
            medico.Provincia = int.Parse(ddlProvincia.SelectedValue.ToString());
            medico.Email = txtCorreo.Text.Trim();
            medico.Telefono = txtTelefono.Text.Trim();
            medico.Especialidad = ddlEspecialidades.SelectedItem.ToString();
            medico.Baja = false;

            return medico;
        }

        protected Usuarios llenarEntidadUsuario()
        {
            Usuarios usuario = new Usuarios();
            usuario.NombreUsuario = txtUsuario.Text.Trim();
            usuario.Contrasenia = txtPass.Text.Trim();
            usuario.TipoUsuario = "Medico";

            return usuario;
        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            //AGARRAMOS EL DNI
            string dni = txtDNI.Text.Trim();

            //SE CARGA UN OBJETO CON LOS VALORES
            Medico medico = llenarEntidadMedico();
            Usuarios usuario = llenarEntidadUsuario();

            if (negMedicos.agregarMedico(medico, usuario))
            {
                 int legajo = getLegajoMedico();
                 agregarHorarios(legajo);
                 vaciarCampos();
                 lblAgregado.Text = "El medico se ha agregado correctamente.";
                 cargarGrdMedicos();
                 vaciarCampos();
            }
            else
            {
                lblAgregado.Text = "No se ha podido agregar el medico.";
            }
  
        }

        protected void grdMedicos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            lblMensaje.Text = "¿SEGURO QUE QUIERE ELIMINAR ESTE MEDICO?";
            lblMensaje.ForeColor = System.Drawing.Color.Red;
            lbtnNo.Visible = true;
            lbtnSi.Visible = true;
            int legajo = Convert.ToInt32(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lbl_it_legajo")).Text);
            Session["RowIndexDeleteMedico"] = legajo;
        }



        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            cargarGrdMedicos();
        }
        protected void btnListarTodos_Click(object sender, EventArgs e)
        {
            txtBuscarLegajo.Text = "";
            cargarGrdMedicos();
        }

        protected void grdMedicos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdMedicos.PageIndex = e.NewPageIndex;
            cargarGrdMedicos();
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

        protected void lbtnSi_Click(object sender, EventArgs e)
        {
            int legajo = (int)Session["RowIndexDeleteMedico"];
            if (negMedicos.BajaMedico(legajo))
            {
                lblMensaje.Text = "ELIMINADO CORRECTAMENTE";
            }
            else
            {
                lblMensaje.Text = "NO SE PUDO ELIMINAR";
            }
            cargarGrdMedicos();
            lbtnSi.Visible = false;
            lbtnNo.Visible = false;
        }

        protected void lbtnNo_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            lbtnNo.Visible=false;
            lbtnSi.Visible=false;
        }

        protected void grdHorarios_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdHorarios.EditIndex = e.NewEditIndex;
        }

        protected void grdHorarios_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdHorarios.EditIndex = -1;
            actualizarTablaModificarHorarios();
        }

        protected int getLegajoMedico()
        {
            NegocioHorarios negocioHorarios = new NegocioHorarios();
            int legajo = negocioHorarios.getLegajoMedico();

            return legajo;
        }

        protected void agregarHorarios(int legajo)
        {
            //LUNES
            if (!string.IsNullOrEmpty(txtHorarioLunes_1.Text) && !string.IsNullOrEmpty(txtHorarioLunes_2.Text))
            {
               
                //SE AGREGA EL HORARIO
                NegocioHorarios negHorarios = new NegocioHorarios();
                negHorarios.agregarHorarios(legajo, "Lunes", txtHorarioLunes_1.Text, txtHorarioLunes_2.Text);
                
            }

            //MARTES
            if (!string.IsNullOrEmpty(txtHorarioMartes_1.Text) && !string.IsNullOrEmpty(txtHorarioMartes_2.Text))
            {

                 //SE AGREGA EL HORARIO
                 NegocioHorarios negHorarios = new NegocioHorarios();
                 negHorarios.agregarHorarios(legajo, "Martes", txtHorarioMartes_1.Text, txtHorarioMartes_2.Text);
                
            }

            //MIERCOLES
            if (!string.IsNullOrEmpty(txtHorarioMiercoles_1.Text) && !string.IsNullOrEmpty(txtHorarioMiercoles_2.Text))
            {
                //SE AGREGA EL HORARIO
                NegocioHorarios negHorarios = new NegocioHorarios();
                negHorarios.agregarHorarios(legajo, "Miercoles", txtHorarioMiercoles_1.Text, txtHorarioMiercoles_2.Text);
                
            }

            //JUEVES
            if (!string.IsNullOrEmpty(txtHorarioJueves_1.Text) && !string.IsNullOrEmpty(txtHorarioJueves_2.Text))
            {
                //SE AGREGA EL HORARIO
                NegocioHorarios negHorarios = new NegocioHorarios();
                negHorarios.agregarHorarios(legajo, "Jueves", txtHorarioJueves_1.Text, txtHorarioJueves_2.Text);
                
            }

            //VIERNES
            if (!string.IsNullOrEmpty(txtHorarioViernes_1.Text) && !string.IsNullOrEmpty(txtHorarioViernes_2.Text))
            {
                //SE AGREGA EL HORARIO
                NegocioHorarios negHorarios = new NegocioHorarios();
                negHorarios.agregarHorarios(legajo, "Viernes", txtHorarioViernes_1.Text, txtHorarioViernes_2.Text);
                
            }

            //SABADO
            if (!string.IsNullOrEmpty(txtHorarioSabado_1.Text) && !string.IsNullOrEmpty(txtHorarioSabado_2.Text))
            {
                //SE AGREGA EL HORARIO
                NegocioHorarios negHorarios = new NegocioHorarios();
                negHorarios.agregarHorarios(legajo, "Sabado", txtHorarioSabado_1.Text, txtHorarioSabado_2.Text);
                
            }

            //DOMINGO
            if (!string.IsNullOrEmpty(txtHorarioDomingo_1.Text) && !string.IsNullOrEmpty(txtHorarioDomingo_2.Text))
            {
                //SE AGREGA EL HORARIO
                NegocioHorarios negHorarios = new NegocioHorarios();
                negHorarios.agregarHorarios(legajo, "Domingo", txtHorarioDomingo_1.Text, txtHorarioDomingo_2.Text);
                
            }
        }

        protected void vaciarCampos()
        {
            txtDNI.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            ddlSexo.SelectedIndex = 0;
            txtNacionalidad.Text = "";
            txtFechaNac.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtCorreo.Text = "";

            ddlEspecialidades.SelectedIndex = 0;
            ddlProvincia.SelectedIndex = 0;
            ddlLocalidad.SelectedIndex = 0;

            txtHorarioLunes_1.Text = "";
            txtHorarioLunes_2.Text = "";

            txtHorarioMartes_1.Text = "";
            txtHorarioMartes_2.Text = "";

            txtHorarioMiercoles_1.Text = "";
            txtHorarioMiercoles_2.Text = "";

            txtHorarioJueves_1.Text = "";
            txtHorarioJueves_2.Text = "";

            txtHorarioViernes_1.Text = "";
            txtHorarioViernes_2.Text = "";

            txtHorarioSabado_1.Text = "";
            txtHorarioSabado_2.Text = "";

            txtHorarioDomingo_1.Text = "";
            txtHorarioDomingo_2.Text = "";

            txtUsuario.Text = "";
        }

        protected void grdMedicos_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //obtener el legajo seleccionado y mostrarlo por pantalla
            int selectedIndex = e.NewSelectedIndex;
            GridViewRow fila = grdMedicos.Rows[selectedIndex];
         
           legajoSeleccionado = int.Parse(((Label)fila.FindControl("lbl_it_legajo")).Text);
           
            lblLegajoMedicoHorarioN.Text = legajoSeleccionado.ToString();

            //llenar la grid con la info del legajo seleccionado
            lblLegajoMedicoHorarios.Text = "LEGAJO N:";
            actualizarTablaModificarHorarios();
        }
        protected void actualizarTablaModificarHorarios()
        {
            NegocioHorarios negH = new NegocioHorarios();
            grdHorarios.DataSource = negH.obtenerHorariosDeMedico(int.Parse(lblLegajoMedicoHorarioN.Text));
            grdHorarios.DataBind();
        }

        protected void grdHorarios_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int RowIndex = e.RowIndex;
            GridViewRow fila = grdHorarios.Rows[RowIndex];

            int legajo = int.Parse(lblLegajoMedicoHorarioN.Text);
            string dia = (((Label)fila.FindControl("lbl_It_DiaAtencion")).Text);
            string ingreso = (((TextBox)fila.FindControl("txt_Eit_HoraInicio")).Text);
            string egreso = (((TextBox)fila.FindControl("txt_Eit_HoraEgreso")).Text);
            
            if (negHorarios.actualizarHorarioMedico(legajo,dia,ingreso,egreso))
            {
                
                actualizarTablaModificarHorarios();
            }
            else
            {

            }
            grdHorarios.EditIndex = -1;
            actualizarTablaModificarHorarios();
        }

        protected void grdHorarios_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            lblMensajeHorario.Text = "¿SEGURO QUE QUIERE ELIMINAR ESTE MEDICO?";
            lblMensajeHorario.ForeColor = System.Drawing.Color.Red;
            lbtnNoHorario.Visible = true;
            lbtnSiHorario.Visible = true;
            string dia = ((Label)grdHorarios.Rows[e.RowIndex].FindControl("lbl_It_DiaAtencion")).Text;
            int legajo = int.Parse(lblLegajoMedicoHorarioN.Text);
            Session["RowIndexDeleteHorario_dia"] = dia;
            Session["RowIndexDeleteHorario_leg"] = legajo;
        }

        protected void btnAgregarDia_Click(object sender, EventArgs e)
        {
            if(negHorarios.agregarHorarios(int.Parse(txtLegajoHorario.Text), ddlAgregarDia.SelectedValue, txtHorarioInicio.Text, txtHorarioFin.Text))
            {
                lblHorarioAgregado.Text = "SE AGREGÓ EL HORARIO CORRECTAMENTE";
            }
            else
            {
                lblHorarioAgregado.Text = "NO SE PUDO AGREGAR EL HORARIO";
            }
            txtLegajoHorario.Text = "";
            ddlAgregarDia.SelectedIndex = 0;
            txtHorarioInicio.Text = "";
            txtHorarioFin.Text = "";
            actualizarTablaModificarHorarios();
        }

        protected void grdMedicos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowState.HasFlag(DataControlRowState.Edit))
            {
                DropDownList ddlEitProvincia = (DropDownList)e.Row.FindControl("ddl_eit_Provincia");
                DropDownList ddlEitLocalidad = (DropDownList)e.Row.FindControl("ddl_eit_Localidad");
                DropDownList ddlEitEspecialidad = (DropDownList)e.Row.FindControl("ddl_eit_Especialidad");
                NegocioLocalidades loc = new NegocioLocalidades();
                NegocioProvincias prov = new NegocioProvincias();
                NegocioEspecialidades esp = new NegocioEspecialidades();
                DataTable dt = new DataTable();
                string legajo = ((Label)e.Row.FindControl("lbl_it_Legajo")).Text;

                dt = prov.obtenerTablaProvincias();
                ddlEitProvincia.DataSource = dt;
                ddlEitProvincia.DataTextField = "nombreProvincia_PR";
                ddlEitProvincia.DataValueField = "IdProvincia_PR";
                ddlEitProvincia.DataBind();
                ddlEitProvincia.SelectedValue = negMedicos.obtenerProvinciaAsignada(legajo);

                dt = loc.obtenerTablaLocalidades(0);
                ddlEitLocalidad.DataSource = dt;
                ddlEitLocalidad.DataTextField = "nombreLocalidad_L";
                ddlEitLocalidad.DataValueField = "IdLocalidad_L";
                ddlEitLocalidad.DataBind();
                ddlEitLocalidad.SelectedValue = negMedicos.obtenerLocalidadAsignada(legajo);

                dt = esp.obtenerTablaEspecialidades();
                ddlEitEspecialidad.DataSource = dt;
                ddlEitEspecialidad.DataTextField = "nombreEspecialidad_E";
                ddlEitEspecialidad.DataValueField = "nombreEspecialidad_E";
                ddlEitEspecialidad.DataBind();
                ddlEitEspecialidad.SelectedValue = negMedicos.obtenerEspecialidadAsignada(legajo);
            }
        }

        protected void lbtnSiHorario_Click1(object sender, EventArgs e)
        {
            string dia = Session["RowIndexDeleteHorario_dia"].ToString();
            int legajo = (int)Session["RowIndexDeleteHorario_leg"];
            if (negHorarios.eliminarHorario(legajo, dia))
            {
                lblMensajeHorario.Text = "ELIMINADO CORRECTAMENTE";
            }
            else
            {
                lblMensajeHorario.Text = "NO SE PUDO ELIMINAR";
            }
            actualizarTablaModificarHorarios();
            lbtnSiHorario.Visible = false;
            lbtnNoHorario.Visible = false;
        }

        protected void lbtnNoHorario_Click1(object sender, EventArgs e)
        {
            lblMensajeHorario.Text = "";
            lbtnNoHorario.Visible = false;
            lbtnSiHorario.Visible = false;
        }

        protected void hfConfirmar_ValueChanged(object sender, EventArgs e)
        {

        }
    }
}