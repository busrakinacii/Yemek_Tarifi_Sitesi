<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_web/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.Admin_web.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style11 {
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
            <td class="auto-style11"><strong>YEMEK AD:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemekAd" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>MALZEMELER:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzemeler" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>TARİF:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemekTarif" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>KATEGORİ:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style10" OnClick="BtnGuncelle_Click" Text="GÜNCELLE" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
