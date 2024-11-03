<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubMenuPaciente.aspx.cs" Inherits="Vistas.Administrador.ABML_Paciente.Paciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 340px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text="~ Administrador"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSubmenuPac" runat="server" Font-Bold="True" Font-Size="Medium" Text="SubMenú de Pacientes"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/ABML Paciente/SubMenuPaciente.aspx">Volver</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnAltaPaciente" runat="server" Text="Alta de Paciente" Width="120px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnBajaPaciente" runat="server" Text="Baja de Paciente" Width="120px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnModPaciente" runat="server" Text="Modificar Paciente" Width="120px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnListarPaciente" runat="server" Text="Listar Pacientes" Width="120px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
