<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="TP2_csharp.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" Width="125px" TransformFile="~/App_Data/Curso_info.xslt" DataSourceID="XmlDataSource1">
        <Fields>
            <asp:BoundField HtmlEncode="false" DataField="guid" HeaderText="guid" SortExpression="guid" />
            <asp:BoundField HtmlEncode="false" DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField HtmlEncode="false" DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
            <asp:BoundField HtmlEncode="false" DataField="grau" HeaderText="grau" SortExpression="grau" />
            <asp:BoundField HtmlEncode="false" DataField="vagas" HeaderText="vagas" SortExpression="vagas" />
            <asp:BoundField HtmlEncode="false" DataField="saidas_profissionais" HeaderText="saidas_profissionais" SortExpression="saidas_profissionais" />
            <asp:BoundField HtmlEncode="false" DataField="fase1" HeaderText="fase1" SortExpression="fase1" />
            <asp:BoundField HtmlEncode="false" DataField="fase2" HeaderText="fase2" SortExpression="fase2" />
            <asp:BoundField HtmlEncode="false" DataField="duracao" HeaderText="duracao" SortExpression="duracao" />
            <asp:BoundField HtmlEncode="false" DataField="provas" HeaderText="provas" SortExpression="provas" />
        </Fields>
    </asp:DetailsView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" TransformFile="~/App_Data/Curso_info.xslt" XPath="curso" DataFile="~/App_Data/curso_teste.xml"></asp:XmlDataSource>
    </asp:Content>
