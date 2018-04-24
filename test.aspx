<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaHoaDon" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                MaHoaDon:
                <asp:Label ID="MaHoaDonLabel1" runat="server" Text='<%# Eval("MaHoaDon") %>' />
                <br />
                MaTaiKhoan:
                <asp:TextBox ID="MaTaiKhoanTextBox" runat="server" Text='<%# Bind("MaTaiKhoan") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                Sdt:
                <asp:TextBox ID="SdtTextBox" runat="server" Text='<%# Bind("Sdt") %>' />
                <br />
                NgayMuaHang:
                <asp:TextBox ID="NgayMuaHangTextBox" runat="server" Text='<%# Bind("NgayMuaHang") %>' />
                <br />
                TrangThai:
                <asp:TextBox ID="TrangThaiTextBox" runat="server" Text='<%# Bind("TrangThai") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                MaHoaDon:
                <asp:TextBox ID="MaHoaDonTextBox" runat="server" Text='<%# Bind("MaHoaDon") %>' />
                <br />
                MaTaiKhoan:
                <asp:TextBox ID="MaTaiKhoanTextBox" runat="server" Text='<%# Bind("MaTaiKhoan") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                Sdt:
                <asp:TextBox ID="SdtTextBox" runat="server" Text='<%# Bind("Sdt") %>' />
                <br />
                NgayMuaHang:
                <asp:TextBox ID="NgayMuaHangTextBox" runat="server" Text='<%# Bind("NgayMuaHang") %>' />
                <br />
                TrangThai:
                <asp:TextBox ID="TrangThaiTextBox" runat="server" Text='<%# Bind("TrangThai") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaHoaDon:
                <asp:Label ID="MaHoaDonLabel" runat="server" Text='<%# Eval("MaHoaDon") %>' />
                <br />
                MaTaiKhoan:
                <asp:Label ID="MaTaiKhoanLabel" runat="server" Text='<%# Bind("MaTaiKhoan") %>' />
                <br />
                DiaChi:
                <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                Sdt:
                <asp:Label ID="SdtLabel" runat="server" Text='<%# Bind("Sdt") %>' />
                <br />
                NgayMuaHang:
                <asp:Label ID="NgayMuaHangLabel" runat="server" Text='<%# Bind("NgayMuaHang") %>' />
                <br />
                TrangThai:
                <asp:Label ID="TrangThaiLabel" runat="server" Text='<%# Bind("TrangThai") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\QuanLyBanHang.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [HoaDon] ([MaHoaDon], [MaTaiKhoan], [DiaChi], [Sdt], [NgayMuaHang], [TrangThai]) VALUES (@MaHoaDon, @MaTaiKhoan, @DiaChi, @Sdt, @NgayMuaHang, @TrangThai)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaHoaDon], [MaTaiKhoan], [DiaChi], [Sdt], [NgayMuaHang], [TrangThai] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaTaiKhoan] = @MaTaiKhoan, [DiaChi] = @DiaChi, [Sdt] = @Sdt, [NgayMuaHang] = @NgayMuaHang, [TrangThai] = @TrangThai WHERE [MaHoaDon] = @MaHoaDon">
            <DeleteParameters>
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
                <asp:Parameter Name="MaTaiKhoan" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="Sdt" Type="String" />
                <asp:Parameter Name="NgayMuaHang" Type="DateTime" />
                <asp:Parameter Name="TrangThai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaTaiKhoan" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="Sdt" Type="String" />
                <asp:Parameter Name="NgayMuaHang" Type="DateTime" />
                <asp:Parameter Name="TrangThai" Type="String" />
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

