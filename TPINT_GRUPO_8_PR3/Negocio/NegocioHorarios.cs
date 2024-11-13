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
        public DataTable obtenerHorariosDeMedico(string legajo)
        {
            DaoHorarios daoHorarios = new DaoHorarios();
            return daoHorarios.obtenerHorariosDeMedico(legajo);

        }
        public DataRow diaLaboralMedico(string legajoMedico, string dia)
        {
            DaoHorarios daoHorarios = new DaoHorarios();
            DataTable dt = daoHorarios.obtenerHorarioDeDia(legajoMedico, dia);
            return dt.Rows[0];
        }

        public int getLegajoMedico()
        {
            DaoHorarios daoHorarios = new DaoHorarios();
            DataTable dt = daoHorarios.getLegajoMedico();

            DataRow row = dt.Rows[0];
            int legajo = Convert.ToInt32(row["legajo"]);

            return legajo;
        }

        public void agregarHorarios(int legajo , string dia , string horaIngreso , string horaEgreso)
        {
            DaoHorarios daoHorarios = new DaoHorarios();
            daoHorarios.agregarHorarios(legajo, dia, horaIngreso, horaEgreso);
        }
    }
}
