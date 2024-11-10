<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informes.aspx.cs" Inherits="Vistas.Administrador.Informes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            width: 386px;
            height: 60px;
        }
        .auto-style6 {
            height: 60px;
        }
        .auto-style10 {
            height: 60px;
            width: 695px;
        }
        .auto-style11 {
            width: 386px;
            height: 92px;
        }
        .auto-style12 {
            height: 92px;
            width: 695px;
        }
        .auto-style13 {
            height: 92px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style11">
                        <asp:LinkButton ID="lnkbtnCerrarSesion" runat="server" OnClick="lnkbtnCerrarSesion_Click">Cerrar Sesión</asp:LinkButton>
                </td>
                <td class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INFORMES</strong></td>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblUsuario" runat="server" Font-Size="Medium"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="~ Administrador" Font-Size="Medium"></asp:Label>
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/menuAdministrador.aspx" Font-Size="Medium">Volver</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">PORCENTAJE DE TURNOS AUSENTES:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblAusentes" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">PORCENTAJE DE TURNOS PRESENTES:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblPresentes" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">PACIENTE CON MÁS TURNOS DEL MES:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblPacienteTurnos" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">MÉDICO MÁS SOLICITADO DEL MES:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblMedicoSolicitado" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">ESPECIALIDAD MÁS SOLICITADA DEL MES:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblEspecialidadSolicitada" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">PORCENTAJE PACIENTES MASCULINOS:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblPacienteMasc" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">PORCENTAJE PACIENTES FEMENINOS:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblPacienteFem" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">PROMEDIO DE EDAD DE PACIENTES:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblPromPacientes" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">PROMEDIO DE EDAD DE MÉDICOS:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblPromMedicos" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
