using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class asignacionTurnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            cargarEspecialidades();

            }
            if (Request.Cookies["UsuarioInfo"] != null)
            {
                //EL USUARIO ESTA LOGUEADO EN EL SISTEMA
                HttpCookie cookie = Request.Cookies["UsuarioInfo"];

                if (cookie["TipoUsuario"] == "Administrador")
                {
                    //EL USUARIO TIENE ACCESO
                    string usuario = cookie["Usuario"];
                    lblUsuario.Text = usuario;
                }
                else
                {
                    //EL USUARIO NO TIENE ACCESO
                    Response.Redirect("../Medico/TurnosYPacientes.aspx");
                }
            }
            else
            {
                //EL USUARIO NO ESTA LOGUEADO EN EL SISTEMA
               // Response.Redirect("../login.aspx");
            }
        }
        public void cargarEspecialidades()
        {
            NegocioEspecialidades negEsp = new NegocioEspecialidades();
            DataTable dt = negEsp.obtenerTablaEspecialidades();
            ddlEspecialidad.DataSource = dt;
            ddlEspecialidad.DataTextField = "NombreEspecialidad_E";
            ddlEspecialidad.DataValueField = "NombreEspecialidad_E";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem("-- Seleccione Especialidad --", "0"));
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grvTurnos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdPacientes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lnkbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            //ELIMINAMOS LA COOKIE
            HttpCookie cookie = new HttpCookie("UsuarioInfo");
            cookie.Path = "/";

            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);

            Response.Redirect("../login.aspx");
        }

        protected void ddlEspecialidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            //AGREGO LOS MEDICOS DE LA ESPECIALIDAD SELECCIONADA
            ddlMedicos.Items.Clear();
            ListItem itemDefault = new ListItem("-- Seleccione Medico --", "0");
            ddlMedicos.Items.Add(itemDefault);
            NegocioMedicos neg = new NegocioMedicos();
            DataTable dt = neg.obtenerMedicosDeEspecialidad(ddlEspecialidad.SelectedItem.Text);
            foreach (DataRow dr in dt.Rows)
            {
                ListItem item = new ListItem();
                item.Text = dr["nombre_M"].ToString() + " " + dr["apellido_M"].ToString();
                item.Value = dr["Legajo_M"].ToString();
                ddlMedicos.Items.Add(item);
            }

        }

        protected void ddlMedicos_SelectedIndexChanged(object sender, EventArgs e)
        {
            //AGREGO LOS DIAS EN LOS QUE ATIENDE EL MEDICO
           
            NegocioHorarios negHorarios = new NegocioHorarios();
            DataTable dt = negHorarios.obtenerHorariosDeMedico(ddlMedicos.SelectedValue.ToString());
            ddlDias.DataSource = dt;
            ddlDias.DataTextField = "DIA";
            ddlDias.DataValueField = "DIA";
            ddlDias.DataBind();
            ddlDias.Items.Insert(0, new ListItem("-- Seleccione Dia --", "0"));
        }

        protected void ddlDias_SelectedIndexChanged(object sender, EventArgs e)
        {
            // agrego los horarios del dia seleccionado

            NegocioHorarios negHorarios = new NegocioHorarios();
            DataRow dr = negHorarios.diaLaboralMedico(ddlMedicos.SelectedValue.ToString(), ddlDias.SelectedItem.Text.ToString());

            // obtengo horario de entrada y de salida 

            TimeSpan horaEntrada = TimeSpan.Parse(dr["INGRESO"].ToString());
            TimeSpan horaSalida = TimeSpan.Parse(dr["EGRESO"].ToString());

            // creo una variable para ir recorriendo de cada una hora
            TimeSpan unaHora = new TimeSpan(1, 0, 0);

            // va desde la hora de entrada sumando una hora hasta llegar a la hora de salida 

            for (TimeSpan i = horaEntrada; i <= horaSalida; i += unaHora)
            {
                ListItem item = new ListItem();

                // el i representa cada hora que le sumo una hora para mostrar la hora de finalizacion del turno
                // conformando turnos de una hora desde que entra hasta que sale

                TimeSpan horaFinalizacion = i + unaHora;
                item.Text = i.ToString() + " - " + horaFinalizacion.ToString();
                ddlHorarios.Items.Add(item);
            }
        }
    }
}