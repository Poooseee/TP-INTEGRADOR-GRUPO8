<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPaciente.aspx.cs" Inherits="Vistas.Administrador.ABML_Paciente.AltaPaciente" %>

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
            width: 221px;
        }
        .auto-style3 {
            width: 172px;
        }
        .auto-style4 {
            width: 221px;
            height: 23px;
        }
        .auto-style5 {
            width: 172px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 221px;
            height: 30px;
        }
        .auto-style8 {
            width: 172px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
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
                    <td class="auto-style3">
                        <asp:Label ID="lblAltaPac" runat="server" Font-Bold="True" Font-Size="Medium" Text="ALTA de Pacientes"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/ABML Paciente/SubMenuPaciente.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Nombre:</td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Apellido:</td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">DNI:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDNI" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Sexo:</td>
                    <td>
                        <asp:DropDownList ID="ddlSexo" runat="server">
                            <asp:ListItem Value="0">MASCULINO</asp:ListItem>
                            <asp:ListItem Value="1">FEMENINO</asp:ListItem>
                            <asp:ListItem Value="2">OTRO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Fecha de Nacimiento:</td>
                    <td>
                        <asp:TextBox ID="txtFechaNac" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Telefono:</td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Nacionalidad:</td>
                    <td>
                        <asp:DropDownList ID="ddlNacionalidad" runat="server">
                            <asp:ListItem Value="0">ARGENTINA</asp:ListItem>
                            <asp:ListItem Value="1">URUGUAYA</asp:ListItem>
                            <asp:ListItem Value="2">OTRA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Provincia:</td>
                    <td>
                        <asp:DropDownList ID="ddlProvincia" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Localidad:</td>
                    <td>
                        <asp:DropDownList ID="ddlLocalidad" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Direccion</td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
                    </td>
                    <td class="auto-style9"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
