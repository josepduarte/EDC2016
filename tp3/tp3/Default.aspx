<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <img alt="" src="rss_logo.jpg" style="width: 25px; height: 25px" /> My Feed Reader</h1>

    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="XmlDataSource1" DataTextField="description" DataValueField="description">
    </asp:DropDownList>
    
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/feeds.xml"></asp:XmlDataSource>

    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/public_feeds.xml" TransformFile="~/News_header.xslt"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/public_feeds.xml" TransformFile="~/News_items.xslt"></asp:XmlDataSource>

    


    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource2" Height="50px" Width="464px">
        <Fields>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
            <asp:BoundField DataField="managingEditor" HeaderText="managingEditor" SortExpression="managingEditor" />
            <asp:BoundField DataField="webMaster" HeaderText="webMaster" SortExpression="webMaster" />
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
        </Fields>
    </asp:DetailsView>


    


    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource3" Height="50px" Width="520px">
        <Fields>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="pubDate" HeaderText="pubDate" SortExpression="pubDate" />
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
        </Fields>
    </asp:DetailsView>


    


</asp:Content>
