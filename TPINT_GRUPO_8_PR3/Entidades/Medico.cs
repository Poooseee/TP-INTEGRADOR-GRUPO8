using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Medico
    {
        int Legajo;
        int dni;
        string nombre;
        string apellido;
        string sexo;
        string nacionalidad;
        DateTime fechaNac;
        string direccion;
        int localidad;
        int provincia;
        string email;
        string telefono;
        bool estado;
        string especialidad;

        public Medico(bool est = true) { estado = est; }

        public int Legajo1 { get => Legajo; set => Legajo = value; }
        public int Dni { get => dni; set => dni = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Sexo { get => sexo; set => sexo = value; }
        public string Nacionalidad { get => nacionalidad; set => nacionalidad = value; }
        public DateTime FechaNac { get => fechaNac; set => fechaNac = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public int Localidad { get => localidad; set => localidad = value; }
        public int Provincia { get => provincia; set => provincia = value; }
        public string Email { get => email; set => email = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public bool Estado { get => estado; set => estado = value; }
        public string Especialidad { get => especialidad; set => especialidad = value; }
    }
}
