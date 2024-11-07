using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuarios
    {
        private int legajoUsuario;
        private string nombreUsuario;
        private string contrasenia;
        private string tipoUsuario;

        public int LegajoUsuario { get => legajoUsuario; set => legajoUsuario = value; }
        public string NombreUsuario { get => nombreUsuario; set => nombreUsuario = value; }
        public string Contrasenia { get => contrasenia; set => contrasenia = value; }
        public string TipoUsuario { get => tipoUsuario; set => tipoUsuario = value; }
    }
}
