﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="authors.aspx.cs" Inherits="tp1.authors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView CssClass="GridStyle th table table-hover table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="au_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True">
    <PagerStyle  HorizontalAlign ="Center" CssClass="pagination-ys" /> 
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"><i class="fa fa-floppy-o" aria-hidden="true"></i></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"><i class="fa fa-times" aria-hidden="true"></i></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"><i class="fa fa-check-square-o" aria-hidden="true"></i></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"><i class="fa fa-trash" aria-hidden="true"></i></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="au_id" HeaderText="au_id" ReadOnly="True" SortExpression="au_id" />
        <asp:BoundField DataField="au_lname" HeaderText="au_lname" SortExpression="au_lname" />
        <asp:BoundField DataField="au_fname" HeaderText="au_fname" SortExpression="au_fname" />
        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
        <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
        <asp:CheckBoxField DataField="contract" HeaderText="contract" SortExpression="contract" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" 
    DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" 
    InsertCommand="INSERT INTO [authors] ([au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract]) VALUES (@au_id, @au_lname, @au_fname, @phone, @address, @city, @state, @zip, @contract)" 
    ProviderName="<%$ ConnectionStrings:pubsConnectionString1.ProviderName %>" 
    SelectCommand="SELECT [au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract] FROM [authors]" 
    UpdateCommand="UPDATE [authors] SET [au_lname] = @au_lname, [au_fname] = @au_fname, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [contract] = @contract WHERE [au_id] = @au_id">
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
