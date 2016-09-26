<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Menu</h2>
    <ul style="list-style: none;">
        <li style="margin: 20px 0;"><a runat="server" href="~/authors"><i class="fa fa-chevron-circle-up" aria-hidden="true"></i></a> Author's List </li>
        <li style="margin: 20px 0;"><a runat="server" href="~/books"><i class="fa fa-chevron-circle-up" aria-hidden="true"></i></a> Title's List </li>
        <asp:LoginView runat="server">
            <LoggedInTemplate>
                <li style="margin: 20px 0;"><a runat="server" href="~/Account/UserManager"><i class="fa fa-chevron-circle-up" aria-hidden="true"></i></a> Manage users </li>
            </LoggedInTemplate>
        </asp:LoginView>
    </ul>
    <br /><br /><br /><br />

    <h5>José Pedro Duarte - 64194</h5>
    <h5>Bruno Alves - 63980</h5>

</asp:Content>
