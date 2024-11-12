using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class DaoUsuarios
    {
        AccesoDatos ad = new AccesoDatos();

        public DataTable obtenerTablaUsuarios()
        {
            string consulta = "SELECT legajoUsuario_U AS Legajo , nombreUsuario_U AS Usuario , contraseniaUsuario_U AS Contrasenia , tipoUsuario_U AS TipoUsuario FROM Usuarios";

            return ad.ObtenerTabla("Usuarios", consulta);
        }

        public DataTable login(Usuarios usuario)
        {
            string consulta = "SELECT legajoUsuario_U AS Legajo , nombreUsuario_U AS Usuario , contraseniaUsuario_U AS Contrasenia , tipoUsuario_U AS TipoUsuario FROM Usuarios " +
                "WHERE nombreUsuario_U = '" + usuario.NombreUsuario + "' AND contraseniaUsuario_U = '" + usuario.Contrasenia + "'";

            return ad.ObtenerTabla("Usuarios", consulta);
        }
        
        public bool EsAdmin(Usuarios usuario)
        {
            string consultaAdmin = "SELECT * FROM usuarios WHERE nombreUsuario_U = '" + usuario.NombreUsuario + "' "
               + "AND contraseniaUsuario_U = '" + usuario.Contrasenia + "' AND tipoUsuario_U = 'Administrador'";

            if (ad.existe(consultaAdmin))
            {
                return true;
            }
            else { return false; }
        }

        public bool EsMedico(Usuarios usuario)
        {
            string consultaMedico = "SELECT * FROM usuarios WHERE nombreUsuario_U = '" + usuario.NombreUsuario + "' "
                + "AND contraseniaUsuario_U = '" + usuario.Contrasenia + "' AND tipoUsuario_U = 'Medico'";
            if (ad.existe(consultaMedico))
            {
                return true;
            }
            else { return false; }
        }

        public bool contraseniaValida(Usuarios usuario)
        {
            string consulta = "select * from usuarios WHERE contraseniaUsuario_U = '" + usuario.Contrasenia + "'";
            return ad.existe(consulta);
        }
        public bool nombreUsuarioValido(Usuarios usuario)
        {
            string consulta = "select * from usuarios WHERE nombreUsuario_U = '" + usuario.NombreUsuario + "'";
            return ad.existe(consulta);
        }

        public int agregarUsuario(Usuarios usuario)
        {
            string consulta = "INSERT INTO USUARIOS (nombreUsuario_U, contraseniaUsuario_U, tipoUsuario_U) VALUES ('" + usuario.NombreUsuario + "' , '" + usuario.Contrasenia + "' , '" 
                + usuario.TipoUsuario + "')";
            return ad.EjecutarConsulta(consulta);
        }
    }
}
