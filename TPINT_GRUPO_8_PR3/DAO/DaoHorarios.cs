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

        public int agregarHorario()
        {
            //ACA REBICIMOS LOS DATOS DEL HORARIO VALIDO Y HACEMOS LA CONSULTA PARA INSERTAR EL REGISTRO
        }
    }
}
