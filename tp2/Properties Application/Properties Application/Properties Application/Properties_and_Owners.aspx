<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="Properties_and_Owners.aspx.cs" Inherits="Properties_Application.Properties_and_Owners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Owners" DataTextField="name" DataValueField="land_register_number" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:XmlDataSource ID="Owners" runat="server" DataFile="~/App_Data/Properties.xml" TransformFile="~/App_Data/Owners.xslt" XPath="owners/owner[not(@tax_id=preceding:: owner/@tax_id)]"></asp:XmlDataSource>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Properties">
        </asp:GridView>
        <asp:XmlDataSource ID="Properties" runat="server" DataFile="~/App_Data/temp_property.xml" TransformFile="~/App_Data/Property_XSL.xslt"></asp:XmlDataSource>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>

