using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using Entidades;
using System.Security;

namespace DAO
{
    public class DaoMedicos
    { 
        AccesoDatos ad = new AccesoDatos();

        public int AgregarMedico(Medico medico)
        {
            string Consulta = "INSERT INTO MEDICOS (Legajo_M, DNI_M, nombre_M, apellido_M, sexo_M, nacionalidad_M, fechaNac_M, direccion_M, Idlocalidad_M, Idprovincia_M, email_M, telefono_M" +
                "baja_M, especialidad_M) VALUES ('" + medico.Legajo1 + "'," + medico.Dni + "'," + medico.Nombre + "'," + medico.Apellido + "'," + medico.Sexo + "'," + medico.Nacionalidad + 
                "'," + medico.FechaNac + "'," + medico.Direccion + "'," +medico.Localidad + "'," +medico.Provincia + "'," +medico.Email + "'," + medico.Telefono + "'," + medico.Estado +
                "'," + medico.Especialidad + "')";
            return ad.EjecutarConsulta(Consulta);
        }
    }
}
