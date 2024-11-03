﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarPaciente.aspx.cs" Inherits="Vistas.Administrador.ABML_Paciente.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 190px;
        }
        .auto-style3 {
            height: 23px;
            width: 190px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text="~ Administrador"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/ABML Paciente/SubMenuPaciente.aspx">Volver</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style1">
                        <asp:Label ID="lblEliminar" runat="server" Text="Ingrese el DNI del paciente a eliminar:"></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtboxDNI" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
