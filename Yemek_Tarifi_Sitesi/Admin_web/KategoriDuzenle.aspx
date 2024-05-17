<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_web/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.Admin_web.KategoriDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>KATEGORİ AD:</strong></td>
            <td>
                <asp:TextBox ID="TxtKategoriAd" runat="server" CssClass="tb5" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>ADET:</strong></td>
            <td>
                <asp:TextBox ID="TxtAdet" runat="server" CssClass="tb5" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="215px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="silver-flat-button" Height="35px" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="220px" />
            </td>
        </tr>
    </table>
</asp:Content>
