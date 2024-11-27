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
        public bool agregarMedico(Medico medico, Usuarios usuario)
        {
            int filas = 0, filas2 = 0;
            DaoUsuarios daoUsuarios = new DaoUsuarios();
            
            if (DaoMedicos.existeMedico(medico.Legajo) == false && daoUsuarios.nombreUsuarioValido(usuario) == false)
            {
                //si no existe, agregalo
                filas = DaoMedicos.agregarMedico(medico);
                filas2 = daoUsuarios.agregarUsuario(usuario);
            }
           
            //si se pudo agregar retorna true, sino false
            if (filas == 1 && filas2 == 1)
            {
                return true;
            }

            return false;
        }

        public DataTable obtenerMedicosDeEspecialidad(string especialidad,string dia)
        {
           return DaoMedicos.obtenerMedicosDeEspecialidad(especialidad,dia);
        }
        public DataTable FiltrarMedicosPorLegajo(int legajo)
        {
            return DaoMedicos.buscarMedicoPorLegajo(legajo);
        }

        public string obtenerProvinciaAsignada(string legajo)
        {

            DataTable dt = DaoMedicos.obtenerProvinciaAsignada(legajo);
            if (dt != null && dt.Rows.Count > 0)
            {
                return dt.Rows[0]["idProvincia_M"].ToString();

            }
            return null;
        }
        public string obtenerLocalidadAsignada(string legajo)
        {
            DataTable dt = DaoMedicos.obtenerLocalidadAsignada(legajo);
            if (dt != null && dt.Rows.Count > 0)
            {
                return dt.Rows[0]["idLocalidad_M"].ToString();

            }
            return null;
        }
        public string obtenerEspecialidadAsignada(string legajo)
        {
            DataTable dt = DaoMedicos.obtenerEspecialidadAsignada(legajo);
            if (dt != null && dt.Rows.Count > 0)
            {
                return dt.Rows[0]["especialidad_M"].ToString();

            }
            return null;
        }

        public string obtenerSexoAsignado(string legajo)
        {
            DataTable dt = DaoMedicos.obtenerSexoAsignado(legajo);
            
            if(dt != null && dt.Rows.Count > 0)
            {
                return dt.Rows[0]["sexo_M"].ToString();
            }

            return null;
        }
        public bool existeMedico(int legajo)
        {
            if (DaoMedicos.existeMedico(legajo))
            {
                return true;
            }
            return false;
        }
        public DataTable ObtenerMedicoPorLegajo(int legajo)
        {
            return DaoMedicos.buscarMedicoPorLegajo(legajo);
        }

    }
}
