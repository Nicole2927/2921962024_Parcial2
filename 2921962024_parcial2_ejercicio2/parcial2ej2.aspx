<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parcial2ej2.aspx.cs" Inherits="_2921962024_parcial2_ejercicio2.parcial2ej2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div style="font-family:Arial; margin:20px;">
            <h2>Resumen de Órdenes por Tipo de Venta</h2>
    
            <asp:GridView ID="gvResumen" runat="server" AutoGenerateColumns="False"
                BorderColor="Black" BorderWidth="1px" CellPadding="5"
                HeaderStyle-BackColor="#3F51B5" HeaderStyle-ForeColor="White"
                AlternatingRowStyle-BackColor="#F5F5F5">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Nombre Tipo de Venta" />
                    <asp:BoundField DataField="OrderCount" HeaderText="Número de Órdenes" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
