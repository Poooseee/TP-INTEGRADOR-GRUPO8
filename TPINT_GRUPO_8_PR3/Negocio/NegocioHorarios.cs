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
        public DataTable obtenerHorariosDeMedico(int legajo)
        {
            DaoHorarios daoHorarios = new DaoHorarios();
            return daoHorarios.obtenerHorariosDeMedico(legajo);

        }
        public DataRow diaLaboralMedico(int legajoMedico,string dia)
        {
            DaoHorarios daoHorarios = new DaoHorarios();
            DataTable dt = daoHorarios.obtenerHorarioDeDia(legajoMedico,dia);
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
        public bool actualizarHorarioMedico(int legajo, string dia, string horaIngreso, string horaEgreso)
        {
            DaoHorarios dao = new DaoHorarios();
            bool actualizado = false;

            if(dao.actualizarHorario(legajo, dia, horaIngreso, horaEgreso) == 1)
            {
                actualizado= true;
            }
            return actualizado;
        }
        public bool eliminarHorario(int legajo,string dia)
        {
            DaoHorarios dao = new DaoHorarios();
            bool eliminado = false;
            if (dao.eliminarHorario(legajo, dia) == 1)
            {
                eliminado = true;
            }
            return eliminado;
        }
        public bool agregarHorarios(int legajo , string dia , string horaIngreso , string horaEgreso)
        {
            DaoHorarios daoHorarios = new DaoHorarios();
            DaoMedicos daoMedicos = new DaoMedicos();
            if (daoMedicos.existeMedico(legajo) && daoHorarios.existeHorario(legajo, dia, horaIngreso, horaEgreso)==false)
            {
                int filas = daoHorarios.agregarHorarios(legajo, dia, horaIngreso, horaEgreso);

                if (filas == 1)
                {
                    return true;
                }
            }
            return false;

        }
    }
}
