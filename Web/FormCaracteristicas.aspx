<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCaracteristicas.aspx.cs" Inherits="LaNuevaLiga.Web.FormCaracteristicas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <a href="FormPersonaje.aspx">Registrar Personajes</a>

        <h1>Administrar Caracteristicas</h1>
        <br />
        <br />
        <label>Tipo de caracteristica:</label>
        <br />
        <asp:DropDownList ID="select" runat="server">
            <asp:ListItem Value="armas">Armas</asp:ListItem>
            <asp:ListItem Value="debilidades">Debilidades</asp:ListItem>
            <asp:ListItem Value="habilidades">Habilidades</asp:ListItem>
            <asp:ListItem Value="personalidad">Personalidad</asp:ListItem>
            <asp:ListItem Value="poderes">Poderes</asp:ListItem>
        </asp:DropDownList>
        <br />
        <label>Nombre:</label>
        <br />
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />
        <label>Descaripcion:</label>
        <br />
        <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnAgregar" runat="server" Text="Guardar" OnClick="btnAgregar_Click" />
    </div>

        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                </Columns>
            </asp:GridView>

            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="ObtenerCaracteristicas" TypeName="LaNuevaLiga.Datos.RegistroCaracteristicas"></asp:ObjectDataSource>

        </div>

    </form>
</body>
</html>
