using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Turno
    {
        int nroTurno;
        DateTime fecha;
        string hora;
        string paciente;
        string presentismo;
        string estado;
        string observaciones;
        int legajoMedico;

        public int NroTurno { get => nroTurno; set => nroTurno = value; }
        public DateTime Fecha { get => fecha; set => fecha = value; }
        public string Hora { get => hora; set => hora = value; }
        public string Paciente { get => paciente; set => paciente = value; }
        public string Presentismo { get => presentismo; set => presentismo = value; }
        public string Estado { get => estado; set => estado = value; }
        public string Observaciones { get => observaciones; set => observaciones = value; }
        public int LegajoMedico { get => legajoMedico; set => legajoMedico = value; }
    }
}
