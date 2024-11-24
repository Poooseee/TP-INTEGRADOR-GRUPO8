<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TurnosYPacientes.aspx.cs" Inherits="Vistas.MenuMedicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 43%;
            margin-left: 100px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
            height: 30px;
        }
        .auto-style4 {
            text-align: center;
            height: 23px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style8 {
            width: 465px;
        }
        .auto-style9 {
            width: 129px;
        }
        .auto-style11 {
            width: 200px;
        }
        .auto-style12 {
            width: 243px;
        }
        .auto-style13 {
            text-align: left;
            height: 67px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
                        <table class="auto-style6">
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="~ Médico"></asp:Label>
                                </td>
                            </tr>
                        </table>
&nbsp;<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>MEDICOS</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblTurnos" runat="server" Text="Turnos"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <table class="auto-style6">
                            <tr>
                                <td class="auto-style9">Filtrar por Paciente:</td>
                                <td class="auto-style12">
                                    &nbsp;
                                    <asp:TextBox ID="txtPaciente" runat="server" Width="130px"></asp:TextBox>
                                </td>
                                <td class="auto-style11">
                                    Filtrar por fecha</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
                                </td>
                            </tr>
                        </table>
&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="grvTurnos" runat="server" AutoGenerateColumns="False" Width="788px" AutoGenerateEditButton="True" OnRowCancelingEdit="grvTurnos_RowCancelingEdit" OnRowEditing="grvTurnos_RowEditing" OnRowUpdating="grvTurnos_RowUpdating" OnRowDataBound="grvTurnos_RowDataBound">
                            <Columns>
                                <asp:TemplateField HeaderText="Turno">
                                    <ItemTemplate>
                                        <asp:Label ID="lblNroTurno" runat="server" Text='<%# Bind("NroTurno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha">
                                    <EditItemTemplate>
                                        <asp:Label ID="lblFechaTurno" runat="server" Text='<%# Bind("fecha_T") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblFechaTurno" runat="server" Text='<%# Bind("fecha_T") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Hora">
                                    <ItemTemplate>
                                        <asp:Label ID="lblHoraTurno" runat="server" Text='<%# Bind("horario_T") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Paciente">
                                    <ItemTemplate>
                                        <asp:Label ID="lblDNIPaciente" runat="server" Text='<%# Bind("DniPaciente_T") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Presentismo">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="ddlPresentismo" runat="server">
                                            <asp:ListItem Text="PRESENTE" Value="PRESENTE"></asp:ListItem>
                                            <asp:ListItem Text="AUSENTE" Value="AUSENTE"></asp:ListItem>
                                            <asp:ListItem Text="PENDIENTE" Value="PENDIENTE"></asp:ListItem>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblPresentismo" runat="server" Text='<%# Bind("estadoPaciente_T") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado del Turno">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="ddlEstado" runat="server">
                                            <asp:ListItem Text="CUMPLIDO" Value="CUMPLIDO"></asp:ListItem>
                                            <asp:ListItem Text="DADO DE BAJA" Value="DADO DE BAJA"></asp:ListItem>
                                            <asp:ListItem Text="PENDIENTE" Value="PENDIENTE"></asp:ListItem>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblEstadoTurno" runat="server" Text='<%# Bind("estadoTurno_T") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Observaciones">
                                   
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtObservaciones" runat="server" Text='<%# Bind("observacion_T") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                   
                                    <ItemTemplate>
                                        <asp:Label ID="lblObservaciones" runat="server" Text='<%# Bind("observacion_T") %>'></asp:Label>
                                    </ItemTemplate>
                                   
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        <div class="auto-style5">
                        <asp:LinkButton ID="lnkbtnCerrarSesion" runat="server" OnClick="lnkbtnCerrarSesion_Click">Cerrar Sesión</asp:LinkButton>
        </div>
        </div>
    </form>
</body>
</html>
