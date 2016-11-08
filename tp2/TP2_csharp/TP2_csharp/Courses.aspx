<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="TP2_csharp.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lista de cursos</h1>
    <hr/>
    Tipos:
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ListOfGraus_XML" DataTextField="nome" DataValueField="nome" OnSelectedIndexChanged="On_grau_changed" AutoPostBack="true" Height="30px">
    </asp:DropDownList>
    <asp:XmlDataSource ID="ListOfGraus_XML" runat="server" DataFile="~/App_Data/Courses_2.xml" TransformFile="~/App_Data/CoursesTypes.xslt" XPath="listaDeGraus/grau[not(@nome=preceding:: grau/@nome)]"></asp:XmlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Locais:&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ListOfLocals_xml" DataTextField="nome" DataValueField="nome" OnSelectedIndexChanged="On_grau_changed" AutoPostBack="True" Height="30px">
    </asp:DropDownList>
    <asp:XmlDataSource ID="ListOfLocals_xml" runat="server" DataFile="~/App_Data/Courses_2.xml" TransformFile="~/App_Data/Courses_locals.xslt" XPath="listaDeLocais/local[not(@nome=preceding:: local/@nome)]"></asp:XmlDataSource>
    <asp:GridView CssClass="GridStyle th table table-hover table-striped" ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="listOfCourses_XLM" AllowPaging="True" OnPageIndexChanged="On_grau_changed" GridLines="None">
    <HeaderStyle HorizontalAlign="Center" />
     
    <PagerStyle  HorizontalAlign ="Center" CssClass="pagination-ys" /> 
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="guid" DataNavigateUrlFormatString="~/Course.aspx?ID={0}" DataTextField="guid" HeaderText="Guid" />
            <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
            <asp:BoundField DataField="grau" HeaderText="Grau" SortExpression="grau" />
            <asp:BoundField DataField="local" HeaderText="Local" SortExpression="local" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Table ID="Table" runat="server" Width="100%">
                <asp:TableRow>
                    <asp:TableCell BackColor="#FDF8E5">
                        <span style="color: #96886D">ATENÇÃO!!!</span>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BackColor="#FFFFFF">
                        Não há cursos desse tipo na instituição.
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:XmlDataSource ID="listOfCourses_XLM" runat="server" DataFile="~/App_Data/Courses_2.xml" TransformFile="~/App_Data/cursos_transf.xslt" ></asp:XmlDataSource>
    <br />
    <br />
</asp:Content>
