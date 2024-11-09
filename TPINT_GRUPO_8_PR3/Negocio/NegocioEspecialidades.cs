using DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegocioEspecialidades
    {
        public DataTable obtenerTablaEspecialidades()
        {
            DaoEspecialidades dao = new DaoEspecialidades();
            return dao.ObtenerEspecialidades();
        }
    }
}
