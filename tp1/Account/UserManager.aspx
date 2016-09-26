<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserManager.aspx.cs" Inherits="tp1.Account.UserManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:GridView ID="GridView1" CssClass="GridStyle th table table-hover table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" Height="736px" Width="1268px">
        <PagerStyle  HorizontalAlign ="Center" CssClass="pagination-ys" /> 
           <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CheckBoxField DataField="EmailConfirmed" HeaderText="Email Confirmed" SortExpression="EmailConfirmed" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="UserName" HeaderText="Username" SortExpression="UserName" />
                <asp:BoundField DataField="BirthDate" HeaderText="Birth Date" SortExpression="BirthDate" />
                <asp:BoundField DataField="au_fname" HeaderText="First Name" SortExpression="au_fname" />
                <asp:BoundField DataField="au_lname" HeaderText="Last Name" SortExpression="au_lname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet-tp1-20160920104147ConnectionString1 %>" SelectCommand="SELECT [Id], [Email], [EmailConfirmed], [PhoneNumber], [UserName], [BirthDate], [au_fname], [au_lname] FROM [AspNetUsers]">

        </asp:SqlDataSource>
    </p>
</asp:Content>
