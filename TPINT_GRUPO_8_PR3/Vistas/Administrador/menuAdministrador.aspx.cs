using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPacientes_Click(object sender, EventArgs e)
        {
            Server.TransferRequest("ABML_Paciente.aspx");
        }

        protected void btnMedicos_Click(object sender, EventArgs e)
        {
            Server.TransferRequest("ABML_Medico.aspx");
        }

        protected void btnTurnos_Click(object sender, EventArgs e)
        {
            Server.TransferRequest("asignacionTurnos.aspx");
        }

        protected void btnInformes_Click(object sender, EventArgs e)
        {
            Server.TransferRequest("Informes.aspx");
        }
    }
}