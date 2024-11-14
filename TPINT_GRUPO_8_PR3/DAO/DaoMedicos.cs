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

        public DataTable obtenerTablaMedicos()
        {
            string consulta = "SELECT Legajo_M AS Legajo , DNI_M AS Dni , nombre_M AS Nombre , apellido_M AS Apellido , sexo_M AS Sexo , nacionalidad_M AS Nacionalidad , fechaNac_M AS FechaNacimiento " +
                ", direccion_M AS Direccion , Localidades.nombreLocalidad_L AS Localidad , Provincias.nombreProvincia_PR AS Provincia , email_M AS Email , telefono_M AS Telefono , baja_M AS Baja , especialidad_M " + 
                "AS Especialidad FROM Medicos INNER JOIN Localidades ON Medicos.Idlocalidad_M = Localidades.IdLocalidad_L INNER JOIN Provincias ON Medicos.Idprovincia_M = Provincias.IdProvincia_PR INNER JOIN Especialidades " +
                "ON Medicos.especialidad_M = Especialidades.nombreEspecialidad_E WHERE baja_m = 0";

            return ad.ObtenerTabla("Medicos", consulta);
        }

        public bool existeMedico(int legajo)
        {
            return ad.existe("SELECT * FROM Medicos WHERE Legajo_M = " + legajo);
        }
        public int actualizarMedico(Medico m)
        {
            string consulta = "UPDATE Medicos SET " +
                      "DNI_M = '" + m.Dni + "', " +
                      "nombre_M = '" + m.Nombre + "', " +
                      "apellido_M = '" + m.Apellido + "', " +
                      "sexo_M = '" + m.Sexo + "', " +
                      "nacionalidad_M = '" + m.Nacionalidad + "', " +
                      "fechaNac_M = '" + m.FechaNac + "', " +
                      "direccion_M = '" + m.Direccion + "', " +
                      "IdLocalidad_M = '" + m.Localidad + "', " +
                      "IdProvincia_M = '" + m.Provincia + "', " +
                      "email_M = '" + m.Email + "', " +
                      "telefono_M = '" + m.Telefono + "', " +
                      "especialidad_M = '" + m.Especialidad + "', " +
                      "baja_m = '" + m.Baja +"' " +
                      "WHERE Legajo_M = '" + m.Legajo + "'";

            return ad.EjecutarConsulta(consulta);
        }
        public int bajaMedico(Medico m)
        {
            string consulta = "UPDATE Medicos SET Baja_m = 1 WHERE Legajo_M = '" + m.Legajo + "'";
           return ad.EjecutarConsulta(consulta);
        }

        public DataTable buscarMedicoPorLegajo(int legajo)
        {
            string consulta = "SELECT Legajo_M AS Legajo , DNI_M AS Dni , nombre_M AS Nombre , apellido_M AS Apellido , sexo_M AS Sexo , nacionalidad_M AS Nacionalidad , fechaNac_M AS FechaNacimiento " +
               ", direccion_M AS Direccion , Localidades.nombreLocalidad_L AS Localidad , Provincias.nombreProvincia_PR AS Provincia , email_M AS Email , telefono_M AS Telefono , baja_M AS Baja , especialidad_M " +
               "AS Especialidad FROM Medicos INNER JOIN Localidades ON Medicos.Idlocalidad_M = Localidades.IdLocalidad_L INNER JOIN Provincias ON Medicos.Idprovincia_M = Provincias.IdProvincia_PR INNER JOIN Especialidades " +
               "ON Medicos.especialidad_M = Especialidades.nombreEspecialidad_E WHERE Legajo_M = " + legajo;

            return ad.ObtenerTabla("Medicos", consulta);
        }

        public DataTable buscarMedicoPorDni(string dni)
        {
            string consulta = "SELECT Legajo_M AS Legajo FROM Medicos WHERE DNI_M = '" + dni + "'";
            return ad.ObtenerTabla("Medicos", consulta);
        }

        public int agregarMedico(Medico medico)
        {
            string Consulta = "INSERT INTO MEDICOS (DNI_M, nombre_M, apellido_M, sexo_M, nacionalidad_M, fechaNac_M, direccion_M, Idlocalidad_M, Idprovincia_M, email_M, telefono_M," +
                "baja_M, especialidad_M) VALUES ('" + medico.Dni + "' , '" + medico.Nombre + "' , '" + medico.Apellido + "' , '" + medico.Sexo + "' , '" + medico.Nacionalidad + 
                "' , '" + medico.FechaNac + "' , '" + medico.Direccion + "' , '" +medico.Localidad + "' , '" +medico.Provincia + "' , '" +medico.Email + "' , '" + medico.Telefono + "' , '" +  
                "' , '" + medico.Especialidad + "')";
            return ad.EjecutarConsulta(Consulta);
        }

        public int eliminarMedico(int legajo)
        {
            string consulta = "DELETE FROM Medicos WHERE Legajo_M = " + legajo;
            return ad.EjecutarConsulta(consulta);
        }

        public DataTable obtenerMedicosDeEspecialidad(string especialidad)
        {
            string consulta = "select * from medicos WHERE Baja_m = 0 AND especialidad_m = '" + especialidad + "'";
            return ad.ObtenerTabla("MedicosDeEspecialidad", consulta);
        }
    }
}
