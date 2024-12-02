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
        public int obtenerLegajoMedico()
        {
            string consulta = "SELECT IDENT_CURRENT('USUARIOS') AS ultimoLegajo;";
            return ad.obtenerResultado(consulta);
        }
        public bool existeMedico(int legajo)
        {
            return ad.existe("SELECT * FROM Medicos WHERE  baja_m = 0 AND Legajo_M = " + legajo);
        }
        public bool existeMedicoDNI(string dni)
        {
            return ad.existe("SELECT * FROM Medicos WHERE  baja_m = 0 AND DNI_M = '" + dni + "'");
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
            string Consulta = "INSERT INTO MEDICOS (Legajo_M, DNI_M, nombre_M, apellido_M, sexo_M, nacionalidad_M, fechaNac_M, direccion_M, Idlocalidad_M, Idprovincia_M, email_M, telefono_M," +
                "baja_M, especialidad_M) VALUES (" + medico.Legajo + " , '" + medico.Dni + "' , '" + medico.Nombre + "' , '" + medico.Apellido + "' , '" + medico.Sexo + "' , '" + medico.Nacionalidad + 
                "' , '" + medico.FechaNac + "' , '" + medico.Direccion + "' , '" +medico.Localidad + "' , '" +medico.Provincia + "' , '" +medico.Email + "' , '" + medico.Telefono + "' , '" +  
                "' , '" + medico.Especialidad + "')";
            return ad.EjecutarConsulta(Consulta);
        }

        public int eliminarMedico(int legajo)
        {
            string consulta = "DELETE FROM Medicos WHERE Legajo_M = " + legajo;
            return ad.EjecutarConsulta(consulta);
        }

        public DataTable obtenerMedicosDeEspecialidad(string especialidad, string dia)
        {
            string consulta = "" +
                "Select nombre_M,apellido_M,Legajo_M " +
                "from MEDICOS as m " +
                "inner join JORNADALABORALXMEDICO as j" +
                " on m.Legajo_M = j.legajoMedico_JXM" +
                " where baja_M = 0 " +
                " and especialidad_M = '"+especialidad + "' and diaAtencion = '"+dia+"'";
            
            return ad.ObtenerTabla("MedicosDeEspecialidad", consulta);
        }

        public DataTable obtenerProvinciaAsignada(string legajo)
        {
            string consulta = "SELECT IdProvincia_M FROM Medicos WHERE Legajo_M = '" + legajo + "'";
            return ad.ObtenerTabla("provinciaAsignada", consulta );
        }
        public DataTable obtenerLocalidadAsignada(string legajo)
        {
            string consulta = "SELECT IdLocalidad_M FROM Medicos WHERE Legajo_M = '" + legajo + "'";
            return ad.ObtenerTabla("LocalidadAsignada", consulta);
        }
        public DataTable obtenerEspecialidadAsignada(string legajo)
        {
            string consulta = "SELECT especialidad_M FROM Medicos WHERE Legajo_M = '" + legajo + "'";
            return ad.ObtenerTabla("especialidadAsignada", consulta);
        }

        public DataTable obtenerSexoAsignado(string legajo)
        {
            string consulta = "SELECT sexo_M FROM Medicos WHERE Legajo_M = '" + legajo + "'";
            return ad.ObtenerTabla("sexoAsignado" , consulta);
        }

        public bool existeMedicoEliminado(int legajo)
        {
            string consulta = "SELECT * FROM Medicos WHERE Legajo_M = " + legajo + " AND baja_M = 1";
            return ad.existe(consulta);
        }

        public int darAltaMedico(int legajo)
        {
            string consulta = "UPDATE Medicos SET baja_M = 0 WHERE Legajo_M = " + legajo;
            return ad.EjecutarConsulta(consulta);
        }

    }
}
