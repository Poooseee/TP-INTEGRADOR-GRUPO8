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
        public DataTable ObtenerLocalidades(int Id_Provincia)
        {
            if (Id_Provincia != 0)
            {
                AccesoDatos datos = new AccesoDatos();
                string consulta = "SELECT nombreLocalidad_L, IdLocalidad_L FROM LOCALIDADES WHERE IdProvincia_L = " + Id_Provincia;
                return datos.ObtenerTabla("Localidades", consulta);
            }
            else
            {
                AccesoDatos datos = new AccesoDatos();
                string consulta = "SELECT nombreLocalidad_L, IdLocalidad_L FROM LOCALIDADES";
                return datos.ObtenerTabla("Localidades", consulta);
            }
        }
    }
}
