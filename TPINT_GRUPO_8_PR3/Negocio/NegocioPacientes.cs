using DAO;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegocioPacientes
    {
        DaoPacientes DaoPacientes = new DaoPacientes();
        public DataTable obtenerTablaPacientes()
        {
            return DaoPacientes.obtenerTablaPacientes();
        }
        public bool agregarPaciente(Paciente paciente)
        {
            int filas = 0;

            
            if (DaoPacientes.existePaciente(paciente.Dni) == false)
            {
                //si no existe, agregalo
                filas = DaoPacientes.agregarPaciente(paciente);
            }
           
            //si se pudo agregar retorna true, sino false
            if (filas == 1)
            {
                return true;
            }
            return false;
           
        }

        public bool existePaciente(string dni)
        {
            if (DaoPacientes.existePaciente(dni))
            {
                return true;
            }

            return false;
        }

        public bool eliminarPaciente(string dni)
        {
           Paciente paciente = new Paciente();
            paciente.Dni = dni;
            bool eliminado = false;
            if (DaoPacientes.eliminarPaciente(paciente) == 1)
            {
                eliminado = true;
            }
            return eliminado;
        }

        public bool darAltaPaciente(string dni)
        {
            Paciente paciente = new Paciente();
            paciente.Dni = dni;
            bool alta = false;
            if (DaoPacientes.darAltaPaciente(paciente) == 1)
            {
                alta = true;
            }
            return alta;
        }

        public bool actualizarPaciente(Paciente paciente)
        {
            int filas = 0;
            filas = DaoPacientes.actualizarPaciente(paciente);
            if(filas == 1)
            {
                return true;
            }
            return false;
        }

        public DataTable ObtenerTablaFiltrada(Paciente paciente)
        {

          return DaoPacientes.obtenerTablaPacientesFiltrada(paciente);
            
        }

        public string obtenerLocalidadAsignada(string dni)
        {
            DataTable dt = DaoPacientes.obtenerLocalidadAsignada(dni);
            if (dt != null && dt.Rows.Count > 0)
            {
                return dt.Rows[0]["idLocalidad_P"].ToString();

            }
            return null;
        }
        public string obtenerProvinciaAsignada(string dni)
        {
            DataTable dt = DaoPacientes.obtenerProvinciaAsignada(dni);
            if (dt != null && dt.Rows.Count > 0)
            {
                return dt.Rows[0]["idProvincia_P"].ToString();

            }
            return null;
        }

        public DataTable ObtenerPacientePorDni(string dni)
        {
            DataTable paciente = DaoPacientes.ObtenerPacientePorDni(dni);
            return paciente;
        }
        public string obtenerFechaAsignada(string dni)
        {
            DataTable dt = DaoPacientes.ObtenerPacientePorDni(dni);
            if (dt != null && dt.Rows.Count > 0)
            {
                DateTime fecha = Convert.ToDateTime(dt.Rows[0]["fechaNac_P"]);
                return fecha.ToString("dd/MM/yyyy");

            }
            return null;
        }

    }
}
