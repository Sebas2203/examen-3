<%@ Page Title="" Language="C#" MasterPageFile="~/menu2.Master" AutoEventWireup="true" CodeBehind="encuesta.aspx.cs" Inherits="encuesta.encuesta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <br />
        <h1>ENCUESTA DE PARTIDOS POLÍTICOS</h1>
    </div>
    <div class="container text-center">
        Nombre:
        <asp:TextBox ID="tnombre" class="form-control" runat="server"></asp:TextBox>
        Edad:
        <asp:TextBox ID="tedad" class="form-control" runat="server"></asp:TextBox>
        Correo:
        <asp:TextBox ID="tcorreo" class="form-control" runat="server"></asp:TextBox>
        Partido Político
        <asp:DropDownList ID="tpartido" class="form-control" runat="server"></asp:DropDownList>
    </div>
    <div class="container text-center">
        <br />
        <br />
        <br />
        <asp:Button ID="button1" class="btn btn-outline-primary" runat="server" Text="Enviar"/>
    </div>
        <div class="container text-center">
    <br />
    <h1>ENCUESTAS</h1>
</div>
<div>
    <br />
    <br />
    <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
        CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
        RowStyle-CssClass="rows" AllowPaging="True" />
    <br />
    <br />
    <br />

</div>
</asp:Content>
