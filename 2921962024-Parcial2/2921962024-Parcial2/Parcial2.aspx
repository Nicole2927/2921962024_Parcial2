<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parcial2.aspx.cs" Inherits="_2921962024_Parcial2.Parcial2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family:Arial; margin:20px;">
            <h2>Búsqueda de Productos por Rango de Precio</h2>
    
            <asp:Label ID="lblMin" runat="server" Text="Precio Mínimo: " />
            <asp:TextBox ID="txtMin" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="valMin" runat="server" 
                ControlToValidate="txtMin" 
                Type="Double" MinimumValue="0" MaximumValue="100000" 
                ErrorMessage="Ingrese un valor numérico válido"
                ForeColor="Red"></asp:RangeValidator>
            <br /><br />

            <asp:Label ID="lblMax" runat="server" Text="Precio Máximo: " />
            <asp:TextBox ID="txtMax" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="valMax" runat="server" 
                ControlToValidate="txtMax" 
                Type="Double" MinimumValue="0" MaximumValue="100000" 
                ErrorMessage="Ingrese un valor numérico válido"
                ForeColor="Red"></asp:RangeValidator>
            <br /><br />

            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            <br /><br />

            <asp:GridView ID="gvProductos" runat="server" AutoGenerateColumns="true"
                BorderColor="Black" BorderWidth="1px" CellPadding="5"
                HeaderStyle-BackColor="#3F51B5" HeaderStyle-ForeColor="White"
                AlternatingRowStyle-BackColor="#F5F5F5">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
