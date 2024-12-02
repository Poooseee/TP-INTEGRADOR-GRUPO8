<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABML_MEDICO.aspx.cs" Inherits="Vistas.Administrador.ABML_MEDICO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1336px;
        }
        .auto-style28 {
            height: 13px;
            width: 110px;
        }
        .auto-style37 {
            width: 111px;
            height: 13px;
        }
        .auto-style41 {
            width: 110px;
            height: 26px;
        }
        .auto-style47 {
            width: 111px;
            height: 26px;
        }
        .auto-style53 {
            height: 23px;
        }
        .auto-style67 {
            height: 23px;
            width: 110px;
        }
        .auto-style68 {
            width: 111px;
            height: 23px;
        }
        .auto-style69 {
            width: 110px;
        }
        .auto-style70 {
            width: 111px;
        }
        .auto-style71 {
            height: 24px;
            width: 110px;
        }
        .auto-style72 {
            width: 111px;
            height: 24px;
        }
        .auto-style73 {
            width: 100%;
        }
        .auto-style74 {
            width: 134px;
        }
        .auto-style75 {
            width: 310px;
        }
        .auto-style5 {
            font-size: medium;
            margin-left: 0px;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style17 {
            width: 99%;
            margin-right: 121px;
        }
        .auto-style29 {
            width: 77px;
            height: 23px;
        }
        .auto-style30 {
            width: 145px;
            height: 23px;
        }
        .auto-style32 {
            height: 23px;
            width: 149px;
        }
        .auto-style19 {
            width: 172px;
        }
        .auto-style24 {
            width: 77px;
        }
        .auto-style23 {
            width: 149px;
        }
        .auto-style77 {
            height: 23px;
            width: 91px;
        }
        .auto-style78 {
            width: 91px;
        }
        .auto-style79 {
            width: 148px;
        }
        .auto-style81 {
            height: 80px;
        }
        .auto-style82 {
            height: 22px;
            width: 110px;
        }
        .auto-style83 {
            width: 111px;
            height: 22px;
        }
        .auto-style84 {
            height: 24px;
            width: 59px;
        }
        .auto-style86 {
            width: 59px;
            height: 26px;
        }
        .auto-style87 {
            height: 22px;
            width: 59px;
        }
        .auto-style88 {
            height: 13px;
            width: 59px;
        }
        .auto-style89 {
            width: 59px;
        }
        .auto-style91 {
            height: 24px;
            width: 35px;
        }
        .auto-style93 {
            width: 35px;
            height: 26px;
        }
        .auto-style94 {
            height: 22px;
            width: 35px;
        }
        .auto-style95 {
            height: 13px;
            width: 35px;
        }
        .auto-style96 {
            width: 35px;
            height: 23px;
        }
        .auto-style97 {
            width: 35px;
        }
        .auto-style100 {
            height: 24px;
            width: 33px;
        }
        .auto-style101 {
            width: 33px;
            height: 26px;
        }
        .auto-style102 {
            height: 22px;
            width: 33px;
        }
        .auto-style103 {
            height: 13px;
            width: 33px;
        }
        .auto-style104 {
            width: 33px;
            height: 23px;
        }
        .auto-style105 {
            width: 33px;
        }
        .auto-style106 {
            height: 61px;
        }
        .auto-style107 {
            width: 154px;
            height: 24px;
        }
        .auto-style109 {
            width: 154px;
            height: 26px;
        }
        .auto-style110 {
            width: 154px;
            height: 22px;
        }
        .auto-style111 {
            width: 154px;
            height: 13px;
        }
        .auto-style112 {
            width: 154px;
        }
        .auto-style114 {
            margin-left: 0px;
        }
        .auto-style115 {
            height: 23px;
            width: 181px;
        }
        .auto-style116 {
            width: 181px;
        }
        .auto-style117 {
            width: 168px;
            height: 13px;
        }
        .auto-style118 {
            width: 168px;
        }
        .auto-style119 {
            width: 604px;
        }
        .auto-style120 {
            height: 31px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style67">
                        <asp:LinkButton ID="lnkbtnCerrarSesion" runat="server" OnClick="lnkbtnCerrarSesion_Click">Cerrar Sesión</asp:LinkButton>
                    </td>
                    <td class="auto-style67"></td>
                    <td class="auto-style67"></td>
                    <td class="auto-style104"></td>
                    <td class="auto-style96"></td>
                    <td class="auto-style53" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="~ Administrador"></asp:Label>
                    </td>
                    <td class="auto-style68">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/menuAdministrador.aspx">Volver</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td colspan="8" class="auto-style106">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="lblTitulo" runat="server" Text="AGREGAR MEDICO"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATOS PERSONAES</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style105">&nbsp;</td>
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HORARIOS</td>
                </tr>
                <tr>
                    <td class="auto-style71">&nbsp;</td>
                    <td class="auto-style71">
                        &nbsp;</td>
                    <td class="auto-style71">
                        &nbsp;</td>
                    <td class="auto-style100"></td>
                    <td class="auto-style91">Lunes</td>
                    <td class="auto-style107">
                        <asp:TextBox ID="txtHorarioLunes_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style84">Hasta:</td>
                    <td class="auto-style72">
                        <asp:TextBox ID="txtHorarioLunes_2" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:CompareValidator ID="cmpvLunes" runat="server" ControlToCompare="txtHorarioLunes_2" ControlToValidate="txtHorarioLunes_1" ForeColor="Red" Operator="NotEqual" ValidationGroup="Medico">Iguales</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69">DNI:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:TextBox ID="txtDNI" runat="server" Width="135px" TextMode="Number" MaxLength="8"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style105">&nbsp;</td>
                    <td class="auto-style97">Martes</td>
                    <td class="auto-style112">
                        <asp:TextBox ID="txtHorarioMartes_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style89">Hasta</td>
                    <td class="auto-style70">
                        <asp:TextBox ID="txtHorarioMartes_2" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:CompareValidator ID="cmpvMartes" runat="server" ControlToCompare="txtHorarioMartes_2" ControlToValidate="txtHorarioMartes_1" ForeColor="Red" Operator="NotEqual" ValidationGroup="Medico">Iguales</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69">Nombre:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:TextBox ID="txtNombre" runat="server" Width="135px"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style105">&nbsp;</td>
                    <td class="auto-style97">Miercoles</td>
                    <td class="auto-style112">
                        <asp:TextBox ID="txtHorarioMiercoles_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style89">Hasta</td>
                    <td class="auto-style70">
                        <asp:TextBox ID="txtHorarioMiercoles_2" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:CompareValidator ID="cmpvMiercoles" runat="server" ControlToCompare="txtHorarioMiercoles_2" ControlToValidate="txtHorarioMiercoles_1" ForeColor="Red" Operator="NotEqual" ValidationGroup="Medico">Iguales</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">Apellido:</td>
                    <td class="auto-style41">
            <strong>
                        <asp:TextBox ID="txtApellido" runat="server" Width="135px"></asp:TextBox>
                    </td>
                    <td class="auto-style41">
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style101"></td>
                    <td class="auto-style93">Jueves</td>
                    <td class="auto-style109">
                        <asp:TextBox ID="txtHorarioJueves_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style86">Hasta</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="txtHorarioJueves_2" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:CompareValidator ID="cmpvJueves" runat="server" ControlToCompare="txtHorarioJueves_2" ControlToValidate="txtHorarioJueves_1" ForeColor="Red" Operator="NotEqual" ValidationGroup="Medico">Iguales</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69">Sexo:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:DropDownList ID="ddlSexo" runat="server" Width="142px" Height="18px">
                            <asp:ListItem Value="0">Seleccione un sexo</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="ddlSexo" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style105">&nbsp;</td>
                    <td class="auto-style97">Viernes</td>
                    <td class="auto-style112">
                        <asp:TextBox ID="txtHorarioViernes_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style89">Hasta</td>
                    <td class="auto-style70">
                        <asp:TextBox ID="txtHorarioViernes_2" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:CompareValidator ID="cmpvViernes" runat="server" ControlToCompare="txtHorarioViernes_2" ControlToValidate="txtHorarioViernes_1" ForeColor="Red" Operator="NotEqual" ValidationGroup="Medico">Iguales</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style82">Nacionalidad:</td>
                    <td class="auto-style82">
                        <asp:TextBox ID="txtNacionalidad" runat="server" Width="135px"></asp:TextBox>
                    </td>
                    <td class="auto-style82">
                        <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style102"></td>
                    <td class="auto-style94">Sabado</td>
                    <td class="auto-style110">
                        <asp:TextBox ID="txtHorarioSabado_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style87">Hasta</td>
                    <td class="auto-style83">
                        <asp:TextBox ID="txtHorarioSabado_2" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:CompareValidator ID="cmpvSabado" runat="server" ControlToCompare="txtHorarioSabado_2" ControlToValidate="txtHorarioSabado_1" ForeColor="Red" Operator="NotEqual" ValidationGroup="Medico">Iguales</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">Fecha de Nacimiento:</td>
                    <td class="auto-style28">
            <strong>
                        <asp:TextBox ID="txtFechaNac" runat="server" Width="135px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style28">
                        <asp:RequiredFieldValidator ID="rfvFechaNac" runat="server" ControlToValidate="txtFechaNac" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style103"></td>
                    <td class="auto-style95">Domingo</td>
                    <td class="auto-style111">
                        <asp:TextBox ID="txtHorarioDomingo_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style88">Hasta</td>
                    <td class="auto-style37">
                        <asp:TextBox ID="txtHorarioDomingo_2" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:CompareValidator ID="cmpvDomingo" runat="server" ControlToCompare="txtHorarioDomingo_2" ControlToValidate="txtHorarioDomingo_1" ForeColor="Red" Operator="NotEqual" ValidationGroup="Medico">Iguales</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69">Direccion:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:TextBox ID="txtDireccion" runat="server" Width="133px"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style105">&nbsp;</td>
                    <td class="auto-style97">&nbsp;</td>
                    <td class="auto-style112">&nbsp;</td>
                    <td class="auto-style89">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style41">Provincia:</td>
                    <td class="auto-style41">
            <strong>
                        <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="True" Height="26px" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged" Width="143px">
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style41">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style101"></td>
                    <td class="auto-style93">&nbsp;</td>
                    <td class="auto-style109">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USUARIO</td>
                    <td class="auto-style86"></td>
                    <td class="auto-style47"></td>
                </tr>
                <tr>
                    <td class="auto-style41">Localidad:</td>
                    <td class="auto-style41">
            <strong>
                        <asp:DropDownList ID="ddlLocalidad" runat="server" Height="30px" Width="145px" AutoPostBack="True">
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style41">
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style101"></td>
                    <td class="auto-style93">Usuario:</td>
                    <td class="auto-style109">
            <strong>
                        <asp:TextBox ID="txtUsuario" runat="server" Width="135px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style86"></td>
                    <td class="auto-style47"></td>
                </tr>
                <tr>
                    <td class="auto-style69">Telefono:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:TextBox ID="txtTelefono" runat="server" Width="135px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style105">&nbsp;</td>
                    <td class="auto-style97">Contraseña:</td>
                    <td class="auto-style112">
            <strong>
                        <asp:TextBox ID="txtPass" runat="server" Width="135px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtPass" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style89">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style69">Correo:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:TextBox ID="txtCorreo" runat="server" Width="135px" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style105">&nbsp;</td>
                    <td class="auto-style97">Repetir Contraseña:</td>
                    <td class="auto-style112">
            <strong>
                        <asp:TextBox ID="txtPass2" runat="server" Width="135px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPass2" runat="server" ControlToValidate="txtPass2" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style89">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style69">Especialidad:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:DropDownList ID="ddlEspecialidades" runat="server" Height="24px" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvEspecialidad" runat="server" ControlToValidate="ddlEspecialidades" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style105">&nbsp;</td>
                    <td class="auto-style97">&nbsp;</td>
                    <td class="auto-style112">
            <strong>
                        <asp:CompareValidator ID="cvPass" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPass2" ErrorMessage="Las contraseñas deben ser iguales." ForeColor="Red" ValidationGroup="Medico"></asp:CompareValidator>
                    </td>
                    <td class="auto-style89">
                        &nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAlta" runat="server" Text="Dar de Alta" Width="106px" OnClick="btnAlta_Click" ValidationGroup="Medico" />
                    </td>
                </tr>
                <tr>
                    <td colspan="8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblAgregado" runat="server" ForeColor="Green"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <table class="auto-style73">
            <tr>
                <td colspan="3" class="auto-style81">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="MODIFICAR MEDICO"></asp:Label>
                    <br />
                    </strong>
                    <br />
                </td>
            </tr>
            <tr>
                <td aria-expanded="false" class="auto-style74">Busqueda por Legajo: </td>
                <td class="auto-style75">
                    <asp:TextBox ID="txtBuscarLegajo" runat="server" Width="187px" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnListarTodos" runat="server" Text="Listar Todos" OnClick="btnListarTodos_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
            <strong>
                <asp:GridView ID="grdMedicos" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CssClass="auto-style5" OnRowCancelingEdit="grdMedicos_RowCancelingEdit" OnRowEditing="grdMedicos_RowEditing" OnRowUpdating="grdMedicos_RowUpdating" AutoGenerateSelectButton="True" OnRowDeleting="grdMedicos_RowDeleting" AllowPaging="True" PageSize="5" OnPageIndexChanging="grdMedicos_PageIndexChanging" OnSelectedIndexChanging="grdMedicos_SelectedIndexChanging" OnRowDataBound="grdMedicos_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="Legajo">
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_legajo" runat="server" Text='<%# Bind("Legajo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Especialidad">
                   <EditItemTemplate>
                       <asp:DropDownList ID="ddl_eit_Especialidad" runat="server"></asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_Especialidad" runat="server" Text='<%# Bind("Especialidad") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dni">
                    <%--<EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Dni" runat="server" Text='<%# Bind("DNI") %>'></asp:TextBox>
                    </EditItemTemplate>--%>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Dni" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nombre">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apellido">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sexo">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddl_eit_Sexo" runat="server">
                            <asp:ListItem Text="Masculino" Value="Masculino"></asp:ListItem>
                            <asp:ListItem Text="Femenino" Value="Femenino"></asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Sexo" runat="server" Text='<%# Bind("Sexo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nacionalidad">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Nacionalidad" runat="server" Text='<%# Bind("Nacionalidad") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Nacionalidad" runat="server" Text='<%# Bind("Nacionalidad") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha De Nacimiento">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_FechaDeNacimiento" runat="server" Text='<%# Bind("FechaNacimiento") %>' TextMode="Date"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                    <asp:Label ID="lbl_It_FechaNacimiento" runat="server" Text='<%# Eval("FechaNacimiento" , "{0:MM/dd/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Direccion">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Direccion" runat="server" Text='<%# Bind("direccion") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Direccion" runat="server" Text='<%# Bind("Direccion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Localidad">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddl_eit_Localidad" runat="server">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Localidad" runat="server" Text='<%# Bind("Localidad") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Provincia">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddl_eit_Provincia" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_eit_Provincia_SelectedIndexChanged">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Provincia" runat="server" Text='<%# Bind("Provincia") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Correo">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Correo" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Correo" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Telefono">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Telefono" runat="server" Text='<%# Bind("Telefono") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_Telefono" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
                </td>
            </tr>
        </table>
        <table class="auto-style73">
            <tr>
                <td class="auto-style120">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="lbtnSi" runat="server" OnClick="lbtnSi_Click" Visible="False">SI</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbtnNo" runat="server" OnClick="lbtnNo_Click" Visible="False">NO</asp:LinkButton>
                    <strong>
                    <br />
        <table class="auto-style15">
            <tr>
                <td class="auto-style119">Modificacion de Horarios</td>
            </tr>
            <tr>
                <td class="auto-style119">
                    <asp:Label ID="lblLegajoMedicoHorarios" runat="server">--SELECCIONE UN MEDICO--</asp:Label>
                    <asp:Label ID="lblLegajoMedicoHorarioN" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
    <td class="auto-style119">
        <asp:GridView ID="grdHorarios" runat="server" AutoGenerateColumns="False" Width="530px" OnRowCancelingEdit="grdHorarios_RowCancelingEdit" OnRowEditing="grdHorarios_RowEditing" AutoGenerateEditButton="True" OnRowUpdating="grdHorarios_RowUpdating" AutoGenerateDeleteButton="True" OnRowDeleting="grdHorarios_RowDeleting">
            <Columns>
                <asp:TemplateField HeaderText="Dia">
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_DiaAtencion" runat="server" Text='<%# Bind("diaAtencion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Horario de Inicio">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_HoraInicio" runat="server" CssClass="auto-style113" TextMode="Time"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_HoraIngreso" runat="server" Text='<%# Bind("HoraIngreso") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Horario de Fin">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_HoraEgreso" runat="server" TextMode="Time"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_HoraEgreso" runat="server" Text='<%# Bind("HoraEgreso") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
          </td>
                <td>
                    <asp:Label ID="lblMensajeHorario" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbtnSiHorario" runat="server" OnClick="lbtnSiHorario_Click1" Visible="False">SI</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbtnNoHorario" runat="server" OnClick="lbtnNoHorario_Click1" Visible="False">NO</asp:LinkButton>
                    </td>
</tr>
            <tr>
                <td class="auto-style119">&nbsp;</td>
            </tr>
        </table>
                </td>
            </tr>
        </table>
        <table class="auto-style73">
            <tr>
                <td>
            <strong>
            <table class="auto-style17">
                <tr>
                    <td class="auto-style115">Agregar Horarios</td>
                    <td class="auto-style117"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style30"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style77"></td>
                </tr>
                <tr>
                    <td class="auto-style116">Legajo:</td>
                    <td class="auto-style118">
                        <asp:TextBox ID="txtLegajoHorario" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="rfvHorarioLegajo" runat="server" BackColor="White" BorderColor="White" ControlToValidate="txtLegajoHorario" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="groupHorario">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style70">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DIA:</td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="ddlAgregarDia" runat="server" Width="145px" CssClass="auto-style114">
                            <asp:ListItem>Lunes</asp:ListItem>
                            <asp:ListItem>Martes</asp:ListItem>
                            <asp:ListItem>Miercoles</asp:ListItem>
                            <asp:ListItem>Jueves</asp:ListItem>
                            <asp:ListItem>Viernes</asp:ListItem>
                            <asp:ListItem>Sabado</asp:ListItem>
                            <asp:ListItem>Domingo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style24">Desde:</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtHorarioInicio" runat="server" TextMode="Time"></asp:TextBox>
            <strong>
                        <asp:RequiredFieldValidator ID="rfvInicioAgregar" runat="server" BackColor="White" BorderColor="White" ControlToValidate="txtHorarioInicio" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="groupHorario">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">&nbsp;&nbsp;&nbsp; Hasta:</td>
                    <td class="auto-style79">
                        <asp:TextBox ID="txtHorarioFin" runat="server" TextMode="Time"></asp:TextBox>
            <strong>
                        <asp:RequiredFieldValidator ID="rfvFinAgregar" runat="server" BackColor="White" BorderColor="White" ControlToValidate="txtHorarioFin" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="groupHorario">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style78">
                        <asp:Button ID="btnAgregarDia" runat="server" Text="Agregar" OnClick="btnAgregarDia_Click" ValidationGroup="groupHorario" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style116">&nbsp;</td>
                    <td class="auto-style118">
                        &nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:Label ID="lblHorarioAgregado" runat="server" ForeColor="Green"></asp:Label>
                    </td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style23">
                        &nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style79">
                        &nbsp;</td>
                    <td class="auto-style78">
                        &nbsp;</td>
                </tr>
            </table>
                </td>
            </tr>
        </table>
    <script src="../Scripts/JavaScript.js"></script>
        <table class="auto-style73">
            <tr>
                <td><strong>
                    <asp:Label ID="lblAltaMedico" runat="server" Enabled="False" Text="DAR ALTA MEDICO"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAltaLegajo" runat="server" Text="LEGAJO:"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txtAltaLegajo" runat="server" CssClass="auto-style10" TextMode="Number" Width="224px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDarAlta" runat="server" OnClick="btnDarAlta_Click" Text="Dar Alta" />
                    &nbsp;&nbsp;
                    <asp:Label ID="lblMsjAlta" runat="server"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="lbtnAltaSi" runat="server" OnClick="lbtnAltaSI_Click" Visible="False">SI</asp:LinkButton>
                    &nbsp;
                    <asp:LinkButton ID="lbtnAltaNo" runat="server" OnClick="lbtnAltaNO_Click" Visible="False">NO</asp:LinkButton>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
