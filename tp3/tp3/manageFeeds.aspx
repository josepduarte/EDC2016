<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manageFeeds.aspx.cs" Inherits="tp3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <img alt="" src="rss_logo.jpg" style="width: 25px; height: 25px" /> Gestão de feeds</h1>
    <h1>
        <asp:DetailsView ID="DetailsView_feed_management" runat="server" AllowPaging="True" DataSourceID="feed_management" Height="50px" Width="125px" AutoGenerateRows="False">
            <Fields>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="url" HeaderText="url" SortExpression="url" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                <asp:ButtonField ButtonType="Button" CommandName="View" Text="Feeds Reader" />
            </Fields>
        </asp:DetailsView>
    </h1>
    <h1>
        &nbsp;<asp:XmlDataSource ID="feed_management" runat="server" DataFile="~/App_Data/manageFeeds.xml" TransformFile="~/App_Data/manageFeeds.xslt"></asp:XmlDataSource>
    </h1>


</asp:Content>
