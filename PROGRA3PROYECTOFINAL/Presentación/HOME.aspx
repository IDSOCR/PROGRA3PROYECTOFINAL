<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="PROGRA3PROYECTOFINAL.Presentación.Inicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página de Inicio - Sistema de Reciclaje</title>
    <link href="../Estilos/Inicio.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <header>
                <h1>Bienvenido al Sistema de Gestión de Reciclaje</h1>
                <img src="../Imagenes/ReciclajeProyectoFinal.png" />
            </header>
            
            <nav>
                <ul class="nav-list">
                    <li><a href="Loguin.aspx" class="nav-link">Iniciar Sesión</a></li>
                    <li><a href="Estadisticas.aspx">Total Reciclado</a></li>
                </ul>
            </nav>
           
            <section>
                <h2>Sobre el Sistema</h2>
                <p>Este sistema permite realizar el registro y enviar datos del reciclaje de manera eficiente y organizada.</p>
            </section>
            <footer>
                <p>&copy; 2024 Sistema de Gestión de Reciclaje</p>
            </footer>
        </div>
    </form>
</body>
</html>


