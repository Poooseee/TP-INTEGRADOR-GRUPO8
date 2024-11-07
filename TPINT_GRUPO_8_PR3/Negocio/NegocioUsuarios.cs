using DAO;
using Entidades;
using System;
using System.Collections.Generic;
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
