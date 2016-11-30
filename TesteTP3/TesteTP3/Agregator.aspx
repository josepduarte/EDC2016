<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="Agregator.aspx.cs" Inherits="TesteTP3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    Category:&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Categories" DataTextField="category" DataValueField="category" AppendDataBoundItems="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    Source: <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" DataSourceID="Sources" DataTextField="source" DataValueField="source" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
    </asp:CheckBoxList>
    <asp:XmlDataSource ID="Sources" runat="server" DataFile="~/App_Data/public_feeds.xml" TransformFile="~/sources.xslt"></asp:XmlDataSource>
    <br />
    <br />
&nbsp;<asp:XmlDataSource ID="Categories" runat="server" DataFile="~/App_Data/public_feeds.xml" TransformFile="~/categories.xslt" XPath="items/item[not(@category=preceding:: item/@category)]"></asp:XmlDataSource>
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="items">
        <ItemTemplate> 
                <table class="table" >
                    <tr>
                        <strong> 
                            <%# XPath("@title")%><br /> 
                        </strong> 
                    </tr>
                    <tr>
                        <strong> Description: </strong> <%# XPath("@description")%><br /> 
                    </tr>
                    <tr>
                        <strong> Publication date: </strong> <%# XPath("@pubdate")%><br /> 
                    </tr>
                    <tr>
                        <strong> Category: </strong> <%# XPath("@category")%><br /> 
                    </tr>
                    <tr>
                        <strong> Link: </strong> <%# XPath("@link")%><br /> 
                    </tr>
                    <tr>
                        <strong> Guid: </strong> <%# XPath("@guid")%><br /> 
                    </tr>                
            </table>
        </ItemTemplate> 
    </asp:Repeater>
    <asp:XmlDataSource ID="items" runat="server" DataFile="~/App_Data/public_feeds.xml" TransformFile="~/items.xslt" XPath="/channels/channel/item"></asp:XmlDataSource>
</asp:Content>
