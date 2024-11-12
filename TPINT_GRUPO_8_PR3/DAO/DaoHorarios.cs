using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class DaoHorarios
    {
        public DataTable obtenerTablaHorarios()
        {
            AccesoDatos ad = new AccesoDatos();
            string consulta = "SELECT * from JORNADALABORALXMEDICO";
            return ad.ObtenerTabla("Horarios", consulta);
        }
        public DataTable obtenerHorariosDeMedico(string legajo)
        {
            AccesoDatos ad = new AccesoDatos();
            string consulta = "SELECT diaAtencion AS 'DIA', HoraIngreso AS 'INGRESO', HoraEgreso AS 'EGRESO' FROM JORNADALABORALXMEDICO WHERE LegajoMedico_JXM = '" + legajo + "'";
            return ad.ObtenerTabla("diasMedico", consulta);
        }
        public DataTable obtenerHorarioDeDia(string legajoMedico, string dia)
        {
            AccesoDatos ad = new AccesoDatos();
            string consulta = "SELECT diaAtencion AS 'DIA', HoraIngreso AS 'INGRESO', HoraEgreso AS 'EGRESO' FROM JORNADALABORALXMEDICO WHERE LegajoMedico_JXM = '" + legajoMedico + "' " +
                "AND DiaAtencion = '" + dia + "'";
            return ad.ObtenerTabla("HorarioDiaLaboral", consulta);
        }
        /* public int agregarHorario()
         {
             //ACA REBICIMOS LOS DATOS DEL HORARIO VALIDO Y HACEMOS LA CONSULTA PARA INSERTAR EL REGISTRO
         }*/
    }
}
