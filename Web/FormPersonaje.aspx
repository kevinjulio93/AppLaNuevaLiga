<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormPersonaje.aspx.cs" Inherits="LaNuevaLiga.Web.FormPersonaje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="FormCaracteristicas.aspx">Registrar Caracteristicas</a>
<br />

    <h1>Administrar Personajes</h1>
        <br />
        <br />
        
        <label>Nombre</label><br />
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br />

        <label>Generoel</label>
        <br/>
        <asp:TextBox ID="txtGenero" runat="server"></asp:TextBox><br />
        <label>Identidad</label>
        <br/>
        <asp:TextBox ID="txtIdentidad" runat="server"></asp:TextBox><br />
        <label>Estatura</label>
        <br/>
        <asp:TextBox ID="txtEstatura" runat="server"></asp:TextBox><br />
        <label>Contestura</label>
        <br/>
        <asp:TextBox ID="txtContestura" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
        <br />
        ___________________________________<br />
        <br />
        <label>Agregar Liga</label>
        <br/>
        <asp:TextBox ID="txtLiga" runat="server"></asp:TextBox>
        <asp:Button ID="btnAddLiga" runat="server" Text="Agregar" OnClick="btnAddLiga_Click" />
        <label>
        <br />
        <br />
        Agregar Caracteristica</label>
        <br/>
        <asp:DropDownList ID="selectCaracteristicas" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Nombre" DataValueField="Nombre">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="ObtenerCaracteristicas" TypeName="LaNuevaLiga.Datos.RegistroCaracteristicas"></asp:ObjectDataSource>
        <asp:Button ID="btnAddCaracteristicas" runat="server" Text="Agregar" OnClick="btnAddCaracteristicas_Click" />
        <label>
        <br />
        <br />
        Agregar Enemigo</label><br/>
        <asp:DropDownList ID="selectEnemigos" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Nombres" DataValueField="Identidad">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="ObtenerLista" TypeName="LaNuevaLiga.Datos.RegistroPersonajes"></asp:ObjectDataSource>
        <asp:Button ID="txtAddEnemigo" runat="server" Text="Agregar" OnClick="txtAddEnemigo_Click" />

        
        


        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource3">
            <Columns>
                <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                <asp:BoundField DataField="Identidad" HeaderText="Identidad" SortExpression="Identidad" />
                <asp:BoundField DataField="Estatura" HeaderText="Estatura" SortExpression="Estatura" />
                <asp:BoundField DataField="Contestura" HeaderText="Contestura" SortExpression="Contestura" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource5">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775;">Nombre:
                <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                <br />
                Descripcion:
                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                Descripcion:
                <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No se han devuelto datos.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />Descripcion:
                <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">Nombre:
                <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                <br />
                Descripcion:
                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">Nombre:
                <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                <br />
                Descripcion:
                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" SelectMethod="ObtenerCaracteristicas" TypeName="LaNuevaLiga.Datos.RegistroPersonajes">
            <SelectParameters>
                <asp:FormParameter DefaultValue="id" FormField="txtIdentidad" Name="identidad" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="ObtenerLista" TypeName="LaNuevaLiga.Datos.RegistroPersonajes"></asp:ObjectDataSource>
        <br />

        
        


    </div>
    </form>
</body>
</html>
