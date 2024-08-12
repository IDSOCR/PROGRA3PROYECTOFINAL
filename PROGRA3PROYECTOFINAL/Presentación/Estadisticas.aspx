<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Estadisticas.aspx.cs" Inherits="PROGRA3PROYECTOFINAL.Presentación.Estadisticas" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Estadísticas - Sistema de Gestión de Reciclaje</title>
    <link href="../Estilos/Estadisticas.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Estadísticas de Reciclaje</h2>
            
            <asp:GridView ID="gvEstadisticas" runat="server" AutoGenerateColumns="False" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="Material" HeaderText="Material" />
                    <asp:BoundField DataField="TotalCantidad" HeaderText="Cantidad Total (KG)" />
                </Columns>
            </asp:GridView>
        
        <!-- Botón para regresar al Home -->
            <asp:Button ID="btnHome" runat="server" Text="Regresar a Inicio" CssClass="home-btn" OnClick="btnHome_Click" />
        
        
        </div>
    </form>
</body>
</html>

