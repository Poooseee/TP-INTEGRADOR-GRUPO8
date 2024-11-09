using DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegocioTurnos
    { 
        DaoTurnos DaoTurnos = new DaoTurnos();
        public NegocioTurnos() { }

        public DataTable obtenerTablaTurnos()
        {
            return DaoTurnos.obtenerTablaTurnos();
        }
    }
}
