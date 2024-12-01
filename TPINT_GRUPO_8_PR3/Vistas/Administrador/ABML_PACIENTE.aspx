<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABML_PACIENTE.aspx.cs" Inherits="Vistas.Administrador.ABML_PACIENTE" %>

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
            height: 23px;
        }
        .auto-style7 {
            width: 219px;
        }
        .auto-style8 {
            width: 417px;
        }
        .auto-style10 {
            width: 417px;
            height: 23px;
        }
        .auto-style11 {
            width: 219px;
            height: 23px;
        }
        .auto-style12 {
            width: 313px;
        }
        .auto-style13 {
            width: 313px;
            height: 23px;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style6 {
            font-size: medium;
            margin-left: 0px;
        }
        .auto-style14 {
            width: 313px;
            height: 43px;
        }
        .auto-style15 {
            width: 417px;
            height: 43px;
        }
        .auto-style16 {
            width: 219px;
            height: 43px;
        }
        .auto-style17 {
            height: 43px;
        }
        .auto-style19 {
            width: 206px;
        }
        .auto-style20 {
            width: 336px;
        }
        .auto-style21 {
            width: 313px;
            height: 28px;
        }
        .auto-style22 {
            width: 417px;
            height: 28px;
        }
        .auto-style23 {
            width: 219px;
            height: 28px;
        }
        .auto-style24 {
            height: 28px;
        }
        .auto-style26 {
            width: 206px;
            height: 23px;
        }
        .auto-style27 {
            width: 336px;
            height: 23px;
        }
        .auto-style29 {
            width: 206px;
            height: 33px;
        }
        .auto-style30 {
            width: 336px;
            height: 33px;
        }
        .auto-style31 {
            height: 33px;
        }
        .auto-style33 {
            width: 206px;
            height: 30px;
        }
        .auto-style34 {
            width: 336px;
            height: 30px;
        }
        .auto-style35 {
            height: 30px;
        }
        .auto-style36 {
            width: 207px;
        }
        .auto-style37 {
            width: 207px;
            height: 33px;
        }
        .auto-style38 {
            width: 207px;
            height: 30px;
        }
        .auto-style39 {
            width: 207px;
            height: 23px;
        }
        .auto-style40 {
            height: 26px;
        }
        .auto-style41 {
            width: 313px;
            height: 37px;
        }
        .auto-style42 {
            width: 417px;
            height: 37px;
        }
        .auto-style43 {
            width: 219px;
            height: 37px;
        }
        .auto-style44 {
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14">
                        <asp:LinkButton ID="lnkbtnCerrarSesion" runat="server" OnClick="lnkbtnCerrarSesion_Click">Cerrar Sesión</asp:LinkButton>
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="~ Administrador"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/menuAdministrador.aspx">Volver</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="5">
            <strong>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="AGREGAR PACIENTE"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATOS PERSONALES</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style8">DNI:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDni" runat="server" CssClass="auto-style3" Width="139px" TextMode="Number"></asp:TextBox>
                        </td>
                    <td class="auto-style7"><span class="auto-style3"><asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDni" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style8">Nombre:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style3" Width="135px"></asp:TextBox>
                        </td>
                    <td class="auto-style7">
                        <span class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">Apellido:</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="auto-style3" Width="132px"></asp:TextBox>
                        </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtApellido" CssClass="auto-style3" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style10">Sexo:</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="ddlSexo" runat="server" CssClass="auto-style3" Width="169px">
                            <asp:ListItem Value="0">Seleccione un sexo</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11">
                        <span class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="ddlSexo" ForeColor="Red" InitialValue="0" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style10">Fecha de Nacimiento:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="auto-style3" Width="130px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfvFechaNac" runat="server" ControlToValidate="txtFechaNacimiento" CssClass="auto-style3" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style41"></td>
                    <td class="auto-style42">Nacionalidad:</td>
                    <td class="auto-style42">
                        <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="auto-style6" Width="133px"></asp:TextBox>
                    </td>
                    <td class="auto-style43">
                        <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="txtNacionalidad" CssClass="auto-style3" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style44"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style8">Provincia:</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="True" CssClass="auto-style3" Height="29px" Width="219px" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7">
                        <span class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ForeColor="Red" InitialValue="0" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style8">Localidad:</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlLocalidad" runat="server" CssClass="auto-style3" Height="30px" Width="218px">
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" CssClass="auto-style3" ForeColor="Red" InitialValue="0" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style10">Direccion:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="auto-style3" Width="138px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" CssClass="auto-style3" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style8">Telefono:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="auto-style3" Width="136px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" CssClass="auto-style3" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style8">Correo:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="auto-style3" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" CssClass="auto-style3" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">
                        <br />
                        <asp:Button ID="btnAgregar" runat="server" CssClass="auto-style3" Height="30px" Text="Agregar Paciente" ValidationGroup="1" Width="200px" OnClick="btnAgregar_Click" />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="lblAgregado" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td colspan="4">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblModPac" runat="server" Text="MODIFICAR PACIENTE" Enabled="False"></asp:Label>
                        <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style36">
                        <asp:Label ID="Label6" runat="server" Text="Busqueda por DNI:"></asp:Label>
                    </td>
                <td class="auto-style19">
                        <asp:TextBox ID="txtBusquedaDni" runat="server" CssClass="auto-style10" Width="224px" TextMode="Number"></asp:TextBox>
                    </td>
                <td class="auto-style20">
                        &nbsp;</td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style37">
                    <asp:Label ID="lblBusqApel" runat="server" Text="Busqueda por Apellido:"></asp:Label>
                </td>
                <td class="auto-style29">
                        <asp:TextBox ID="txtBusqApellido" runat="server" CssClass="auto-style10" Width="224px"></asp:TextBox>
                    </td>
                <td class="auto-style30">
                        &nbsp;</td>
                <td class="auto-style31"></td>
            </tr>
            <tr>
                <td class="auto-style36">
                    <asp:Label ID="lblBusqNacionalidad" runat="server" Text="Busqueda por Nacionalidad:"></asp:Label>
                </td>
                <td class="auto-style19">
                        <asp:TextBox ID="txtBusqNacio" runat="server" CssClass="auto-style10" Width="224px"></asp:TextBox>
                    </td>
                <td class="auto-style20">
                        &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">
                    <asp:Label ID="lblBusqSexo" runat="server" Text="Busqueda por Sexo:"></asp:Label>
                </td>
                <td class="auto-style33">
                        <asp:DropDownList ID="ddlBusqSexo" runat="server" CssClass="auto-style3" Width="169px">
                            <asp:ListItem Value="mf">Seleccione un sexo</asp:ListItem>
                            <asp:ListItem Value="m">Masculino</asp:ListItem>
                            <asp:ListItem Value="f">Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                <td class="auto-style34">
                        &nbsp;</td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style39">
                    Busqueda por Año de Nacimieto:</td>
                <td class="auto-style26">
                        <asp:TextBox ID="txtFechaNacPac" runat="server" Width="219px"></asp:TextBox>
                    </td>
                <td class="auto-style27">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" Width="83px" OnClick="btnFiltrar_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnListarTodo" runat="server" Text="Listar Todos" Width="83px" OnClick="btnListarTodo_Click" />
                    </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="grdPacientes" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CssClass="auto-style6" OnRowCancelingEdit="grdPacientes_RowCancelingEdit" OnRowEditing="grdPacientes_RowEditing" AllowPaging="True" PageSize="5" OnPageIndexChanging="grdPacientes_PageIndexChanging" OnRowDeleting="grdPacientes_RowDeleting" OnRowDataBound="grdPacientes_RowDataBound" OnRowUpdating="grdPacientes_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Dni">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_Eit_Dni" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                                </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Dni" runat="server" Text='<%# Bind("Dni") %>'></asp:Label>
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
                        <asp:DropDownList ID="ddl_Eit_Sexo" runat="server" SelectedValue='<%# Bind("Sexo") %>'>
                            <asp:ListItem>--Seleccione un Sexo--</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
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
                    <asp:Label ID="lbl_It_FechaNacimiento" runat="server" Text='<%# Eval("FechaNacimiento", "{0:dd/MM/yyyy}") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Direccion">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Eit_Direccion" runat="server" Text='<%# Bind("Direccion") %>'></asp:TextBox>
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
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:LinkButton ID="lbtnSI" runat="server" OnClick="lbtnSI_Click" Visible="False">SI</asp:LinkButton>
&nbsp;&nbsp;
                    <asp:LinkButton ID="lbtnNo" runat="server" OnClick="lbtnNo_Click" Visible="False">NO</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="DAR ALTA PACIENTE" Enabled="False"></asp:Label>
                        </td>
            </tr>
            <tr>
                <td colspan="4" class="auto-style40">
                </td>
            </tr>
            <tr>
                <td colspan="4">
                        <asp:Label ID="lblAltaDNI" runat="server" Text="DNI:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtAltaBusquedaDni" runat="server" CssClass="auto-style10" Width="224px" TextMode="Number"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDarAlta" runat="server" OnClick="btnDarAlta_Click" Text="Dar Alta" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMsjAlta" runat="server"></asp:Label>
&nbsp;
                    <asp:LinkButton ID="lbtnAltaSI" runat="server" OnClick="lbtnAltaSI_Click" Visible="False">SI</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbtnAltaNO" runat="server" OnClick="lbtnAltaNO_Click" Visible="False">NO</asp:LinkButton>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
