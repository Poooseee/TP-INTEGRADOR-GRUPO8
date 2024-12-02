using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class asignacionTurnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarEspecialidades();
                deshabilitarFiltros();
                ddlHorarios.Items.Insert(0, new ListItem("-- Seleccione un Horario --"));
                btnAgregar.Enabled = false;
            }
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
            else if (Session["TipoUsuario"] != null)
            {
                //EL USUARIO ESTA LOGUEADO EN EL SISTEMA
                if (Session["TipoUsuario"].ToString() == "Administrador")
                {
                    //EL USUARIO TIENE ACCESO
                    string usuario = Session["Usuario"].ToString();
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
                // Response.Redirect("../login.aspx");
            }
        }
        public void cargarEspecialidades()
        {
            NegocioEspecialidades negEsp = new NegocioEspecialidades();
            DataTable dt = negEsp.obtenerTablaEspecialidades();
            ddlEspecialidad.DataSource = dt;
            ddlEspecialidad.DataTextField = "NombreEspecialidad_E";
            ddlEspecialidad.DataValueField = "NombreEspecialidad_E";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem("-- Seleccione Especialidad --", "0"));

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void grvTurnos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void grdPacientes_SelectedIndexChanged(object sender, EventArgs e)
        {

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
        protected void deshabilitarFiltros()
        {
            txtDia.Enabled = false;
            ddlMedicos.Enabled = false;
            ddlHorarios.Enabled = false;
        }
        protected void vaciarFiltros()
        {
            txtDia.Text = "";
            ddlMedicos.SelectedIndex = 0;
            ddlHorarios.SelectedIndex = 0;
        }

        // 1) SELECCIONAR ESPECIALIDAD
        protected void ddlEspecialidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlEspecialidad.SelectedIndex == 0)
            {
                deshabilitarFiltros();
                vaciarFiltros();
                vaciarCampoAsignacionTurno();
            }
            else
            {
                txtDia.Enabled = true;
            }
        }
        // 2) SELECCIONAR FECHA
        protected void txtDia_TextChanged(object sender, EventArgs e)
        {
            vaciarCampoAsignacionTurno();
            ddlMedicos.SelectedIndex = 0;
            ddlMedicos.Enabled = true;
            //obtengo el dia de la semana segun la fecha
            DateTime fecha = DateTime.Parse(txtDia.Text);
            string dia = fecha.ToString("dddd", new CultureInfo("es-AR"));
            if (dia == "miércoles")
            {
                dia = "Miercoles";
            }
            if (dia == "sábado")
            {
                dia = "Sabado";
            }

            //lleno el ddl de medicos segun especialidad y dia
            ddlMedicos.Items.Clear();

            ListItem itemDefault = new ListItem("-- Seleccione Medico --", "0");
            ddlMedicos.Items.Add(itemDefault);
            NegocioMedicos neg = new NegocioMedicos();
            DataTable dt = neg.obtenerMedicosDeEspecialidad(ddlEspecialidad.SelectedItem.Text, dia);
            foreach (DataRow dr in dt.Rows)
            {
                ListItem item = new ListItem();
                item.Text = dr["nombre_M"].ToString() + " " + dr["apellido_M"].ToString();
                item.Value = dr["Legajo_M"].ToString();
                ddlMedicos.Items.Add(item);
            }
        }
        // 3) SELECCIONAR MEDICO
        protected void ddlMedicos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlMedicos.SelectedIndex == 0)
            {
                ddlHorarios.Items.Clear();
                ddlHorarios.Items.Insert(0, new ListItem("-- Seleccione un Horario --"));
                ddlHorarios.SelectedIndex = 0;
                ddlHorarios.Enabled = false;
                vaciarCampoAsignacionTurno();
            }

            ddlHorarios.Items.Clear();
            ddlHorarios.Items.Insert(0, new ListItem("-- Seleccione un Horario --"));
            ddlHorarios.Enabled = true;

            // agrego los horarios del dia seleccionado
            DateTime fecha = DateTime.Parse(txtDia.Text);
            string dia = fecha.ToString("dddd", new CultureInfo("es-AR"));
            if (dia == "miércoles")
            {
                dia = "Miercoles";
            }
            if (dia == "sábado")
            {
                dia = "Sabado";
            }
            NegocioHorarios negHorarios = new NegocioHorarios();

            DataRow dr = negHorarios.diaLaboralMedico(int.Parse(ddlMedicos.SelectedValue.ToString()), dia);

            // obtengo horario de entrada y de salida 

            TimeSpan horaEntrada = TimeSpan.Parse(dr["INGRESO"].ToString());
            TimeSpan horaSalida = TimeSpan.Parse(dr["EGRESO"].ToString());

            // creo una variable para ir recorriendo de cada una hora
            TimeSpan unaHora = new TimeSpan(1, 0, 0);

            // va desde la hora de entrada sumando una hora hasta llegar a la hora de salida 
            for (TimeSpan i = horaEntrada; i < horaSalida; i += unaHora)
            {
                ListItem item = new ListItem();
                // el i representa cada hora que le sumo una hora para mostrar la hora de finalizacion del turno
                // conformando turnos de una hora desde que entra hasta que sale

                TimeSpan horaFinalizacion = i + unaHora;
                item.Text = i.ToString() + " - " + horaFinalizacion.ToString();
                ddlHorarios.Items.Add(item);
            }
        }
        // 4) VERIFICAR TURNO CON LOS HORARIOS
        protected void ddlHorarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            string especialidad = ddlEspecialidad.SelectedItem.ToString();
            string medico = ddlMedicos.SelectedItem.ToString();
            DateTime fecha = DateTime.Parse(txtDia.Text);
            string fechaTurno = fecha.ToString("yyyy-MM-dd");

            //obtener y convertir el horario
            string horarioSeleccionado = ddlHorarios.SelectedItem.Text.Trim();
            string[] partesHorario = horarioSeleccionado.Split('-');
            string horaComienzo = partesHorario[0].Trim().ToString();
            Label5.Text = fechaTurno;

            //llenar la entidad turno y verificar si existe uno en la DB
            Turno turno = new Turno();
            turno.Fecha = fecha;
            turno.LegajoMedico = int.Parse(ddlMedicos.SelectedValue.ToString());
            turno.Hora = horaComienzo;
            NegocioTurnos negTurno = new NegocioTurnos();

            if (negTurno.verificarTurno(turno, fechaTurno))
            {
                lblExisteTurno.Text = "EL TURNO YA ESTA OCUPADO";
                lblNoExisteTurno.Text = "";
                btnAgregar.Enabled = false;
                vaciarCampoAsignacionTurno();
                return;
            }
            else
            {
                lblNoExisteTurno.Text = "TURNO DISPONIBLE";
                lblExisteTurno.Text = "";
                completarCampoAsignacionTurno(especialidad, medico, fechaTurno, horaComienzo);
                btnAgregar.Enabled = true;
            }
        }
        protected void vaciarCampoAsignacionTurno()
        {
            lblEspecialidad.Text = "";
            lblMedico.Text = "";
            lblDia.Text = "";
            lblHorario.Text = "";
            txtDniPaciente.Text = "";
            txtNombrePaciente.Text = "";

        }
        protected void completarCampoAsignacionTurno(string especialidad, string medico, string fecha, string horario)
        {
            lblEspecialidad.Text = especialidad;
            lblMedico.Text = medico;
            lblDia.Text = fecha;
            lblHorario.Text = horario;
            txtDniPaciente.Text = "";
            txtNombrePaciente.Text = "";
        }
        protected void vaciarPagina()
        {
            ddlEspecialidad.SelectedIndex = 0;
            txtDia.Text = "";
            ddlMedicos.SelectedIndex = 0;
            ddlHorarios.SelectedIndex = 0;
            lblNoExisteTurno.Text = "";
            lblEspecialidad.Text = "";
            lblDia.Text = "";
            lblMedico.Text = "";
            lblHorario.Text = "";
            txtDniPaciente.Text = "";
            txtNombrePaciente.Text = "";
        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            //llenar la entidad de turno
            NegocioPacientes negPac = new NegocioPacientes();
            NegocioTurnos negocioTurnos = new NegocioTurnos();
            Turno turno = new Turno();
            turno.Especialidad = ddlEspecialidad.SelectedItem.ToString();
            turno.LegajoMedico = int.Parse(ddlMedicos.SelectedValue.ToString());
            turno.DniPaciente1 = txtDniPaciente.Text.Trim();
            turno.Fecha = DateTime.Parse(txtDia.Text);
            string horarioSeleccionado = ddlHorarios.SelectedItem.Text;
            string[] partesHorario = horarioSeleccionado.Split('-');
            string horaInicioString = partesHorario[0].Trim();
            DateTime horaInicio = DateTime.ParseExact(horaInicioString, "HH:mm:ss", CultureInfo.InvariantCulture);
            string hora = horaInicio.ToString("HH:mm:ss");
            string dni = txtDniPaciente.Text.Trim();
            turno.Hora = hora;

            if (!negPac.existePaciente(dni))
            {
                lblError.Text = "NO EXISTE UN PACIENTE CON ESE DNI";
                return;
            }

            if (negocioTurnos.agregarTurno(turno))
            {
                lblError.Text = "";
                lblAgendado.Text = "TURNO AGENDADO CON EXITO";
                vaciarPagina();
                btnAgregar.Enabled = false;
            }
            else
            {
                lblAgendado.Text = "";
                lblError.Text = "ERROR AL AGENDAR EL TURNO";
            }


        }
    }
}