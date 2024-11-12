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

       /* public bool agregarHorarios(List<(DayOfWeek dia, TimeSpan? horaIngreso, TimeSpan? horaEgreso)> horarios)
        {
            //ACA YA SE PUEDE MANDAR AL DAO CON UN FOR UNO POR UNO(SOLO SE LO PASA SI EL HORARIO ES VALIDO)
            //NECESITAMOS TAMBIEN DE ALGUNA FORMA AGARRAR EL LEGAJO DEL MEDICO QUE SE ACABA DE INGRESAR. HICEL LA FUNCION 'buscarMedicoPorDni' en DaoMedicos PARA ESTO
            //POR ESTO AGARRO EL VALOR DEL TXT DE DNI
        }*/
    }
}
