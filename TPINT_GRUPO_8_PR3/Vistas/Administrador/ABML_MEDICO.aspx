﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABML_MEDICO.aspx.cs" Inherits="Vistas.Administrador.ABML_MEDICO" %>

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
                    <td class="auto-style67"></td>
                    <td class="auto-style67"></td>
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
                    <td colspan="8">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="AGREGAR MEDICO"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATOS PERSONAES</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
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
                    <td class="auto-style71"></td>
                    <td class="auto-style71">Lunes</td>
                    <td class="auto-style71">
            <strong>
                        <asp:DropDownList ID="ddlHorario1Lunes" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style72">Hasta:</td>
                    <td class="auto-style72">
            <strong>
                        <asp:DropDownList ID="ddlHorario2Lunes" runat="server" Width="145px">
                        </asp:DropDownList>
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
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">Martes</td>
                    <td class="auto-style69">
            <strong>
                        <asp:DropDownList ID="ddlHorario1Martes" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style70">Hasta</td>
                    <td class="auto-style70">
            <strong>
                        <asp:DropDownList ID="ddlHorario2Martes" runat="server" Width="145px">
                        </asp:DropDownList>
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
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">Miercoles</td>
                    <td class="auto-style69">
            <strong>
                        <asp:DropDownList ID="ddlHorario1Miercoles" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style70">Hasta</td>
                    <td class="auto-style70">
            <strong>
                        <asp:DropDownList ID="ddlHorario2Miercoles" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69">Apellido:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:TextBox ID="txtApellido" runat="server" Width="135px"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">Jueves</td>
                    <td class="auto-style69">
            <strong>
                        <asp:DropDownList ID="ddlHorario1Jueves" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style70">Hasta</td>
                    <td class="auto-style70">
            <strong>
                        <asp:DropDownList ID="ddlHorario2Jueves" runat="server" Width="145px">
                        </asp:DropDownList>
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
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">Viernes</td>
                    <td class="auto-style69">
            <strong>
                        <asp:DropDownList ID="ddlHorario1Viernes" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style70">Hasta</td>
                    <td class="auto-style70">
            <strong>
                        <asp:DropDownList ID="ddlHorario2Viernes" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69">Nacionalidad:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:TextBox ID="txtNacionalidad" runat="server" Width="133px" Height="16px"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">Sabado</td>
                    <td class="auto-style69">
            <strong>
                        <asp:DropDownList ID="ddlHorario1Sabado" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style70">Hasta</td>
                    <td class="auto-style70">
            <strong>
                        <asp:DropDownList ID="ddlHorario2Sabado" runat="server" Width="145px">
                        </asp:DropDownList>
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
                    <td class="auto-style28"></td>
                    <td class="auto-style28">Domingo</td>
                    <td class="auto-style28">
            <strong>
                        <asp:DropDownList ID="ddlHorario1Domingo" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style37">Hasta</td>
                    <td class="auto-style37">
            <strong>
                        <asp:DropDownList ID="ddlHorario2Domingo" runat="server" Width="145px">
                        </asp:DropDownList>
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
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
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
                    <td class="auto-style41"></td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style41"></td>
                    <td class="auto-style47"></td>
                    <td class="auto-style47"></td>
                </tr>
                <tr>
                    <td class="auto-style69">Localidad:</td>
                    <td class="auto-style69">
            <strong>
                        <asp:DropDownList ID="ddlLocalidad" runat="server" Height="30px" Width="145px">
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style69">
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" ErrorMessage="*" ForeColor="Red" ValidationGroup="Medico"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
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
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
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
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
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
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAlta" runat="server" Text="Dar de Alta" Width="106px" />
                    </td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
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
                    <asp:TextBox ID="TextBox9" runat="server" Width="187px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Buscar" />
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Listar Todos" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
            <strong><asp:GridView ID="grdMedicos" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CssClass="auto-style5" OnRowCancelingEdit="grdPacientes_RowCancelingEdit" OnRowEditing="grdPacientes_RowEditing" OnRowUpdated="grdPacientes_RowUpdated" OnRowUpdating="grdPacientes_RowUpdating" AutoGenerateSelectButton="True">
            <Columns>
                <asp:BoundField HeaderText="Legajo" />
                <asp:BoundField HeaderText="Especialidad" />
                <asp:TemplateField HeaderText="Dni">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Dni" runat="server" Text='<%# Bind("Dni_p") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Dni" runat="server" Text='<%# Bind("Dni_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nombre">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Nombre" runat="server" Text='<%# Bind("Nombre_p") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("nombre_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apellido">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Apellido" runat="server" Text='<%# Bind("Apellido_p") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_Apellido" runat="server" Text='<%# Bind("Apellido_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sexo">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Sexo" runat="server" Text='<%# Bind("Sexo_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Sexo" runat="server" Text='<%# Bind("Sexo_p") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nacionalidad">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Nacionalidad" runat="server" Text='<%# Bind("Nacionalidad_p") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Nacionalidad" runat="server" Text='<%# Bind("Nacionalidad_p") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha De Nacimiento">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_FechaDeNacimiento" runat="server" Text='<%# Bind("FechaDeNacimiento_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_FechaNacimiento" runat="server" Text='<%# Bind("FechaDeNacimiento_p") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Direccion">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Direccion" runat="server" Text='<%# Bind("dirección_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Direccion" runat="server" Text='<%# Bind("dirección_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Localidad">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddl_eit_Localidad" runat="server">
                            <asp:ListItem Value="1">Campana</asp:ListItem>
                            <asp:ListItem Value="2">pacheco</asp:ListItem>
                            <asp:ListItem Value="3">Retiro</asp:ListItem>
                            <asp:ListItem Value="4">San Isidro</asp:ListItem>
                            <asp:ListItem Value="5">Colon</asp:ListItem>
                            <asp:ListItem Value="6">Concordia</asp:ListItem>
                            <asp:ListItem Value="7">Gualeguay</asp:ListItem>
                            <asp:ListItem Value="8">gualeguachu</asp:ListItem>
                            <asp:ListItem Value="9">Arocena</asp:ListItem>
                            <asp:ListItem Value="10">Rafaela</asp:ListItem>
                            <asp:ListItem Value="11">Rosario</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Localidad" runat="server" Text='<%# Bind("nombreLocalidad") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Provincia">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddl_eit_Provincia" runat="server">
                            <asp:ListItem Value="1">Buenos Aires</asp:ListItem>
                            <asp:ListItem Value="2">Entre Rios</asp:ListItem>
                            <asp:ListItem Value="3">Santa Fe</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Provincia" runat="server" Text='<%# Bind("NombreProvincia_Pr") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Correo">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Correo" runat="server" Text='<%# Bind("Correo_p") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Correo" runat="server" Text='<%# Bind("Correo_p") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Telefono">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Telefono" runat="server" Text='<%# Bind("Telefono_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_It_Telefono" runat="server" Text='<%# Bind("Telefono_P") %>'></asp:Label>
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
                        <asp:DropDownList ID="ddlAgregarHorarioInicio" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style24">&nbsp;&nbsp;&nbsp; Hasta:</td>
                    <td class="auto-style79">
                        <asp:DropDownList ID="ddlAgregarHorarioFin" runat="server" Width="145px">
                        </asp:DropDownList>
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
