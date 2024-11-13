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
        public DataTable obtenerHorariosDeMedico(int legajo)
        {
            AccesoDatos ad = new AccesoDatos();
            string consulta = "SELECT diaAtencion AS 'DIA', HoraIngreso AS 'INGRESO', HoraEgreso AS 'EGRESO' FROM JORNADALABORALXMEDICO WHERE LegajoMedico_JXM = " + legajo;
            return ad.ObtenerTabla("diasMedico", consulta);
        }
        public DataTable obtenerHorarioDeDia(int legajoMedico, string dia)
        {
            AccesoDatos ad = new AccesoDatos();
            string consulta = "SELECT diaAtencion AS 'DIA', HoraIngreso AS 'INGRESO', HoraEgreso AS 'EGRESO' FROM JORNADALABORALXMEDICO WHERE LegajoMedico_JXM = " + legajoMedico + " " +
                "AND DiaAtencion = '" + dia + "'";
            return ad.ObtenerTabla("HorarioDiaLaboral", consulta);
        }

        public DataTable getLegajoMedico()
        {
            AccesoDatos ad = new AccesoDatos();
            string consulta = "DECLARE @ProximoLegajo INT  SET @ProximoLegajo = IDENT_CURRENT('Medicos') SELECT @ProximoLegajo AS legajo";

            return ad.ObtenerTabla("Medicos", consulta);
        }
        
        public void agregarHorarios(int legajo, string dia, string horaIngreso, string horaEgreso)
        {
            AccesoDatos ad = new AccesoDatos();

            horaEgreso += ":00";
            horaIngreso += ":00";
            string consulta = "INSERT INTO JornadaLaboralXMedico (legajoMedico_JXM , diaAtencion , HoraIngreso , HoraEgreso) VALUES (" + legajo + " , '" + dia + "' , '" + horaIngreso + "' , '" + horaEgreso + "')";

            ad.ObtenerTabla("JornadaLaboralxMedico", consulta);
        }
        public int actualizarHorario(int legajo, string dia, string horaIngreso, string horaEgreso)
        {
            AccesoDatos ad = new AccesoDatos();

            horaEgreso += ":00";
            horaIngreso += ":00";
            string consulta = "UPDATE JornadaLaboralXMedico SET HoraIngreso ='" + horaIngreso + "', HoraEgreso= '" + horaEgreso
                + "' WHERE legajoMedico_JXM = " + legajo + " AND diaAtencion = '" + dia + "'"; 
            
            return ad.EjecutarConsulta(consulta);
        }
        public int eliminarHorario(int legajo, string dia)
        {
            AccesoDatos ad = new AccesoDatos();

            string consulta = "DELETE FROM JornadaLaboralXMedico WHERE legajoMedico_JXM = " + legajo + " AND diaAtencion = '" + dia + "'";
            return ad.EjecutarConsulta(consulta);
        }
    }
}
