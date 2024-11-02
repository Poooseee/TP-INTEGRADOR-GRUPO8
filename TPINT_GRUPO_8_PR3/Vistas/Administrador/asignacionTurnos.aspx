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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" Text="Asignacion De Turnos"></asp:Label>
            <br />
        <div>
        <div>
        </div>
        </div>
        </div>
        <div class="auto-style1">
                        <asp:GridView ID="grvTurnos" runat="server" AutoGenerateColumns="False" Width="436px" HorizontalAlign="Left" OnSelectedIndexChanged="grvTurnos_SelectedIndexChanged">
                            <Columns>
                                <asp:TemplateField HeaderText="Turnos"></asp:TemplateField>
                                <asp:TemplateField HeaderText="Medicos"></asp:TemplateField>
                                <asp:BoundField HeaderText="Especialidad" ReadOnly="True" />
                            </Columns>
                        </asp:GridView>
        </div>
        <div class="auto-style1">
                        <asp:GridView ID="grvTurnos0" runat="server" AutoGenerateColumns="False" Width="436px" HorizontalAlign="Left" OnSelectedIndexChanged="grvTurnos_SelectedIndexChanged">
                            <Columns>
                                <asp:TemplateField HeaderText="Medicos"></asp:TemplateField>
                                <asp:BoundField HeaderText="Horarios" ReadOnly="True" />
                            </Columns>
                        </asp:GridView>
        </div>
    </form>
</body>
</html>
