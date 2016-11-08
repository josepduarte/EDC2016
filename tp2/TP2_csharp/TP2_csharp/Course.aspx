<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="TP2_csharp.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Informação do curso</h1>
    <hr/>
    <asp:DetailsView CssClass="GridStyle th table table-hover table-striped" ID="DetailsView1" runat="server" AutoGenerateRows="False" TransformFile="~/App_Data/Curso_info.xslt" DataSourceID="XmlDataSource1" GridLines="None">
        <FieldHeaderStyle BackColor="#DFF1D9" HorizontalAlign="Right" Width="280px" />
        <Fields>
            <asp:BoundField HtmlEncode="false" DataField="guid" HeaderText="guid" SortExpression="guid" />
            <asp:BoundField HtmlEncode="false" DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField HtmlEncode="false" DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
            <asp:BoundField HtmlEncode="false" DataField="grau" HeaderText="grau" SortExpression="grau" />
            <asp:BoundField HtmlEncode="false" DataField="vagas" HeaderText="vagas" SortExpression="vagas" />
            <asp:BoundField HtmlEncode="false" DataField="saidas_profissionais" HeaderText="saídas profissionais" SortExpression="saidas_profissionais" />
            <asp:BoundField HtmlEncode="false" DataField="fase1" HeaderText="média [1º Fase]" SortExpression="fase1" />
            <asp:BoundField HtmlEncode="false" DataField="fase2" HeaderText="média [2º Fase]" SortExpression="fase2" />
            <asp:BoundField HtmlEncode="false" DataField="duracao" HeaderText="duração" SortExpression="duracao" />
            <asp:BoundField HtmlEncode="false" DataField="provas" HeaderText="provas" SortExpression="provas" />
        </Fields>
    </asp:DetailsView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" TransformFile="~/App_Data/Curso_info.xslt" XPath="curso" DataFile="~/App_Data/curso_teste.xml"></asp:XmlDataSource>
    </asp:Content>
