<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ThemSP.aspx.cs" Inherits="WebBanSach.ThemSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSach" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="FormView1_ItemInserting">
        <EditItemTemplate>
            MaSach:
            <asp:Label ID="MaSachLabel1" runat="server" Text='<%# Eval("MaSach") %>' />
            <br />
            TenSach:
            <asp:TextBox ID="TenSachTextBox" runat="server" Text='<%# Bind("TenSach") %>' />
            <br />
            GiaTien:
            <asp:TextBox ID="GiaTienTextBox" runat="server" Text='<%# Bind("GiaTien") %>' />
            <br />
            Anh:
            <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
            <br />
            SoLuongCo:
            <asp:TextBox ID="SoLuongCoTextBox" runat="server" Text='<%# Bind("SoLuongCo") %>' />
            <br />
            NamXuatBan:
            <asp:TextBox ID="NamXuatBanTextBox" runat="server" Text='<%# Bind("NamXuatBan") %>' />
            <br />
            TacGia:
            <asp:TextBox ID="TacGiaTextBox" runat="server" Text='<%# Bind("TacGia") %>' />
            <br />
            Mota:
            <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
            <br />
            MaLoai:
            <asp:TextBox ID="MaLoaiTextBox" runat="server" Text='<%# Bind("MaLoai") %>' />
            <br />
            MaNXB:
            <asp:TextBox ID="MaNXBTextBox" runat="server" Text='<%# Bind("MaNXB") %>' />
            <br />
            MaKhuyenMai:
            <asp:TextBox ID="MaKhuyenMaiTextBox" runat="server" Text='<%# Bind("MaKhuyenMai") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            MaSach:
            <asp:TextBox ID="MaSachTextBox" runat="server" Text='<%# Bind("MaSach") %>' />
            <br />
            TenSach:
            <asp:TextBox ID="TenSachTextBox" runat="server" Text='<%# Bind("TenSach") %>' />
            <br />
            GiaTien:
            <asp:TextBox ID="GiaTienTextBox" runat="server" Text='<%# Bind("GiaTien") %>' />
            <br />
            Anh:
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            SoLuongCo:
            <asp:TextBox ID="SoLuongCoTextBox" runat="server" Text='<%# Bind("SoLuongCo") %>' />
            <br />
            NamXuatBan:
            <asp:TextBox ID="NamXuatBanTextBox" runat="server" Text='<%# Bind("NamXuatBan") %>' />
            <br />
            TacGia:
            <asp:TextBox ID="TacGiaTextBox" runat="server" Text='<%# Bind("TacGia") %>' />
            <br />
            Mota:
            <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
            <br />
            MaLoai:
            <asp:TextBox ID="MaLoaiTextBox" runat="server" Text='<%# Bind("MaLoai") %>' />
            <br />
            MaNXB:
            <asp:TextBox ID="MaNXBTextBox" runat="server" Text='<%# Bind("MaNXB") %>' />
            <br />
            MaKhuyenMai:
            <asp:TextBox ID="MaKhuyenMaiTextBox" runat="server" Text='<%# Bind("MaKhuyenMai") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaSach:
            <asp:Label ID="MaSachLabel" runat="server" Text='<%# Eval("MaSach") %>' />
            <br />
            TenSach:
            <asp:Label ID="TenSachLabel" runat="server" Text='<%# Bind("TenSach") %>' />
            <br />
            GiaTien:
            <asp:Label ID="GiaTienLabel" runat="server" Text='<%# Bind("GiaTien") %>' />
            <br />
            Anh:
            <asp:Label ID="AnhLabel" runat="server" Text='<%# Bind("Anh") %>' />
            <br />
            SoLuongCo:
            <asp:Label ID="SoLuongCoLabel" runat="server" Text='<%# Bind("SoLuongCo") %>' />
            <br />
            NamXuatBan:
            <asp:Label ID="NamXuatBanLabel" runat="server" Text='<%# Bind("NamXuatBan") %>' />
            <br />
            TacGia:
            <asp:Label ID="TacGiaLabel" runat="server" Text='<%# Bind("TacGia") %>' />
            <br />
            Mota:
            <asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("Mota") %>' />
            <br />
            MaLoai:
            <asp:Label ID="MaLoaiLabel" runat="server" Text='<%# Bind("MaLoai") %>' />
            <br />
            MaNXB:
            <asp:Label ID="MaNXBLabel" runat="server" Text='<%# Bind("MaNXB") %>' />
            <br />
            MaKhuyenMai:
            <asp:Label ID="MaKhuyenMaiLabel" runat="server" Text='<%# Bind("MaKhuyenMai") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
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
