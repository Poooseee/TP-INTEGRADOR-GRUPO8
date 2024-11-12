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
    }
}
