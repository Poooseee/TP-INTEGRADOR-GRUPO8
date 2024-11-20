using DAO;
using Entidades;
using System;
using System.Web;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegocioUsuarios
    {
        DaoUsuarios DAO = new DaoUsuarios();
        public int inicioSession(string nombreUsuario,string contrasenia)
        {
            Usuarios usuario = new Usuarios();
            usuario.NombreUsuario = nombreUsuario;
            usuario.Contrasenia = contrasenia;
            if (DAO.EsAdmin(usuario))
            {
                // EL USUARIO ES ADMINISTRADOR 
                return 1;

            }else if (DAO.EsMedico(usuario))
            {
                // EL USUARIO ES MEDICO
                return 2;
            }
            else
            {
                // NO EXISTE ESE USUARIO
                return 0;
            }
        }

        public DataRow inicioSesion(string nombreUsuario , string constrasenia)
        {
            Usuarios login = new Usuarios();
            login.Contrasenia = constrasenia;
            login.NombreUsuario = nombreUsuario;

            DataTable respuesta = DAO.login(login);

            if(respuesta.Rows.Count > 0)
            {
                //SE ENCONTRO
                return respuesta.Rows[0];
            }
            else
            {
                //NO SE ENCONTRO
                return null;
            }
        }

        public bool contraseniaValida(string contrasenia)
        {
            Usuarios usuario = new Usuarios();
            usuario.Contrasenia = contrasenia;
            return DAO.contraseniaValida(usuario);
        }

        public bool nombreUsuarioValido(string nombreUsuario)
        {
            Usuarios usuario = new Usuarios();
            usuario.NombreUsuario = nombreUsuario;
            return DAO.nombreUsuarioValido(usuario);
        }
    }
}
