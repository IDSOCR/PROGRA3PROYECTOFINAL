<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistroReciclaje.aspx.cs" Inherits="PROGRA3PROYECTOFINAL.Presentación.RegistroReciclaje" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrar Reciclaje - Sistema de Gestión de Reciclaje</title>
    <link href="../Estilos/RegistroReciclaje.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Registrar Reciclaje</h2>
            <asp:Label ID="lblUsuario" runat="server" CssClass="user-label"></asp:Label>

             <!-- Botón de Cerrar Sesión -->
            <asp:Button ID="btnLogout" runat="server" Text="Cerrar Sesión" CssClass="logout-btn" OnClick="btnLogout_Click" />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Material"></asp:Label>
                <asp:DropDownList ID="ddlMaterial" runat="server" CssClass="input-field">
                    <asp:ListItem Text="Papel y Cartón" Value="Papel y Cartón"></asp:ListItem>
                    <asp:ListItem Text="Vidrio" Value="Vidrio"></asp:ListItem>
                    <asp:ListItem Text="Metales" Value="Metales"></asp:ListItem>
                    <asp:ListItem Text="Plásticos" Value="Plásticos"></asp:ListItem>
                    <asp:ListItem Text="Textiles" Value="Textiles"></asp:ListItem>
                    <asp:ListItem Text="Madera" Value="Madera"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Cantidad (KG)"></asp:Label>
                <asp:TextBox ID="txtCantidad" runat="server" CssClass="input-field" TextMode="Number"></asp:TextBox>
            </div>
            <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="login-btn" OnClick="btnRegistrar_Click" />
            
            <h3>Historial de Reciclaje</h3>
            <asp:GridView ID="gvHistorial" runat="server" AutoGenerateColumns="False" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                    <asp:BoundField DataField="Material" HeaderText="Material" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad (KG)" />
                    <asp:BoundField DataField="Puntos" HeaderText="Puntos" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>


