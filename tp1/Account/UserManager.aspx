<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserManager.aspx.cs" Inherits="tp1.Account.UserManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet-tp1-20160920104147ConnectionString1 %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [BirthDate], [au_fname], [au_lname]) VALUES (@Id, @Email, @EmailConfirmed, @PasswordHash, @SecurityStamp, @PhoneNumber, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEndDateUtc, @LockoutEnabled, @AccessFailedCount, @UserName, @BirthDate, @au_fname, @au_lname)" ProviderName="<%$ ConnectionStrings:aspnet-tp1-20160920104147ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [BirthDate], [au_fname], [au_lname] FROM [AspNetUsers]" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [UserName] = @UserName, [BirthDate] = @BirthDate, [au_fname] = @au_fname, [au_lname] = @au_lname WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                <asp:Parameter Name="PasswordHash" Type="String" />
                <asp:Parameter Name="SecurityStamp" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="BirthDate" Type="DateTime" />
                <asp:Parameter Name="au_fname" Type="String" />
                <asp:Parameter Name="au_lname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="BirthDate" Type="DateTime" />
                <asp:Parameter Name="au_fname" Type="String" />
                <asp:Parameter Name="au_lname" Type="String" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="table table-hover table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" Width="1205px">
        <PagerStyle  HorizontalAlign ="Center" CssClass="pagination-ys" /> 
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"><i class="fa fa-floppy-o fa-2x" aria-hidden="true"></i></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"><i class="fa fa-times fa-2x" aria-hidden="true"></i></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                <asp:BoundField DataField="au_fname" HeaderText="au_fname" SortExpression="au_fname" />
                <asp:BoundField DataField="au_lname" HeaderText="au_lname" SortExpression="au_lname" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>
