<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABMLPaciente.aspx.cs" Inherits="Vistas.Administrador.ABML_Paciente" %>

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
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            text-align: center;
            font-size: x-large;
            margin-left: 134px;
        }
        .auto-style5 {
            font-size: medium;
            margin-left: 109px;
        }
        .auto-style6 {
            font-size: medium;
            margin-left: 0px;
        }
        .auto-style7 {
            width: 103%;
            margin-left: 111px;
        }
        .auto-style9 {
            width: 117px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style11 {
            width: 128px;
        }
        .auto-style12 {
            width: 209px;
        }
        .auto-style13 {
            width: 22px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="~ Administrador"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/Administrador/menuAdministrador.aspx">Volver</asp:HyperLink>
            <strong>&nbsp;&nbsp;</strong></div>
        <p class="auto-style2">
            <strong>Agregar Paciente</strong></p>
        <p class="auto-style2">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style3">DNI: </td>
                    <td>
                        <asp:TextBox ID="txtDni" runat="server" CssClass="auto-style3" Width="139px"></asp:TextBox>
                        &nbsp;<span class="auto-style3"><asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDni" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">NOMBRE:</span></td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style3" Width="135px"></asp:TextBox>
                        <span class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">APELLIDO:</span></td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="auto-style3" Width="132px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtApellido" CssClass="auto-style3" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">SEXO:</td>
                    <td>
                        <asp:DropDownList ID="ddlSexo" runat="server" CssClass="auto-style3" Width="145px">
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">NACIONALIDAD:</td>
                    <td>
                        <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="auto-style6" Width="133px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">FECHA DE NACIMIENTO:</td>
                    <td>
                        <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="auto-style3" TextMode="Date" Width="130px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">DIRECCION:</td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="auto-style3" Width="138px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">PROVINCIA:</td>
                    <td>
                        <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="True" CssClass="auto-style3" Height="29px" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged" Width="172px">
                        </asp:DropDownList>
                        <span class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ForeColor="Red" InitialValue="0" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">LOCALIDAD:</span></td>
                    <td>
                        <asp:DropDownList ID="ddlLocalidad" runat="server" CssClass="auto-style3" Height="30px" Width="154px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" CssClass="auto-style3" ForeColor="Red" InitialValue="0" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">TELEFONO:</td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="auto-style3" Width="136px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">CORREO:</td>
                    <td>
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnAgregar" runat="server" CssClass="auto-style3" Height="37px" Text="Agregar" ValidationGroup="1" Width="82px" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </p>
        <div>
          <p class="auto-style2">
                <strong>Modifcar Paciente</strong></p>
        </div>
        <div>

            <table class="auto-style7">
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label4" runat="server" Text="Busqueda por DNI:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtBusquedaDni" runat="server" CssClass="auto-style10" Width="224px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" Text="Buscar" Width="83px" />
                    </td>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Buscar Todos" Width="100px" />
                    </td>
                </tr>
            </table>

        </div>
        <asp:GridView ID="grdPacientes" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CssClass="auto-style5" OnRowCancelingEdit="grdPacientes_RowCancelingEdit" OnRowEditing="grdPacientes_RowEditing" OnRowUpdated="grdPacientes_RowUpdated" OnRowUpdating="grdPacientes_RowUpdating">
            <Columns>
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
    </form>
</body>
</html>
