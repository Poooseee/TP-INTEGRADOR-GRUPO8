<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuMedicos.aspx.cs" Inherits="Vistas.MenuMedicos" %>

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
        }
        .auto-style4 {
            text-align: center;
            height: 23px;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
&nbsp;&nbsp;
            <asp:Label ID="lblUsuario" runat="server"></asp:Label>
&nbsp;<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>MEDICOS</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hlTurnosyPacientes" runat="server">Turnos y Pacientes</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlCambiarContraseña" runat="server">Cambiar Contraseña</asp:HyperLink>
                    </td>
                </tr>
            </table>
        <div class="auto-style5">
            <asp:HyperLink ID="hlCerrarSesion" runat="server" NavigateUrl="~/login.aspx">Cerrar Sesion</asp:HyperLink>
        </div>
        </div>
    </form>
</body>
</html>
