using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class MenuMedicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //HttpCookie cookie = this.Request.Cookies["usuarioInfo"];
            //lblUsuario.Text = cookie["Usuario"];
            cargarGrdTurnos();
        }
        public void cargarGrdTurnos()
        {
            NegocioTurnos negocioTurnos = new NegocioTurnos();
            grvTurnos.DataSource = negocioTurnos.obtenerTablaTurnos();
            grvTurnos.DataBind();
        }
        protected void grvTurnos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            NegocioTurnos negocioTurnos = new NegocioTurnos();
            grvTurnos.EditIndex = e.NewEditIndex;
            negocioTurnos.obtenerTablaTurnos();
            grvTurnos.DataBind();
        }

        protected void grvTurnos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvTurnos.EditIndex = -1;
            cargarGrdTurnos();
        }

        protected void grvTurnos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            /* FALTA CREAR LA ENTIDAD TURNO Y MANDAR ESTO A LA BD
            string NroTurno = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblNroTurno")).Text;
            string Fecha = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblFechaTurno")).Text;
            string Hora = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblHoraTurno")).Text;
            string Paciente = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblDNIPaciente")).Text;
            string Presentismo = ((DropDownList)grvTurnos.Rows[e.RowIndex].FindControl("ddlPresentismo")).SelectedValue;
            string Estado = ((DropDownList)grvTurnos.Rows[e.RowIndex].FindControl("ddlEstado")).SelectedValue;
            string Observaciones = ((Label)grvTurnos.Rows[e.RowIndex].FindControl("lblObservaciones")).Text;
            */
            grvTurnos.EditIndex = -1;
            cargarGrdTurnos();
        }
    }
}