<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABMLMedico.aspx.cs" Inherits="Vistas.Administrador.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style4 {
            text-align: center;
            font-size: x-large;
            margin-left: 134px;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style5 {
            font-size: medium;
            margin-left: 109px;
        }
        .auto-style6 {
            font-size: medium;
            height: 32px;
        }
        .auto-style7 {
            height: 32px;
        }
        .auto-style8 {
            font-size: medium;
            height: 41px;
        }
        .auto-style9 {
            height: 41px;
        }
        .auto-style10 {
            width: 112%;
            margin-left: 111px;
        }
        .auto-style11 {
            width: 157px;
        }
        .auto-style12 {
            width: 245px;
        }
        .auto-style13 {
            width: 443px;
        }
        .auto-style14 {
            margin-left: 36px;
        }
        .auto-style15 {
            width: 100%;
            margin-left: 111px;
        }
        .auto-style16 {
            margin-left: 120px;
        }
        .auto-style17 {
            width: 90%;
            margin-right: 121px;
        }
        .auto-style19 {
            width: 172px;
        }
        .auto-style22 {
            width: 93px;
        }
        .auto-style23 {
            width: 145px;
        }
        .auto-style24 {
            width: 77px;
        }
        .auto-style25 {
            width: 37px;
        }
        .auto-style26 {
            width: 135px;
        }
        .auto-style27 {
            width: 135px;
            height: 23px;
        }
        .auto-style28 {
            width: 172px;
            height: 23px;
        }
        .auto-style29 {
            width: 77px;
            height: 23px;
        }
        .auto-style30 {
            width: 145px;
            height: 23px;
        }
        .auto-style31 {
            width: 37px;
            height: 23px;
        }
        .auto-style32 {
            height: 23px;
        }
        .auto-style33 {
            width: 93px;
            height: 23px;
        }
        .auto-style34 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="auto-style1">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="~ Administrador"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/menuAdministrador.aspx">Volver</asp:HyperLink>
            <strong>&nbsp;&nbsp;</strong></div>
        <p class="auto-style2">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style34">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="AGREGAR MEDICO"></asp:Label>
                    </td>
                </tr>
            </table>
            
        <p class="auto-style2">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style3">ESPECIALIDAD:</td>
                    <td>
                        <asp:DropDownList ID="ddlEspecialidades" runat="server" Height="24px" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style3">LEGAJO:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="135px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">DNI: </td>
                    <td>
                        <asp:TextBox ID="txtDni_med" runat="server" CssClass="auto-style3" Width="139px"></asp:TextBox>
                        &nbsp;<span class="auto-style3"><asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDni" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">NOMBRE:</span></td>
                    <td>
                        <asp:TextBox ID="txtNombre_med" runat="server" CssClass="auto-style3" Width="135px"></asp:TextBox>
                        <span class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">APELLIDO:</span></td>
                    <td>
                        <asp:TextBox ID="txtApellido_med" runat="server" CssClass="auto-style3" Width="132px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" CssClass="auto-style3" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">SEXO:</td>
                    <td>
                        <asp:DropDownList ID="ddlSexo_med" runat="server" CssClass="auto-style3" Width="145px">
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">NACIONALIDAD:</td>
                    <td>
                        <asp:TextBox ID="txtNacionalidad_med" runat="server" CssClass="auto-style3" Width="133px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">FECHA DE NACIMIENTO:</td>
                    <td>
                        <asp:TextBox ID="txtFechaNacimiento_med" runat="server" CssClass="auto-style3" TextMode="Date" Width="130px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">DIRECCION:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDireccion_med" runat="server" CssClass="auto-style3" Width="138px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">PROVINCIA:</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlProvincia_med" runat="server" AutoPostBack="True" CssClass="auto-style3" Height="29px" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged" Width="172px">
                        </asp:DropDownList>
                        <span class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ForeColor="Red" InitialValue="0" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">LOCALIDAD:</span></td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlLocalidad_med" runat="server" CssClass="auto-style3" Height="30px" Width="154px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" CssClass="auto-style3" ForeColor="Red" InitialValue="0" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">TELEFONO:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtTelefono_med" runat="server" CssClass="auto-style3" Width="136px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">CORREO:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtCorreo_med" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        ATENCION</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">DÍA:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlDia1" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">HORARIO:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlHorario1_1" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        A</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlHorario1_2" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">DÍA:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlDia2" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">HORARIO:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlHorario2_1" runat="server" Width="145px" Height="16px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        A</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlHorario2_2" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">DÍA:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlDia3" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">HORARIO:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlHorario3_1" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        A</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlHorario3_2" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">DÍA:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlDia4" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">HORARIO:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlHorario4_1" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        A</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlHorario4_2" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">DÍA:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlDia5" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">HORARIO:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlHorario5_1" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        A</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlHorario5_2" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">DÍA:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlDia6" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">HORARIO:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlHorario6_1" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        A</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlHorario6_2" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">DÍA:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlDia7" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">HORARIO:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlHorario7_1" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        A</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlHorario7_2" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="btnAgregar" runat="server" CssClass="auto-style3" Height="37px" Text="Agregar" ValidationGroup="1" Width="82px" />
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>
        </p>
        <div>

            <p class="auto-style2">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Modificar Médico </strong>
            </p>

        </div>
        <div>

            <table class="auto-style10">
                <tr>
                    <td class="auto-style11">&nbsp;<asp:Label ID="Label3" runat="server" Text="Busqueda por Legajo:"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtBusquedaLegajo" runat="server" Width="202px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Text="Buscar" Width="90px" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Buscar Todos" Width="90px" />
                    </td>
                </tr>
            </table>

        </div>
        Z<asp:GridView ID="grdMedicos" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CssClass="auto-style5" OnRowCancelingEdit="grdPacientes_RowCancelingEdit" OnRowEditing="grdPacientes_RowEditing" OnRowUpdated="grdPacientes_RowUpdated" OnRowUpdating="grdPacientes_RowUpdating" AutoGenerateSelectButton="True">
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
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;
        <p class="auto-style16">
            <table class="auto-style17">
                <tr>
                    <td class="auto-style27">Agregar Horarios</td>
                    <td class="auto-style28"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style30"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style26">DIA:</td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="ddlAgregarDia" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style24">HORARIO:</td>
                    <td class="auto-style23">
                        <asp:DropDownList ID="ddlAgregarHorarioInicio" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style25">&nbsp;&nbsp;&nbsp; A</td>
                    <td>
                        <asp:DropDownList ID="ddlAgregarHorarioFin" runat="server" Width="145px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="btnAgregarDia" runat="server" Text="Agregar" />
                    </td>
                </tr>
            </table>
        <br />
        </p>
    </form>
</body>
</html>
