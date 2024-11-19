using DAO;
using Entidades;
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
        public bool verificarTurno(Turno turno)
        {
            bool existe = false;
            if (DaoTurnos.buscarTurno(turno) > 0)
            {
                existe = true;
            }
            return existe;
        }
        public bool agregarTurno(Turno turno)
        {
            if (DaoTurnos.agregarTurno(turno) > 0)
            {
                return true;
            }
            return false;
        }
    }
}
