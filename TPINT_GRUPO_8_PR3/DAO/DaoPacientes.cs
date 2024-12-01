using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entidades;
using System.Data;
using System.Threading.Tasks;

namespace DAO
{
    public class DaoPacientes
    {
        AccesoDatos ad = new AccesoDatos();

        public DataTable obtenerTablaPacientes()
        {
            string consulta = "SELECT DNI_P AS Dni , nombre_P AS Nombre , apellido_P AS Apellido , sexo_P AS Sexo , nacionalidad_P AS Nacionalidad , fechaNac_P  AS FechaNacimiento , direccion_P AS Direccion " +
                ", Localidades.nombreLocalidad_L AS Localidad , Provincias.nombreProvincia_PR AS Provincia , email_P AS Email , telefono_P AS Telefono , baja_p AS Baja FROM Pacientes INNER JOIN Localidades ON " +
                "Pacientes.Idlocalidad_P = Localidades.IdLocalidad_L INNER JOIN Provincias ON Pacientes.Idprovincia_P = Provincias.IdProvincia_PR WHERE Baja_p = 0";

            return ad.ObtenerTabla("Pacientes" , consulta);
        }

        public bool existePaciente(string dni)
        {
            return ad.existe("SELECT * FROM Pacientes WHERE DNI_P = '" + dni + "'");
        }

        public int agregarPaciente(Paciente paciente)
        {
            string consulta = "INSERT INTO Pacientes (DNI_P , nombre_P , apellido_P , sexo_P , nacionalidad_P , fechaNac_P , direccion_P , Idlocalidad_P , Idprovincia_P , email_P , telefono_P , baja_p) VALUES " +
                "('" + paciente.Dni + "' , '" + paciente.Nombre + "' , '" + paciente.Apellido + "' , '" + paciente.Sexo + "' , '" + paciente.Nacionalidad + "' , '" + paciente.FechaNac + "' , '" + paciente.Direccion +
                "' , '" + paciente.Localidad + "' , '" + paciente.Provincia + "' , '" + paciente.Email + "' , '" + paciente.Telefono + "' , '" + paciente.Estado + "')";

            return ad.EjecutarConsulta(consulta);
        }

        public int eliminarPaciente(Paciente p)
        {
            string consulta = "UPDATE Pacientes SET Baja_P = 1 WHERE DNI_P = '"+p.Dni+"'";
            return ad.EjecutarConsulta(consulta);
        }

        public int darAltaPaciente(Paciente p)
        {
            string consulta = "UPDATE Pacientes SET Baja_P = 0 WHERE DNI_P = '" + p.Dni + "'";
            return ad.EjecutarConsulta(consulta);
        }

        public int actualizarPaciente(Paciente paciente)
        {
            string consulta = "UPDATE PACIENTES SET nombre_P = '" + paciente.Nombre + "', apellido_P = '" + paciente.Apellido + "', sexo_P = '" + paciente.Sexo +
                "', nacionalidad_P = '" + paciente.Nacionalidad + "', fechaNac_P = '" + paciente.FechaNac + "', direccion_P = '" + paciente.Direccion +
                "', Idlocalidad_P = "+paciente.Localidad+", Idprovincia_P = "+paciente.Provincia+", email_P = '" + paciente.Email +
                "', telefono_P = '" + paciente.Telefono + "' WHERE DNI_P = '" + paciente.Dni+"'";
            return ad.EjecutarConsulta(consulta);
        }

        public DataTable obtenerTablaPacientesFiltrada(Paciente paciente)
        {
            string consulta = "SELECT DNI_P AS Dni , nombre_P AS Nombre , apellido_P AS Apellido , sexo_P AS Sexo , nacionalidad_P AS Nacionalidad , fechaNac_P  AS FechaNacimiento , direccion_P AS Direccion "
                +", Localidades.nombreLocalidad_L AS Localidad , Provincias.nombreProvincia_PR AS Provincia , email_P AS Email , telefono_P AS Telefono , baja_p AS Baja FROM Pacientes INNER JOIN Localidades ON "
                +  "Pacientes.Idlocalidad_P = Localidades.IdLocalidad_L INNER JOIN Provincias ON Pacientes.Idprovincia_P = Provincias.IdProvincia_PR" +
                " WHERE Baja_p = 0 AND DNI_p LIKE '" + paciente.Dni+"%' AND apellido_P LIKE '"+paciente.Apellido+"%' AND nacionalidad_P LIKE '"
                +paciente.Nacionalidad+"%' AND sexo_P LIKE '["+paciente.Sexo+"]%' AND YEAR(fechaNac_P) LIKE '"+paciente.FechaNac+"%'" ;

            return ad.ObtenerTabla("TablaPacientesFiltrada", consulta);
        }

        public DataTable obtenerProvinciaAsignada(string dni)
        {
            string consulta = "SELECT IdProvincia_P FROM Pacientes WHERE dni_P = '" + dni + "'";
            return ad.ObtenerTabla("provinciaAsingada", consulta);
        }
        public DataTable obtenerLocalidadAsignada(string dni)
        {
            string consulta = "SELECT IdLocalidad_P FROM Pacientes WHERE dni_P = '" + dni + "'";
            return ad.ObtenerTabla("LocalidadAsingada", consulta);
        }

        public DataTable ObtenerPacientePorDni(string dni)
        {
            string consulta = "SELECT * FROM Pacientes WHERE DNI_P = '" + dni + "'";
            return ad.ObtenerTabla("Pacientes", consulta);
        }

    }
}
