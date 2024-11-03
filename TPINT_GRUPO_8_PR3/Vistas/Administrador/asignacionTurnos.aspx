<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asignacionTurnos.aspx.cs" Inherits="Vistas.asignacionTurnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 150px;
        }
        .auto-style2 {
            margin-left: 160px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 83px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="~ Administrador"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" Text="Asignacion De Turnos"></asp:Label>
            <br />
            <br />
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">Especialidad:</td>
                    <td>
                        <asp:DropDownList ID="ddlEspecialidad" runat="server">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
            <asp:GridView ID="grvTurnos" runat="server" AutoGenerateColumns="False" Width="436px" HorizontalAlign="Left" OnSelectedIndexChanged="grvTurnos_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Turnos"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Horarios"></asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:GridView ID="grvTurnos0" runat="server" AutoGenerateColumns="False" Width="253px" HorizontalAlign="Center" OnSelectedIndexChanged="grvTurnos_SelectedIndexChanged" Height="118px">
                <Columns>
                    <asp:TemplateField HeaderText="Medicos Disponibles"></asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="auto-style1">
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnAsignar" runat="server" Height="26px" Text="Asignar" Width="138px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnReset" runat="server" Height="26px" Text="Resetear" Width="138px" />
        </div>
    </form>
</body>
</html>
