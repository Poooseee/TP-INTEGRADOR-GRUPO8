<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Vistas.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 30%;
            margin-left: 300px;
            margin-right: 0px;
        }
        .auto-style3 {
            font-size: x-large;
            text-align: center;
            height: 51px;
        }
        .auto-style8 {
            text-align: center;
            width: 238px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            height: 40px;
            width: 238px;
        }
        .auto-style6 {
            text-align: center;
            height: 40px;
        }
        .auto-style10 {
            margin-left: 400px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="auto-style10">
            LOGIN</p>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3" colspan="2"><strong>Iniciar Sesion</strong></td>
                </tr>
                <tr>
                    <td class="auto-style8">Nombre de Usuario</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtUsuario" runat="server" Height="23px" Width="160px"></asp:TextBox>
                        &nbsp;</td>
                    <td class="auto-style6">
                        <asp:CustomValidator ID="cvUsuario" runat="server" ControlToValidate="txtUsuario" ForeColor="Red" OnServerValidate="cvInicioSesion_ServerValidate" ValidationGroup="logeo"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Contraseña</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtContraseña" runat="server" Height="24px" Width="161px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:CustomValidator ID="cvContrasena" runat="server" ControlToValidate="txtContraseña" ForeColor="Red" OnServerValidate="cvContrasena_ServerValidate" ValidationGroup="logeo"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:CheckBox ID="cbRecordarme" runat="server" Text="Recordar inicio" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="btnIngresar" runat="server" Height="28px" OnClick="btnIngresar_Click" Text="Ingresar" ValidationGroup="logeo" Width="74px" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
