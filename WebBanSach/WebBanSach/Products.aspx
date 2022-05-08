<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebBanSach.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
            <asp:Image ID="anh" runat="server" ImageUrl='<%#Eval("Anh") %>' Height="180px" Width="180px" />
            <br />

            <asp:Label ID="TenSachLabel" runat="server" Text='<%# Eval("TenSach") %>' />
            <br />
          
            <asp:Label ID="GiaTienLabel" runat="server" Text='<%# Eval("GiaTien") %>' />
        
        
           
           
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanSachConnectionString %>" SelectCommand="SELECT * FROM [Sach]"></asp:SqlDataSource>
</asp:Content>
