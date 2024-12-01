using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class DaoTurnos
    {
        AccesoDatos ad = new AccesoDatos();
        public DataTable obtenerTablaTurnos()
        {
            string consulta = "SELECT NroTurno, DniPaciente_T, fecha_T, horario_T, estadoPaciente_T, estadoTurno_T, Observacion_T" +
            " FROM TURNOS";

            return ad.ObtenerTabla("Turnos", consulta);
        }
        public DataTable obtenerTurnosDeMedico(int legajo)
        {
            string consulta = "SELECT NroTurno, DniPaciente_T, fecha_T, horario_T, estadoPaciente_T, estadoTurno_T, Observacion_T" +
            " FROM TURNOS WHERE LegajoMedico_T = "+legajo;

            return ad.ObtenerTabla("Turnos", consulta);
        }

        public bool buscarTurno(Turno turno , string fecha)
        {
            string consulta = "Select * from TURNOS where legajoMedico_T = "+ turno.LegajoMedico + " and horario_T = '"+turno.Hora+"' and fecha_T = '"+fecha+"'";
            return ad.existe(consulta);       
        }

        public int agregarTurno(Turno turno)
        {
            string consulta = "insert into TURNOS(especialidad_T, legajoMedico_T, DniPaciente_T, fecha_T, horario_T, estadoPaciente_T, estadoTurno_T, observacion_T) VALUES " +
                "('"+turno.Especialidad+"', "+turno.LegajoMedico+",'"+turno.DniPaciente1+"', '"+turno.Fecha+"', '"+turno.Hora+ "', 'PENDIENTE', 'PENDIENTE','-')";

            return ad.EjecutarConsulta(consulta);
        }

        public int actualizarTurno(Turno turno)
        {
            if (turno.Observaciones == null) turno.Observaciones = "-";
            string consulta = "UPDATE Turnos SET estadoPaciente_T = '" + turno.Presentismo + "', estadoTurno_T = '" + turno.Estado + "', observacion_T = '" + turno.Observaciones + "' WHERE NroTurno = " + turno.NroTurno;

            return ad.EjecutarConsulta(consulta);
        }

        public DataTable obtenerPacienteConMasTurnos()
        {
            string consulta = @"
                SELECT TOP 1
                    DniPaciente_T,
                    COUNT(DniPaciente_T) AS cantidad_turnos
                    FROM Turnos
                    WHERE MONTH(fecha_T) = MONTH(GETDATE()) AND YEAR(fecha_T) = YEAR(GETDATE()) AND estadoPaciente_T = 'PRESENTE'
                    GROUP BY DniPaciente_T
                    ORDER BY cantidad_turnos DESC";

            return ad.ObtenerTabla("Turnos", consulta);
        }

        public DataTable ObtenerEspecialidadMasSolicitada()
        {
            string consulta = @"
                SELECT TOP 1
                    especialidad_T,
                    COUNT(especialidad_T) AS cantidad_turnos
                    FROM Turnos
                    WHERE MONTH(fecha_T) = MONTH(GETDATE()) AND YEAR(fecha_T) = YEAR(GETDATE()) AND estadoPaciente_T = 'PRESENTE'
                    GROUP BY especialidad_T
                    ORDER BY cantidad_turnos DESC";

            return ad.ObtenerTabla("Turnos", consulta);
        }

        public DataTable ObtenerMedicoMasSolicitado()
        {
            string consulta = @"
                SELECT TOP 1
                    legajoMedico_T,
                    COUNT(legajoMedico_T) AS cantidad_turnos
                    FROM Turnos
                    WHERE MONTH(fecha_T) = MONTH(GETDATE()) AND YEAR(fecha_T) = YEAR(GETDATE()) AND estadoPaciente_T = 'PRESENTE'
                    GROUP BY legajoMedico_T
                    ORDER BY cantidad_turnos DESC";

            return ad.ObtenerTabla("Turnos", consulta);
        }

        public DataTable filtrarTurnos( int legajoMedico , int cantFiltros , string paciente , string fecha)
        {
            string consulta;

            if(cantFiltros == 3)
            {
                consulta = "SELECT * FROM TURNOS WHERE legajoMedico_T = " + legajoMedico + " AND DniPaciente_T = '" + paciente + "' AND fecha_T = '" + fecha + "'";
            }
            else if(cantFiltros == 2)
            {
                consulta = "SELECT * FROM TURNOS WHERE legajoMedico_T = " + legajoMedico + " AND DniPaciente_T = '" + paciente + "'";
            }
            else
            {
                consulta = "SELECT * FROM TURNOS WHERE legajoMedico_T = " + legajoMedico + " AND fecha_T = '" + fecha + "'";
            }

            return ad.ObtenerTabla("Turnos", consulta);
           
        }
    }
}
