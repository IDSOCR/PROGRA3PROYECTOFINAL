<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registro.aspx.cs" Inherits="PROGRA3PROYECTOFINAL.Presentación.Registro" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro - Sistema de Gestión de Reciclaje</title>
    <link href="../Estilos/Loguin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Registro de Usuario</h2>
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
                <asp:TextBox ID="txtUsuario" runat="server" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Correo Electrónico"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Confirmar Contraseña"></asp:Label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            </div>
            <asp:Button ID="btnRegister" runat="server" Text="Registrar" CssClass="login-btn" OnClick="btnRegister_Click" />
            <p>¿Ya tienes cuenta? <a href="Loguin.aspx">Inicia sesión aquí</a></p>
        </div>
    </form>
</body>
</html>

