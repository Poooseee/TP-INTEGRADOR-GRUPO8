using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class DaoProvincias
    {
        public DataTable ObtenerProvincias()
        {
            AccesoDatos datos = new AccesoDatos();
            string consulta = "SELECT * FROM PROVINCIAS";
            return datos.ObtenerTabla("Provincias", consulta);
        }
    }
}
