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
            width: 148px;
        }
        .auto-style19 {
            width: 172px;
        }
        .auto-style24 {
            width: 77px;
        }
        .auto-style23 {
            width: 145px;
        }
        .auto-style76 {
            width: 275px;
            height: 23px;
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
        .auto-style80 {
            width: 275px;
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
            width: 31px;
        }
        .auto-style86 {
            width: 31px;
            height: 26px;
        }
        .auto-style87 {
            height: 22px;
            width: 31px;
        }
        .auto-style88 {
            height: 13px;
            width: 31px;
        }
        .auto-style89 {
            width: 31px;
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
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style67"></td>
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
                        <asp:Label ID="Label4" runat="server" Text="AGREGAR MEDICO"></asp:Label>
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
                    <td class="auto-style71">Legajo:</td>
                    <td class="auto-style71">
            <strong>
                        <asp:TextBox ID="txtLegajo" runat="server" Width="135px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style71">
                        <asp:RequiredFieldValidator ID="rfvLegajo" runat="server" ControlToValidate="txtLegajo" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style100"></td>
                    <td class="auto-style91">Lunes</td>
                    <td class="auto-style107">
                        <asp:TextBox ID="txtHorario1_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style84">Hasta:</td>
                    <td class="auto-style72">
                        <asp:TextBox ID="txtHorario1_2" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69">DNI:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:TextBox ID="txtDNI" runat="server" Width="135px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style105">&nbsp;</td>
                    <td class="auto-style97">Martes</td>
                    <td class="auto-style112">
                        <asp:TextBox ID="txtHorario2_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style89">Hasta</td>
                    <td class="auto-style70">
                        <asp:TextBox ID="txtHorario2_2" runat="server" TextMode="Time"></asp:TextBox>
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
                        <asp:TextBox ID="txtHorario3_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style89">Hasta</td>
                    <td class="auto-style70">
                        <asp:TextBox ID="txtHorario3_2" runat="server" TextMode="Time"></asp:TextBox>
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
                        <asp:TextBox ID="txtHorario4_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style86">Hasta</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="txtHorario4_2" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69">Sexo:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:DropDownList ID="ddlSexo" runat="server" Width="142px" Height="18px">
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style105">&nbsp;</td>
                    <td class="auto-style97">Viernes</td>
                    <td class="auto-style112">
                        <asp:TextBox ID="txtHorario5_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style89">Hasta</td>
                    <td class="auto-style70">
                        <asp:TextBox ID="txtHorario5_2" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style82">Nacionalidad:</td>
                    <td class="auto-style82">
            <strong>
                        <asp:TextBox ID="txtNacionalidad" runat="server" Width="133px" Height="16px"></asp:TextBox>
                    </td>
                    <td class="auto-style82">
                        <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style102"></td>
                    <td class="auto-style94">Sabado</td>
                    <td class="auto-style110">
                        <asp:TextBox ID="txtHorario6_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style87">Hasta</td>
                    <td class="auto-style83">
                        <asp:TextBox ID="txtHorario6_2" runat="server" TextMode="Time"></asp:TextBox>
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
                        <asp:TextBox ID="txtHorario7_1" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style88">Hasta</td>
                    <td class="auto-style37">
                        <asp:TextBox ID="txtHorario7_2" runat="server" TextMode="Time"></asp:TextBox>
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
                            <asp:ListItem></asp:ListItem>
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
                        <asp:DropDownList ID="ddlLocalidad" runat="server" Height="30px" Width="145px">
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
                        <asp:CompareValidator ID="cvPass" runat="server" ControlToCompare="txtPass2" ControlToValidate="txtPass" ErrorMessage="Las contraseñas deben ser iguales." ForeColor="Red" ValidationGroup="medico"></asp:CompareValidator>
                    </td>
                    <td class="auto-style89">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="btnAlta" runat="server" Text="Dar de Alta" Width="106px" />
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
                    <asp:TextBox ID="TextBox9" runat="server" Width="187px" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Buscar" />
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Listar Todos" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
            <strong><asp:GridView ID="grdMedicos" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CssClass="auto-style5" OnRowCancelingEdit="grdMedicos_RowCancelingEdit" OnRowEditing="grdMedicos_RowEditing" OnRowUpdated="grdMedicos_RowUpdated" OnRowUpdating="grdMedicos_RowUpdating" AutoGenerateSelectButton="True">
            <Columns>
                <asp:TemplateField HeaderText="Legajo">
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_legajo" runat="server" Text='<%# Bind("Legajo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Especialidad">
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_Especialidad" runat="server" Text='<%# Bind("Especialidad") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dni">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Dni" runat="server" Text='<%# Bind("DNI") %>'></asp:TextBox>
                    </EditItemTemplate>
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
                        <asp:TextBox ID="txt_Eit_Sexo" runat="server" Text='<%# Bind("Sexo") %>'></asp:TextBox>
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
                        <asp:TextBox ID="txt_Eit_FechaDeNacimiento" runat="server" Text='<%# Bind("FechaNacimiento") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_FechaNacimiento" runat="server" Text='<%# Bind("FechaNacimiento") %>'></asp:Label>
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
                        <asp:DropDownList ID="ddl_eit_Provincia" runat="server">
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
                <td><strong>
                    <br />
        <table class="auto-style15">
            <tr>
                <td>Modificacion de Horarios</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grdHorarios" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" Width="530px">
                        <Columns>
                            <asp:BoundField HeaderText="Dia" />
                            <asp:BoundField HeaderText="Horario de Inicio" />
                            <asp:BoundField HeaderText="Horario de Fin" />
                        </Columns>
                    </asp:GridView>
                    <br />
                </td>
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
                    <td class="auto-style76">Agregar Horarios</td>
                    <td class="auto-style28"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style30"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style77"></td>
                </tr>
                <tr>
                    <td class="auto-style80">DIA:</td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="ddlAgregarDia" runat="server" Width="145px">
                            <asp:ListItem>LUNES</asp:ListItem>
                            <asp:ListItem>MARTES</asp:ListItem>
                            <asp:ListItem>MIERCOLES</asp:ListItem>
                            <asp:ListItem>JUEVES</asp:ListItem>
                            <asp:ListItem>VIERNES</asp:ListItem>
                            <asp:ListItem>SABADO</asp:ListItem>
                            <asp:ListItem>DOMINGO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style24">Desde:</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtHorarioInicio" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style24">&nbsp;&nbsp;&nbsp; Hasta:</td>
                    <td class="auto-style79">
                        <asp:TextBox ID="txtHorarioFin" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td class="auto-style78">
                        <asp:Button ID="btnAgregarDia" runat="server" Text="Agregar" />
                    </td>
                </tr>
            </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
