<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Products_Admin.aspx.cs" Inherits="WebBanSach.Products_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <a href="ThemSP.aspx" class="button">Thêm sản phẩm</a>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSach" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MaSach" HeaderText="MaSach" ReadOnly="True" SortExpression="MaSach" />
            <asp:BoundField DataField="TenSach" HeaderText="TenSach" SortExpression="TenSach" />
            <asp:BoundField DataField="GiaTien" HeaderText="GiaTien" SortExpression="GiaTien" />
            <asp:TemplateField HeaderText="Ảnh">
                <ItemTemplate>
                    <asp:Image ID="anh" runat="server" ImageUrl='<%#Eval("Anh") %>' Height="30px" Width="30px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="SoLuongCo" HeaderText="SoLuongCo" SortExpression="SoLuongCo" />
            <asp:BoundField DataField="NamXuatBan" HeaderText="NamXuatBan" SortExpression="NamXuatBan" />
            <asp:BoundField DataField="TacGia" HeaderText="TacGia" SortExpression="TacGia" />
            <asp:BoundField DataField="Mota" HeaderText="Mota" SortExpression="Mota" />
            <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
            <asp:BoundField DataField="MaNXB" HeaderText="MaNXB" SortExpression="MaNXB" />
            <asp:BoundField DataField="MaKhuyenMai" HeaderText="MaKhuyenMai" SortExpression="MaKhuyenMai" />
            <asp:TemplateField HeaderText="Xóa" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:HyperLinkField DataNavigateUrlFields="MaSach" DataNavigateUrlFormatString='Admin_Update.aspx?MaSach={0}' Text="Edit" HeaderText="Edit" />
            
        </Columns>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanSachConnectionString %>" DeleteCommand="DELETE FROM [Sach] WHERE [MaSach] = @MaSach" InsertCommand="INSERT INTO [Sach] ([MaSach], [TenSach], [GiaTien], [Anh], [SoLuongCo], [NamXuatBan], [TacGia], [Mota], [MaLoai], [MaNXB], [MaKhuyenMai]) VALUES (@MaSach, @TenSach, @GiaTien, @Anh, @SoLuongCo, @NamXuatBan, @TacGia, @Mota, @MaLoai, @MaNXB, @MaKhuyenMai)" SelectCommand="SELECT * FROM [Sach]" UpdateCommand="UPDATE [Sach] SET [TenSach] = @TenSach, [GiaTien] = @GiaTien, [Anh] = @Anh, [SoLuongCo] = @SoLuongCo, [NamXuatBan] = @NamXuatBan, [TacGia] = @TacGia, [Mota] = @Mota, [MaLoai] = @MaLoai, [MaNXB] = @MaNXB, [MaKhuyenMai] = @MaKhuyenMai WHERE [MaSach] = @MaSach">
        <DeleteParameters>
            <asp:Parameter Name="MaSach" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSach" Type="String" />
            <asp:Parameter Name="TenSach" Type="String" />
            <asp:Parameter Name="GiaTien" Type="Decimal" />
            <asp:Parameter Name="Anh" Type="String" />
            <asp:Parameter Name="SoLuongCo" Type="Int32" />
            <asp:Parameter DbType="Date" Name="NamXuatBan" />
            <asp:Parameter Name="TacGia" Type="String" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="MaLoai" Type="String" />
            <asp:Parameter Name="MaNXB" Type="String" />
            <asp:Parameter Name="MaKhuyenMai" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSach" Type="String" />
            <asp:Parameter Name="GiaTien" Type="Decimal" />
            <asp:Parameter Name="Anh" Type="String" />
            <asp:Parameter Name="SoLuongCo" Type="Int32" />
            <asp:Parameter DbType="Date" Name="NamXuatBan" />
            <asp:Parameter Name="TacGia" Type="String" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="MaLoai" Type="String" />
            <asp:Parameter Name="MaNXB" Type="String" />
            <asp:Parameter Name="MaKhuyenMai" Type="String" />
            <asp:Parameter Name="MaSach" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
