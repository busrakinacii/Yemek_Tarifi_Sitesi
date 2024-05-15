<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
        height: 22px;
        font-size: large;
        text-align: center;
    }
    .auto-style9 {
        height: 26px;
    }
    .auto-style10 {
        height: 23px;
    }
    .auto-style11 {
        height: 23px;
        text-align: right;
    }
    .auto-style12 {
        text-align: right;
    }
    .auto-style13 {
        height: 26px;
        text-align: right;
    }
        .auto-style15 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
    <tr>
        <td class="auto-style8" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Ad Soyad:</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="TxtAdSoyad" runat="server" Width="300px" CssClass="auto-style15" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Mail Adresiniz:</strong></td>
        <td>
            <asp:TextBox ID="TxtMailAdres" runat="server" Width="300px" CssClass="tb5" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TxtKonu" runat="server" Width="300px" CssClass="auto-style15" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Mesaj:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TxtMesaj" runat="server" Height="150px" TextMode="MultiLine" Width="300px" CssClass="auto-style15"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="BtnGonder" runat="server" CssClass="silver-flat-button" Height="40px" Text="GÖNDER" Width="300px" OnClick="BtnGonder_Click" />
            </strong></td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
</table>
</asp:Content>
