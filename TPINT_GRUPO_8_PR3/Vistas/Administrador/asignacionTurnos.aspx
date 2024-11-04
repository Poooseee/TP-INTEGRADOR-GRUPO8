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
            width: 30px;
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
                        <asp:TextBox ID="txtMedico" runat="server" Width="145px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        Día:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlDia" runat="server" Height="16px" Width="114px">
                        </asp:DropDownList>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="gvTurnos" runat="server" AutoGenerateColumns="False" Width="916px" AutoGenerateEditButton="True">
                <Columns>
                    <asp:BoundField HeaderText="Fecha" />
                    <asp:BoundField HeaderText="Horario" />
                    <asp:BoundField HeaderText="Especialidad" />
                    <asp:BoundField HeaderText="Médico" />
                    <asp:BoundField HeaderText="Nombre de Paciente" />
                    <asp:BoundField HeaderText="DNI de Paciente" />
                </Columns>
            </asp:GridView>
        </p>
    </form>
</body>
</html>
