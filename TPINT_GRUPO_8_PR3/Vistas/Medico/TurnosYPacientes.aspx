﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TurnosYPacientes.aspx.cs" Inherits="Vistas.MenuMedicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 43%;
            margin-left: 309px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
            height: 30px;
        }
        .auto-style4 {
            text-align: center;
            height: 23px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style8 {
            width: 606px;
        }
        .auto-style9 {
            width: 129px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="~ Médico"></asp:Label>
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/login.aspx">Volver</asp:HyperLink>
&nbsp;<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>MEDICOS</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblTurnos" runat="server" Text="Turnos"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <table class="auto-style6">
                            <tr>
                                <td class="auto-style9">Filtrar por Paciente:</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtPaciente" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" />
                                </td>
                            </tr>
                        </table>
&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="grvTurnos" runat="server" AutoGenerateColumns="False" Width="632px" OnSelectedIndexChanged="grvTurnos_SelectedIndexChanged">
                            <Columns>
                                <asp:TemplateField HeaderText="Turno"></asp:TemplateField>
                                <asp:TemplateField HeaderText="Paciente"></asp:TemplateField>
                                <asp:TemplateField HeaderText="Presentismo">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="ChkBoxPresente" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Presente" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
            </table>
        <div class="auto-style5">
            <asp:HyperLink ID="hlCerrarSesion" runat="server" NavigateUrl="~/login.aspx">Cerrar Sesion</asp:HyperLink>
        </div>
        </div>
    </form>
</body>
</html>
