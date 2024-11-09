using DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegocioProvincias
    {
        public DataTable obtenerTablaProvincias()
        {
            DaoProvincias dao = new DaoProvincias();
            return dao.ObtenerProvincias();
        }
    }
}
