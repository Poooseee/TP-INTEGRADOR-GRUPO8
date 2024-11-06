<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asignacionTurnos.aspx.cs" Inherits="Vistas.asignacionTurnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 160px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 83px;
            height: 26px;
        }
        .auto-style5 {
            width: 141px;
            height: 26px;
        }
        .auto-style6 {
            width: 56px;
            height: 26px;
        }
        .auto-style7 {
            width: 173px;
            height: 26px;
        }
        .auto-style8 {
            width: 39px;
            height: 26px;
        }
        .auto-style9 {
            width: 134px;
            height: 26px;
        }
        .auto-style10 {
            width: 58px;
            height: 26px;
        }
        .auto-style11 {
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="~ Administrador"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" Text="Asignacion De Turnos"></asp:Label>
            <br />
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/menuAdministrador.aspx">Volver</asp:HyperLink>
                        <br />
            <br />
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">Especialidad:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlEspecialidad" runat="server">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        Médico:</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlDia0" runat="server" Height="16px" Width="114px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">
                        Fecha:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtFechaTurno" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        Horario:</td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="ddlHorario" runat="server" Height="16px" Width="100px">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Turnos Disponibles&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="gvTurnos" runat="server" AutoGenerateColumns="False" Width="916px" AutoGenerateEditButton="True" AutoGenerateSelectButton="True">
                <Columns>
                    <asp:BoundField HeaderText="Fecha" />
                    <asp:BoundField HeaderText="Horario" />
                    <asp:BoundField HeaderText="Especialidad" />
                    <asp:BoundField HeaderText="Médico" />
                </Columns>
            </asp:GridView>
        </p>
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
                    <asp:TextBox ID="txtDniPaciente" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
                </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
