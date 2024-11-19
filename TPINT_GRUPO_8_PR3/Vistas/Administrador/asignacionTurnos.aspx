<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asignacionTurnos.aspx.cs" Inherits="Vistas.asignacionTurnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style6 {
            width: 56px;
            height: 26px;
        }
        .auto-style8 {
            width: 39px;
            height: 26px;
        }
        .auto-style10 {
            width: 58px;
            height: 26px;
        }
        .auto-style12 {
            margin-left: 120px;
        }
        .auto-style13 {
            width: 72%;
            margin-left: 120px;
            margin-right: 100px;
        }
        .auto-style16 {
            width: 83px;
        }
        .auto-style17 {
            width: 146px;
        }
        .auto-style18 {
            width: 80px;
        }
        .auto-style19 {
            width: 127px;
        }
        .auto-style20 {
            height: 23px;
        }
        .auto-style23 {
            width: 620px;
        }
        .auto-style24 {
            height: 23px;
            width: 620px;
        }
        .auto-style25 {
            width: 603px;
        }
        .auto-style26 {
            height: 23px;
            width: 603px;
        }
        .auto-style27 {
            height: 23px;
            width: 207px;
        }
        .auto-style28 {
            width: 207px;
        }
        .auto-style30 {
            height: 23px;
            width: 385px;
        }
        .auto-style31 {
            width: 385px;
        }
        .auto-style32 {
            width: 128px;
            height: 26px;
        }
        .auto-style37 {
            margin-left: 0px;
        }
        .auto-style41 {
            width: 105px;
            height: 26px;
        }
        .auto-style42 {
            width: 108px;
            height: 26px;
        }
        .auto-style43 {
            width: 101px;
            height: 26px;
        }
        .auto-style44 {
            width: 102px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table class="auto-style3">
            <tr>
                <td class="auto-style25" colspan="2">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="~ Administrador"></asp:Label>
                    </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">
                        <asp:LinkButton ID="lnkbtnCerrarSesion" runat="server" OnClick="lnkbtnCerrarSesion_Click">Cerrar Sesión</asp:LinkButton>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/menuAdministrador.aspx">Volver</asp:HyperLink>
                        </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" Text="Asignacion De Turnos"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style30">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style44">Especialidad:</td>
                    <td class="auto-style32">
                        <asp:DropDownList ID="ddlEspecialidad" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEspecialidad_SelectedIndexChanged" Height="20px" Width="185px">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="rfvEspecialidad" runat="server" ControlToValidate="ddlEspecialidad" ErrorMessage="*" ForeColor="#CC3300" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style41">
                        Dia:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDia" runat="server" TextMode="Date" Width="184px" CssClass="auto-style37" Height="16px" OnTextChanged="txtDia_TextChanged"></asp:TextBox>
                    </td>
                </tr>
            </table>
                </td>
                <td class="auto-style28">
                    <asp:RequiredFieldValidator ID="rfvDia" runat="server" ControlToValidate="txtDia" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style23">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style42">
                        Médico:</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlMedicos" runat="server" Height="17px" Width="199px" AutoPostBack="True" OnSelectedIndexChanged="ddlMedicos_SelectedIndexChanged">
                            <asp:ListItem>-- Seleccione Medico --</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
                </td>
                <td class="auto-style28">
                    <asp:RequiredFieldValidator ID="rfvMedico" runat="server" ControlToValidate="ddlMedicos" ErrorMessage="*" ForeColor="#CC3300" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style43">
                        Horario:</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="ddlHorarios" runat="server" Height="17px" Width="187px">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
                </td>
                <td class="auto-style28">
                    <asp:RequiredFieldValidator ID="rfvHorario" runat="server" ControlToValidate="ddlHorarios" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">
                    <asp:Button ID="btnBuscarTurnos" runat="server" Text="Buscar Turnos" OnClick="btnBuscarTurnos_Click" />
                </td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">
                    <asp:Label ID="lblNoExisteTurno" runat="server" ForeColor="#009900"></asp:Label>
                    <asp:Label ID="lblExisteTurno" runat="server" ForeColor="#CC3300"></asp:Label>
                </td>
                <td class="auto-style23" rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">Turnos Disponibles&nbsp; </td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td colspan="3">
            <asp:GridView ID="gvTurnos" runat="server" AutoGenerateColumns="False" Width="916px" AutoGenerateSelectButton="True" AllowPaging="True" PageSize="5">
                <Columns>
                    <asp:BoundField HeaderText="Fecha" />
                    <asp:BoundField HeaderText="Horario" />
                    <asp:BoundField HeaderText="Especialidad" />
                    <asp:BoundField HeaderText="Médico" />
                </Columns>
            </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
        <table class="auto-style13">
            <tr>
                <td class="auto-style19">Especialidad:</td>
                <td class="auto-style18">
                    <asp:Label ID="lblEspecialidad" runat="server"></asp:Label>
                </td>
                <td class="auto-style16">Medico:</td>
                <td aria-grabbed="undefined" class="auto-style17">
                    <asp:Label ID="lblMedico" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Día:</td>
                <td class="auto-style18">
                    <asp:Label ID="lblDia" runat="server"></asp:Label>
                </td>
                <td class="auto-style16">Horario: </td>
                <td class="auto-style17">
                    <asp:Label ID="lblHorario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Nombre Paciente:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtNombrePaciente" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style16">Dni Paciente:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtDniPaciente" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAgregar" runat="server" Text="Agendar Turno" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
        </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
        </table>

        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
    </form>
</body>
</html>
