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

            //PACIENTES
            NegocioPacientes negPac = new NegocioPacientes();
            DataTable dtPacientes = negPac.obtenerTablaPacientes();

            int totalPacientes = dtPacientes.Rows.Count;
            int anioActual = DateTime.Now.Year;
            int mesActual = DateTime.Now.Month;
            int sumaEdadesPacientes = 0;
            int pacientesMasculinos = 0;
            int pacientesFemeninos = 0;

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

            //MEDICOS
            NegocioMedicos negMed = new NegocioMedicos();
            DataTable dtMedicos = negMed.obtenerTablaMedicos();

            int totalMedicos = dtMedicos.Rows.Count;
            int sumaEdadesMedicos = 0;

            foreach (DataRow fila in dtMedicos.Rows)
            {
                //AGARRAMOS EL AÑO DE NACIMIENTO
                DateTime fechaNacimiento = Convert.ToDateTime(fila["FechaNacimiento"]);
                int edad = anioActual - fechaNacimiento.Year;
                sumaEdadesMedicos += edad;
            }

            //TURNOS
            NegocioTurnos negTur = new NegocioTurnos();
            DataTable dtTurnos = negTur.obtenerTablaTurnos();

            string especialidadMasSolicitada = negTur.ObtenerEspecialidadMasSolicitada();
            string dniPacienteMasTurnos = negTur.ObtenerPacientesConMasTurnos();
            int legajoMedicoMasSolicitado = negTur.ObtenerMedicoMasSolicitado();
            int totalTurnos = dtTurnos.Rows.Count;
            int turnosPresentes = 0;
            int turnosAusentes = 0;

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
            //ELIMINAMOS LA COOKIE
            HttpCookie cookie = new HttpCookie("UsuarioInfo");
            cookie.Path = "/";

            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);

            Response.Redirect("../login.aspx");
        }
    }
}