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
    public class NegocioPacientes
    {
        DaoPacientes DaoPacientes = new DaoPacientes();
        public DataTable obtenerTablaPacientes()
        {
            return DaoPacientes.obtenerTablaPacientes();
        }

        public DataTable obtenerPacientesPorDNI(string IDaoPacientes)
        {
            return DaoPacientes.buscarPacientePorDni(IDaoPacientes);
        }
        public DataTable obtenerPacientesPorApellido(string IDaoPacientes)
        {
            return DaoPacientes.buscarPacientePorApellido(IDaoPacientes);
        }


        public bool agregarPaciente(Paciente paciente)
        {
            int filas = 0;

            
            if (DaoPacientes.existePaciente(paciente.Dni) == false)
            {
                //si no existe, agregalo
                filas = DaoPacientes.agregarPaciente(paciente);
            }
           
            //si se pudo agregar retorna true, sino false
            if (filas == 1)
            {
                return true;
            }
            return false;
           
        }
    }
}
