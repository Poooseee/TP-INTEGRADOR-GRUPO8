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
    public class NegocioMedicos
    {
        DaoMedicos DaoMedicos = new DaoMedicos();
        public DataTable obtenerTablaMedicos()
        {
            return DaoMedicos.obtenerTablaMedicos();
        }

        public bool BajaMedico(int legajo)
        {
            Medico medico = new Medico();
            medico.Legajo = legajo;
            bool eliminado = false;
            if (DaoMedicos.existeMedico(legajo))
            {
               if(DaoMedicos.bajaMedico(medico) == 1)
                {
                    eliminado = true;
                }

            }
            return eliminado;
        }
        public bool actualizarMedico(Medico medico)
        {
            bool actualizado = false;
            if (DaoMedicos.existeMedico(medico.Legajo))
            {
                if (DaoMedicos.actualizarMedico(medico)==1)
                {
                    actualizado = true;
                }
            }
            return actualizado;
        }
        public bool agregarMedico(Medico medico)
        {
            int filas = 0;

            
            if (DaoMedicos.existeMedico(medico.Legajo) == false)
            {
                //si no existe, agregalo
                filas = DaoMedicos.agregarMedico(medico);
            }
           
            //si se pudo agregar retorna true, sino false
            if (filas == 1)
            {
                return true;
            }
            return false;
           
        }

        public DataTable FiltrarMedicosPorLegajo(int legajo)
        {
            return DaoMedicos.buscarMedicoPorLegajo(legajo);
        }
    }
}
