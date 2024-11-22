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
    public partial class Informes : System.Web.UI.Page
    {
       NegocioPacientes negPac = new NegocioPacientes();
       NegocioMedicos negMed = new NegocioMedicos();
       NegocioTurnos negTur = new NegocioTurnos();
        private void calcularDatosPacientes(ref int pacientesMasculinos, ref int pacientesFemeninos,ref int totalPacientes, ref int anioActual, ref int sumaEdadesPacientes)
        {
            DataTable dtPacientes = negPac.obtenerTablaPacientes();
            totalPacientes = dtPacientes.Rows.Count;

            foreach (DataRow fila in dtPacientes.Rows)
            {
                //AGARRAMOS EL SEXO
                string sexoPacientes = fila["Sexo"].ToString();

                //AGARRAMOS EL AÑO DE NACIMIENTO
                DateTime fechaNacimiento = Convert.ToDateTime(fila["FechaNacimiento"]);
                int edad = anioActual - fechaNacimiento.Year;
                sumaEdadesPacientes += edad;

                if (sexoPacientes == "Masculino")
                {
                    pacientesMasculinos++;
                }
                else
                {
                    pacientesFemeninos++;
                }
            }
        }
        private void calcularDatosMedicos(ref int sumaEdadesMedicos, ref int anioActual, ref int totalMedicos)
        {
            DataTable dtMedicos = negMed.obtenerTablaMedicos();

            totalMedicos = dtMedicos.Rows.Count;

            foreach (DataRow fila in dtMedicos.Rows)
            {
                //AGARRAMOS EL AÑO DE NACIMIENTO
                DateTime fechaNacimiento = Convert.ToDateTime(fila["FechaNacimiento"]);
                int edad = anioActual - fechaNacimiento.Year;
                sumaEdadesMedicos += edad;
            }
        }
        private void calcularDatosTurnos(ref int totalTurnos, ref int turnosPresentes, ref int turnosAusentes, ref DataTable dtTurnos )
        {

            foreach (DataRow fila in dtTurnos.Rows)
            {
                //AGARRAMOS EL ESTADO
                string estadoTurno = fila["estadoPaciente_T"].ToString();

                if (estadoTurno == "PRESENTE")
                {
                    turnosPresentes++;
                }
                else if (estadoTurno == "AUSENTE")
                {
                    turnosAusentes++;
                }
            }
        }
        private void controlarCookieYSession()
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
                Response.Redirect("../login.aspx");
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            controlarCookieYSession();

            //DECLARAMOS VARIABLES
            ///globales
            int anioActual = DateTime.Now.Year;
            ///pacientes
            int sumaEdadesPacientes = 0;
            int pacientesMasculinos = 0;
            int pacientesFemeninos = 0;
            int totalPacientes = 0;
            ///medicos
            int sumaEdadesMedicos = 0;
            int totalMedicos = 0;
            ///turnos
            int turnosPresentes = 0;
            int turnosAusentes = 0;
            DataTable dtTurnos = negTur.obtenerTablaTurnos();
            int totalTurnos = dtTurnos.Rows.Count;
            string especialidadMasSolicitada = negTur.ObtenerEspecialidadMasSolicitada();
            string dniPacienteMasTurnos = negTur.ObtenerPacientesConMasTurnos();
            int legajoMedicoMasSolicitado = negTur.ObtenerMedicoMasSolicitado();

            //PACIENTES
            calcularDatosPacientes(ref pacientesMasculinos, ref pacientesFemeninos, ref totalPacientes, ref anioActual, ref sumaEdadesPacientes);

            //MEDICOS
            calcularDatosMedicos(ref sumaEdadesMedicos, ref anioActual, ref totalMedicos);

            //TURNOS
            calcularDatosTurnos(ref totalTurnos, ref turnosPresentes, ref turnosAusentes, ref dtTurnos);

            //INFORMES

            //PORCENTAJE TURNOS AUSENTES
            int porcentajeAusentes = (totalTurnos > 0) ? (int)Math.Round((turnosAusentes * 100.0) / totalTurnos) : 0;
            lblAusentes.Text = porcentajeAusentes.ToString() + "%";

            //PORCENTAJE TURNOS PRESENTES
            int porcentajePresentes = (totalTurnos > 0) ? (int)Math.Round((turnosPresentes * 100.0) / totalTurnos) : 0;
            lblPresentes.Text = porcentajePresentes.ToString() + "%";

            //PACIENTE CON MAS TURNOS DEL MES
            DataTable dtPacienteConMasTurnos = negPac.ObtenerPacientePorDni(dniPacienteMasTurnos);
            DataRow drPacienteConMasTurnos = dtPacienteConMasTurnos.Rows[0];

            string pacienteConMasTurnos = drPacienteConMasTurnos["nombre_P"] + " " + drPacienteConMasTurnos["apellido_P"];
            lblPacienteTurnos.Text = pacienteConMasTurnos;

            //MEDICO MAS SOLICITADO DEL MES
            DataTable dtMedicoMasSolicitado = negMed.ObtenerMedicoPorLegajo(legajoMedicoMasSolicitado);
            DataRow drMedicoMasSolicitado = dtMedicoMasSolicitado.Rows[0];

            string medicoMasSolicitado = drMedicoMasSolicitado["Nombre"] + " " + drMedicoMasSolicitado["Apellido"];
            lblMedicoSolicitado.Text = medicoMasSolicitado;

            //ESPECIALIDAD MAS SOLICITADA DEL MES
            lblEspecialidadSolicitada.Text = especialidadMasSolicitada;

            //PORCENTAJE PACIENTES MASCULINOS
            int porcentajeMasculinos = (totalPacientes > 0) ? (int)Math.Round((pacientesMasculinos * 100.0) / totalPacientes) : 0;
            lblPacienteMasc.Text = porcentajeMasculinos.ToString() + "%";

            //PORCENTAJE PACIENTES FEMENIOS
            int porcentajeFemeninos = (totalPacientes > 0) ? (int)Math.Round((pacientesFemeninos * 100.0) / totalPacientes) : 0;
            lblPacienteFem.Text = porcentajeFemeninos.ToString() + "%";

            //PROMEDIO DE EDAD PACIENTES
            int promedioEdadPacientes = (totalPacientes > 0) ? sumaEdadesPacientes / totalPacientes : 0;
            lblPromPacientes.Text = promedioEdadPacientes.ToString() + " AÑOS";

            //PROMEDIO DE EDAD MEDICOS
            int promedioEdadMedicos = (totalMedicos > 0) ? sumaEdadesMedicos / totalMedicos : 0;
            lblPromMedicos.Text = promedioEdadMedicos.ToString() + " AÑOS";
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
    }
}