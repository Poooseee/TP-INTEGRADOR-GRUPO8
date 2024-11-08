using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class DaoLocalidades
    {
        public DataTable ObtenerLocalidades()
        {
            AccesoDatos datos = new AccesoDatos();
            string consulta = "SELECT * FROM LOCALIDADES";
            return datos.ObtenerTabla("Localidades", consulta);
        }
    }
}
