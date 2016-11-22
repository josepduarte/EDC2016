<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <img alt="" src="rss_logo.jpg" style="width: 25px; height: 25px" /> My Feed Reader</h1>

    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="XmlDataSource1" DataTextField="description" DataValueField="description" Height="24px" Width="498px">
    </asp:DropDownList>

    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#3278B9" ForeColor="White" OnClick="Button1_Click" Text="Manage Feeds" />

    <h2>Feed Info</h2>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/feeds.xml"></asp:XmlDataSource>

    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/public_feeds.xml" TransformFile="~/News_header.xslt"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/public_feeds.xml" TransformFile="~/News_items1.xslt"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource4" runat="server" DataFile="~/public_feeds.xml" TransformFile="~/News_items2.xslt"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource5" runat="server" DataFile="~/public_feeds.xml" TransformFile="~/News_items3.xslt"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource6" runat="server" DataFile="~/public_feeds.xml" TransformFile="~/News_items4.xslt"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource7" runat="server" DataFile="~/public_feeds.xml" TransformFile="~/News_items5.xslt"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource8" runat="server" DataFile="~/public_feeds.xml" TransformFile="~/News_items6.xslt"></asp:XmlDataSource>

    <asp:DetailsView CssClass="GridStyle table" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource2" Height="50px" Width="464px" GridLines="None">
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
    
    <h2>Feed News</h2>

    <table>
     <tr>
        <td>
    <span>
    <asp:DetailsView CssClass="GridStyle table" ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource3" Height="50px" Width="309px" GridLines="None">
        <EditRowStyle BorderStyle="None" />
        <Fields>
            <asp:BoundField DataField="title" SortExpression="title" />
            <asp:BoundField DataField="pubDate" SortExpression="pubDate" />
            <asp:BoundField DataField="category" SortExpression="category" />
            <asp:BoundField DataField="description" SortExpression="description" />
        </Fields>
    </asp:DetailsView>
    </span>
   </td>
    <td>
    <span>
    <asp:DetailsView CssClass="GridStyle table" ID="DetailsView3" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource4" Height="50px" Width="309px" GridLines="None">
        <EditRowStyle BorderStyle="None" />
        <Fields>
            <asp:BoundField DataField="title" SortExpression="title" />
            <asp:BoundField DataField="pubDate" SortExpression="pubDate" />
            <asp:BoundField DataField="category" SortExpression="category" />
            <asp:BoundField DataField="description" SortExpression="description" />
        </Fields>
    </asp:DetailsView>
    </span>
   </td>
   <td>
    <span>
    <asp:DetailsView CssClass="GridStyle table" ID="DetailsView4" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource5" Height="50px" Width="309px" GridLines="None">
        <EditRowStyle BorderStyle="None" />
        <Fields>
            <asp:BoundField DataField="title" SortExpression="title" />
            <asp:BoundField DataField="pubDate" SortExpression="pubDate" />
            <asp:BoundField DataField="category" SortExpression="category" />
            <asp:BoundField DataField="description" SortExpression="description"/>
        </Fields>
    </asp:DetailsView>
    </span>
   </td>
  </tr>
</table>

    <h1></h1>
    <table>
     <tr>
        <td>
    <span>
    <asp:DetailsView CssClass="GridStyle table" ID="DetailsView5" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource6" Height="50px" Width="309px" GridLines="None">
        <EditRowStyle BorderStyle="None" />
        <Fields>
            <asp:BoundField DataField="title" SortExpression="title" />
            <asp:BoundField DataField="pubDate" SortExpression="pubDate" />
            <asp:BoundField DataField="category" SortExpression="category" />
            <asp:BoundField DataField="description" SortExpression="description" />
        </Fields>
    </asp:DetailsView>
    </span>
   </td>
    <td>
    <span>
    <asp:DetailsView CssClass="GridStyle table" ID="DetailsView6" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource7" Height="50px" Width="309px" GridLines="None">
        <EditRowStyle BorderStyle="None" />
        <Fields>
            <asp:BoundField DataField="title" SortExpression="title" />
            <asp:BoundField DataField="pubDate" SortExpression="pubDate" />
            <asp:BoundField DataField="category" SortExpression="category"  />
            <asp:BoundField DataField="description" SortExpression="description"  />
        </Fields>
    </asp:DetailsView>
    </span>
   </td>
   <td>
    <span>
    <asp:DetailsView CssClass="GridStyle table" ID="DetailsView7" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource8" Height="50px" Width="309px" GridLines="None">
        <EditRowStyle BorderStyle="None" />
        <Fields>
            <asp:BoundField DataField="title" SortExpression="title" />
            <asp:BoundField DataField="pubDate" SortExpression="pubDate" />
            <asp:BoundField DataField="category" SortExpression="category"/>
            <asp:BoundField DataField="description" SortExpression="description" />
        </Fields>
    </asp:DetailsView>
    </span>
   </td>
  </tr>
</table>

</asp:Content>
