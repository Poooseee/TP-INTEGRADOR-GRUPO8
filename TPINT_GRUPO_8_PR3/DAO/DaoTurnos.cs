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
        public int actualizarTurno(Turno turno)
        {
            string consulta = "UPDATE TURNOS SET estadoPaciente_T=" + turno.Presentismo+ ", estadoTurno_T="+turno.Estado+
                " WHERE nroTurno="+turno.NroTurno;
            return ad.EjecutarConsulta(consulta);
        }
    }
}
