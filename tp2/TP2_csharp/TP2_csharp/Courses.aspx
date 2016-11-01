<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="TP2_csharp.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ListOfGraus_XML" DataTextField="nome" DataValueField="nome" OnSelectedIndexChanged="On_grau_changed" AutoPostBack="true">
    </asp:DropDownList>
    <asp:XmlDataSource ID="ListOfGraus_XML" runat="server" DataFile="~/App_Data/Courses_2.xml" TransformFile="~/App_Data/CoursesTypes.xslt" XPath="listaDeGraus/grau[not(@nome=preceding:: grau/@nome)]"></asp:XmlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ListOfLocals_xml" DataTextField="nome" DataValueField="nome" OnSelectedIndexChanged="On_grau_changed" AutoPostBack="True">
    </asp:DropDownList>
    <asp:XmlDataSource ID="ListOfLocals_xml" runat="server" DataFile="~/App_Data/Courses_2.xml" TransformFile="~/App_Data/Courses_locals.xslt" XPath="listaDeLocais/local[not(@nome=preceding:: local/@nome)]"></asp:XmlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="listOfCourses_XLM" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="guid" HeaderText="guid" SortExpression="guid" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="grau" HeaderText="grau" SortExpression="grau" />
            <asp:BoundField DataField="local" HeaderText="local" SortExpression="local" />
        </Columns>
    </asp:GridView>
    <asp:XmlDataSource ID="listOfCourses_XLM" runat="server" DataFile="~/App_Data/Courses_2.xml" TransformFile="~/App_Data/cursos_transf.xslt" ></asp:XmlDataSource>
    <br />
    <br />
</asp:Content>
