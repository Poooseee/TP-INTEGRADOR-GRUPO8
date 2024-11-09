using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class DaoEspecialidades
    {
        public DataTable ObtenerEspecialidades()
        {
            AccesoDatos datos = new AccesoDatos();
            string consulta = "SELECT * From ESPECIALIDADES";
            return datos.ObtenerTabla("Especialidades", consulta);
        }
    }
}
