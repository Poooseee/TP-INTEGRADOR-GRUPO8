using DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegocioHorarios
    {
        public DataTable obtenerTablaHorarios()
        {
            DaoHorarios daoHorarios = new DaoHorarios();
            return daoHorarios.obtenerTablaHorarios();
        }
        public DataTable obtenerHorariosDeMedico(string legajo)
        {
            DaoHorarios daoHorarios = new DaoHorarios();
            return daoHorarios.obtenerHorariosDeMedico(legajo);

        }
        public DataRow diaLaboralMedico(string legajoMedico, string dia)
        {
            DaoHorarios daoHorarios = new DaoHorarios();
            DataTable dt = daoHorarios.obtenerHorarioDeDia(legajoMedico, dia);
            return dt.Rows[0];
        }
        /* public bool agregarHorarios(List<(DayOfWeek dia, TimeSpan? horaIngreso, TimeSpan? horaEgreso)> horarios)
         {
             //ACA YA SE PUEDE MANDAR AL DAO CON UN FOR UNO POR UNO(SOLO SE LO PASA SI EL HORARIO ES VALIDO)
             //NECESITAMOS TAMBIEN DE ALGUNA FORMA AGARRAR EL LEGAJO DEL MEDICO QUE SE ACABA DE INGRESAR. HICEL LA FUNCION 'buscarMedicoPorDni' en DaoMedicos PARA ESTO
             //POR ESTO AGARRO EL VALOR DEL TXT DE DNI
         }*/
    }
}
