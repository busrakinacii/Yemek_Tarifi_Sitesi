<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        height: 23px;
    }
    .auto-style6 {
        height: 23px;
        text-align: right;
    }
    .auto-style7 {
        text-align: right;
    }
    .auto-style8 {
        height: 23px;
        text-align: center;
            width: 700px;
        }
    .auto-style9 {
        font-weight: bold;
        font-style: italic;
    }
        .auto-style10 {
            width: 100%;
            height: 36px;
            margin-left: 0px;
        }
        .auto-style11 {
            width: 700px;
        }
        .auto-style12 {
            height: 30px;
            width: 700px;
            margin-top: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Tarif Ad:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Malzemeler:</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Yapılış:</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Resim:</strong></td>
        <td class="auto-style12">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Tarif Öneren:</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="TxtTarifOner" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mail Adresi:</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="TxtMailAdres" runat="server" TextMode="Email" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style8"><strong><em>
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#FF9999" BorderColor="White" CssClass="auto-style9" Height="40px" Text="TARİF ÖNER" Width="150px" OnClick="BtnTarifOner_Click" />
            </em></strong></td>
    </tr>
</table>
</asp:Content>
