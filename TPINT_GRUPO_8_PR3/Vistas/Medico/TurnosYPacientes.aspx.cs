﻿using System;
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
            HttpCookie cookie = this.Request.Cookies["usuarioInfo"];
            lblUsuario.Text = cookie["Usuario"];
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void grvTurnos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}