<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manageFeeds.aspx.cs" Inherits="tp3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <img alt="" src="rss_logo.jpg" style="width: 25px; height: 25px" /> Gestão de feeds </h1>

    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="XmlDataSource1" DataTextField="description" DataValueField="description">
    </asp:DropDownList>


</asp:Content>
