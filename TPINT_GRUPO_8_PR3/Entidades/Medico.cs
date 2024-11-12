using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Medico
    {
        int legajo;
        int dni;
        string nombre;
        string apellido;
        string sexo;
        string nacionalidad;
        string fechaNac;
        string direccion;
        int localidad;
        int provincia;
        string email;
        string telefono;
        bool baja;
        string especialidad;


        public int Legajo { get => legajo; set => legajo = value; }
        public int Dni { get => dni; set => dni = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Sexo { get => sexo; set => sexo = value; }
        public string Nacionalidad { get => nacionalidad; set => nacionalidad = value; }
        public string FechaNac { get => fechaNac; set => fechaNac = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public int Localidad { get => localidad; set => localidad = value; }
        public int Provincia { get => provincia; set => provincia = value; }
        public string Email { get => email; set => email = value; }
        public string Telefono { get => telefono; set => telefono = value; }

        public string Especialidad { get => especialidad; set => especialidad = value; }
        public bool Baja { get => baja; set => baja = value; }
    }
}
