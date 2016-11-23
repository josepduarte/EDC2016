<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="teste.aspx.cs" Inherits="TesteTP3.teste" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <img alt="" src="rss_logo.jpg" style="width: 25px; height: 25px" /> Gestão de feeds</h1>
    <h1></h1>
    <asp:DetailsView CssClass="GridStyle table" ID="DetailsView1" runat="server" DataSourceID="XmlDataSource1" Height="50px" Width="787px" AllowPaging="True" AutoGenerateRows="False" OnItemDeleting="DetailsView1_ItemDeleting" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating" GridLines="Horizontal">
        <PagerStyle  HorizontalAlign ="Center" CssClass="pagination-ys" /> 
        <Fields>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="url" HeaderText="url" SortExpression="url" />
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"><i class="fa fa-floppy-o fa-2x" aria-hidden="true"></i></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"><i class="fa fa-window-close fa-2x" aria-hidden="true"></i></asp:LinkButton>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"><i class="fa fa-check-square fa-2x" aria-hidden="true"></i></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"><i class="fa fa-window-close fa-2x" aria-hidden="true"></i></asp:LinkButton>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New"><i class="fa fa-plus fa-2x" aria-hidden="true"></i></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete"><i class="fa fa-trash fa-2x" aria-hidden="true"></i></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
           
        </Fields>
        <EmptyDataTemplate>
            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
        </EmptyDataTemplate>
    </asp:DetailsView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/xml.xml" TransformFile="~/bla.xslt"></asp:XmlDataSource>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" class="btn btn-default" runat="server" OnClick="Button1_Click" Text="Read Feeds" />
</asp:Content>

