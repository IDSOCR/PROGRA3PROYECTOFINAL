<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loguin.aspx.cs" Inherits="PROGRA3PROYECTOFINAL.Presentación.Loguin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Sistema de Gestión de Reciclaje</title>
    <link href="../Estilos/Loguin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Iniciar Sesión</h2>
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
                <asp:TextBox ID="txtUsuario" runat="server" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CssClass="login-btn" OnClick="btnLogin_Click" />
            <p>¿No tienes cuenta? <a href="Registro.aspx">Regístrate aquí</a></p>
        </div>
    </form>
</body>
</html>

