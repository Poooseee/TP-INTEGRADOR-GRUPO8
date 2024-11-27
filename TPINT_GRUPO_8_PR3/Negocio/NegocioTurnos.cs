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
    public class NegocioTurnos
    { 
        DaoTurnos DaoTurnos = new DaoTurnos();
        public NegocioTurnos() { }
         
        public DataTable obtenerTablaTurnos()
        {
            return DaoTurnos.obtenerTablaTurnos();
        }

        public DataTable obtenerTurnosDeMedico(int legajo)
        {
            NegocioMedicos negMed = new NegocioMedicos();
            if (negMed.existeMedico(legajo))
            {
            return DaoTurnos.obtenerTurnosDeMedico(legajo);

            }
            return null;
        }

        public bool verificarTurno(Turno turno)
        {
            bool existe = false;
            if (DaoTurnos.buscarTurno(turno))
            {
                existe = true;
            }
            return existe;
        }
        public bool agregarTurno(Turno turno)
        {
            if (DaoTurnos.agregarTurno(turno) > 0)
            {
                return true;
            }
            return false;
        }

        public bool actualizarTurno(Turno turno)
        {
            if(DaoTurnos.actualizarTurno(turno) > 0)
            {
                return true;
            }

            return false;
        }

        public string ObtenerPacientesConMasTurnos()
        {
            DataTable pacienteMasTurnos = DaoTurnos.obtenerPacienteConMasTurnos();
            DataRow fila = pacienteMasTurnos.Rows[0];

            string dniPaciente = fila["DniPaciente_T"].ToString();
            return dniPaciente;
        }

        public string ObtenerEspecialidadMasSolicitada()
        {
            DataTable especialidadMasSolicitada = DaoTurnos.ObtenerEspecialidadMasSolicitada();
            DataRow fila = especialidadMasSolicitada.Rows[0];

            string especialidad = fila["especialidad_T"].ToString();
            return especialidad;
        }

        public int ObtenerMedicoMasSolicitado()
        {
            DataTable medicoMasSolicitado = DaoTurnos.ObtenerMedicoMasSolicitado();
            DataRow fila = medicoMasSolicitado.Rows[0];

            int legajoMedico = Convert.ToInt32(fila["legajoMedico_T"]);
            return legajoMedico;
        }

        public DataTable filtrarTurnos(int legajoMedico ,string paciente , string fecha)
        {
            return DaoTurnos.filtrarTurnos( legajoMedico,paciente , fecha);
        }
    }
}
