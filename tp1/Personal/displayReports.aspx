<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="displayReports.aspx.cs" Inherits="tp1.Personal.displayReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" CssClass="GridStyle th table table-hover table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" Width="963px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="ord_num" HeaderText="Order number" SortExpression="ord_num" />
            <asp:BoundField DataField="stor_id" HeaderText="Store id" SortExpression="stor_id" />
            <asp:BoundField DataField="ord_date" HeaderText="Order date" SortExpression="ord_date" />
            <asp:BoundField DataField="qty" HeaderText="Quantitity" SortExpression="qty" />
            <asp:BoundField DataField="payterms" HeaderText="Pay terms" SortExpression="payterms" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" InsertCommand="INSERT INTO [authors] ([au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract]) VALUES (@au_id, @au_lname, @au_fname, @phone, @address, @city, @state, @zip, @contract)" SelectCommand="getMySales" UpdateCommand="UPDATE [authors] SET [au_lname] = @au_lname, [au_fname] = @au_fname, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [contract] = @contract WHERE [au_id] = @au_id" SelectCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="au_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="au_id" Type="String" />
            <asp:Parameter Name="au_lname" Type="String" />
            <asp:Parameter Name="au_fname" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="zip" Type="String" />
            <asp:Parameter Name="contract" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="au_lname" Type="String" />
            <asp:Parameter Name="au_fname" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="au_lname" Type="String" />
            <asp:Parameter Name="au_fname" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="zip" Type="String" />
            <asp:Parameter Name="contract" Type="Boolean" />
            <asp:Parameter Name="au_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
