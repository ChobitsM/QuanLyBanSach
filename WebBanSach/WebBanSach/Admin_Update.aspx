<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Admin_Update.aspx.cs" Inherits="WebBanSach.Admin_Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSach" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdating="FormView1_ItemUpdating">
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

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanSachConnectionString %>" SelectCommand="SELECT * FROM [Sach] where MaSach = @MaSach">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSach" Type="String" QueryStringField="MaSach" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
