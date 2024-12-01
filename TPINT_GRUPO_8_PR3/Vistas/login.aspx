<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Vistas.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 45%;
            margin-left: 300px;
            margin-right: 122px;
        }
        .auto-style3 {
            font-size: x-large;
            text-align: center;
            height: 51px;
        }
        .auto-style8 {
            text-align: center;
            width: 299px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            height: 40px;
            width: 299px;
        }
        .auto-style6 {
            text-align: center;
            height: 40px;
        }
        .auto-style11 {
            text-align: center;
            height: 29px;
            width: 299px;
        }
        .auto-style12 {
            text-align: center;
            height: 29px;
        }
        .auto-style13 {
            text-align: center;
            height: 51px;
            width: 299px;
        }
        .auto-style14 {
            text-align: center;
            height: 51px;
        }
        .auto-style15 {
            width: 357px;
            margin-left: 320px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p aria-live="off" class="auto-style15" style="font-family: 'Times New Roman', Times, serif; font-size: 35px; text-decoration: blink">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login<br />
            </p>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3" colspan="2"><strong style="font-family: 'Times New Roman', Times, serif; font-size: 32px; text-decoration: underline;">Iniciar Sesion</strong></td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre de Usuario</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtUsuario" runat="server" Height="23px" Width="160px"></asp:TextBox>
                        &nbsp;</td>
                    <td class="auto-style6">
                        <asp:CustomValidator ID="cvUsuario" runat="server" ControlToValidate="txtUsuario" ForeColor="Red" OnServerValidate="cvInicioSesion_ServerValidate" ValidationGroup="logeo" ValidateEmptyText="True">Incorrecto</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contraseña</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtContraseña" runat="server" Height="24px" Width="161px" TextMode="Password"></asp:TextBox>
                    &nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" Width="58px" />
                    </td>
                    <td class="auto-style6">
                        <asp:CustomValidator ID="cvContrasena" runat="server" ControlToValidate="txtContraseña" ForeColor="Red" OnServerValidate="cvContrasena_ServerValidate" ValidationGroup="logeo" ValidateEmptyText="True">Incorrecta</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="cbRecordarme" runat="server" Text="Recordar inicio" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnIngresar" runat="server" Height="28px" OnClick="btnIngresar_Click" Text="Ingresar" ValidationGroup="logeo" Width="74px" />
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="lblCredencialesIncorrectas" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
