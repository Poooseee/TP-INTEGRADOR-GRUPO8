<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asignacionTurnos.aspx.cs" Inherits="Vistas.asignacionTurnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            margin: 0 auto;
        }
        .auto-style3 {
        }
        .auto-style12 {
            margin-left: 120px;
        }
        .auto-style25 {
            width: 603px;
        }
        .auto-style37 {
            margin-left: 0px;
        }
        .auto-style57 {
            width: 210px;
        }
        .auto-style58 {
            width: 78px;
        }
        .auto-style59 {
            width: 84px;
        }
        .auto-style60 {
            width: 54px;
        }
        .auto-style61 {
            width: 126px;
        }
        .auto-style63 {
            width: 54px;
            height: 26px;
        }
        .auto-style65 {
            width: 210px;
            height: 26px;
        }
        .auto-style66 {
            width: 78px;
            height: 26px;
        }
        .auto-style67 {
            width: 84px;
            height: 26px;
        }
        .auto-style68 {
            width: 126px;
            height: 26px;
        }
        .auto-style70 {
            height: 26px;
            width: 268435488px;
        }
        .auto-style71 {
            width: 112px;
        }
        .auto-style72 {
            width: 112px;
            height: 26px;
        }
        .auto-style73 {
            width: 268435488px;
        }
        .auto-style74 {
            width: 603px;
            height: 23px;
        }
        .auto-style75 {
            width: 288px;
        }
        .auto-style76 {
            width: 288px;
            height: 26px;
        }
        .auto-style77 {
            width: 259px;
        }
        .auto-style78 {
            width: 259px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table class="auto-style3">
            <tr>
                <td class="auto-style25">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="~ Administrador"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style25">
                        <asp:LinkButton ID="lnkbtnCerrarSesion" runat="server" OnClick="lnkbtnCerrarSesion_Click">Cerrar Sesión</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/menuAdministrador.aspx">Volver</asp:HyperLink>
                        </td>
            </tr>
            <tr>
                <td class="auto-style74">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Overline="False" Font-Size="X-Large" Font-Underline="True" Text="ASIGNACION DE TURNOS"></asp:Label>
                </td>
            </tr>
            </table>

        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style3">
                <tr>
                    <td colspan="3">&nbsp;</td>
                    <td colspan="3">
                        <asp:Label ID="Label3" runat="server" Text="CONSULTA DE TURNOS"></asp:Label>
                    </td>
                    <td class="auto-style59">&nbsp;</td>
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="AGENDAR TURNO"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style71" colspan="2">&nbsp;</td>
                    <td class="auto-style57">&nbsp;</td>
                    <td class="auto-style58">&nbsp;</td>
                    <td class="auto-style59">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style77">&nbsp;</td>
                    <td class="auto-style73">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style71" colspan="2">Especialidad:</td>
                    <td class="auto-style57">
                        <asp:DropDownList ID="ddlEspecialidad" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEspecialidad_SelectedIndexChanged" Height="20px" Width="185px">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style58">
                        &nbsp;</td>
                    <td class="auto-style59">&nbsp;</td>
                    <td class="auto-style61">Especialidad:</td>
                    <td class="auto-style77">
                    <asp:Label ID="lblEspecialidad" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style71" colspan="2">Dia:</td>
                    <td class="auto-style57">
                        <asp:TextBox ID="txtDia" runat="server" TextMode="Date" Width="184px" CssClass="auto-style37" Height="16px" OnTextChanged="txtDia_TextChanged" AutoPostBack="True"></asp:TextBox>
                    </td>
                    <td class="auto-style58">
                        &nbsp;</td>
                    <td class="auto-style59">&nbsp;</td>
                    <td class="auto-style61">Fecha:</td>
                    <td class="auto-style77">
                    <asp:Label ID="lblDia" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style71" colspan="2">Médico:</td>
                    <td class="auto-style57">
                        <asp:DropDownList ID="ddlMedicos" runat="server" Height="17px" Width="199px" AutoPostBack="True" OnSelectedIndexChanged="ddlMedicos_SelectedIndexChanged" CssClass="auto-style37">
                            <asp:ListItem>-- Seleccione Medico --</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style58">
                        &nbsp;</td>
                    <td class="auto-style59">&nbsp;</td>
                    <td class="auto-style61">Medico:</td>
                    <td class="auto-style77">
                    <asp:Label ID="lblMedico" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style71" colspan="2">Horario:</td>
                    <td class="auto-style57">
                        <asp:DropDownList ID="ddlHorarios" runat="server" Height="17px" Width="187px" AutoPostBack="True" OnSelectedIndexChanged="ddlHorarios_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style58">
                        &nbsp;</td>
                    <td class="auto-style59">&nbsp;</td>
                    <td class="auto-style61">Horario: </td>
                    <td class="auto-style77">
                    <asp:Label ID="lblHorario" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style71" colspan="2">&nbsp;</td>
                    <td class="auto-style57">&nbsp;</td>
                    <td class="auto-style58">&nbsp;</td>
                    <td class="auto-style59">&nbsp;</td>
                    <td class="auto-style61">Nombre Paciente:</td>
                    <td class="auto-style77">
                    <asp:TextBox ID="txtNombrePaciente" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style73">
                        <asp:RequiredFieldValidator ID="rfvNombrePaciente" runat="server" ControlToValidate="txtNombrePaciente" ErrorMessage="*" ForeColor="#CC3300" ValidationGroup="2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style63"></td>
                    <td class="auto-style76"></td>
                    <td class="auto-style72" colspan="2">
                    <asp:Label ID="lblNoExisteTurno" runat="server" ForeColor="#009900"></asp:Label>
                    </td>
                    <td class="auto-style65">
                    <asp:Label ID="lblExisteTurno" runat="server" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td class="auto-style66"></td>
                    <td class="auto-style67"></td>
                    <td class="auto-style68">Dni Paciente:</td>
                    <td class="auto-style78">
                    <asp:TextBox ID="txtDniPaciente" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style70">
                        <asp:RequiredFieldValidator ID="rfvDniPaciente" runat="server" ControlToValidate="txtDniPaciente" ErrorMessage="*" ForeColor="#CC3300" ValidationGroup="2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style71" colspan="2">&nbsp;</td>
                    <td class="auto-style57">&nbsp;</td>
                    <td class="auto-style58">&nbsp;</td>
                    <td class="auto-style59">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style77">&nbsp;</td>
                    <td class="auto-style73">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style71" colspan="2">&nbsp;</td>
                    <td class="auto-style57">&nbsp;</td>
                    <td class="auto-style58">&nbsp;</td>
                    <td class="auto-style59">&nbsp;</td>
                    <td class="auto-style61">
                    <asp:Button ID="btnAgregar" runat="server" Text="Agendar Turno" ValidationGroup="2" OnClick="btnAgregar_Click" />
                    </td>
                    <td class="auto-style77">
                    <asp:Label ID="lblAgendado" runat="server" ForeColor="#009900"></asp:Label>
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style71" colspan="2">&nbsp;</td>
                    <td class="auto-style57">&nbsp;</td>
                    <td class="auto-style58">&nbsp;</td>
                    <td class="auto-style59">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style77">
                    <asp:Label ID="lblError" runat="server" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                </tr>
            </table>
        </p>
        <p class="auto-style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
    </form>
</body>
</html>
