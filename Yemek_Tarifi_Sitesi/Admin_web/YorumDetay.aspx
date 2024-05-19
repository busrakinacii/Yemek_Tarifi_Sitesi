<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_web/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.Admin_web.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            position: relative;
            vertical-align: top;
            width: 100%;
            height: 50px;
            padding: 0;
            font-size: 22px;
            color: white;
            text-align: center;
            text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
            background: #bdc3c7;
            border-bottom: 2px solid #acb2b7;
            cursor: pointer;
            -webkit-box-shadow: inset 0 -2px #acb2b7;
            box-shadow: inset 0 -2px #acb2b7;
            border-radius: 10px;
            left: 0px;
            top: 0px;
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
            <td class="auto-style10"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="tb5" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMailAdres" runat="server" CssClass="tb5" TextMode="Email" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="Txticerik" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Yemek</strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" CssClass="tb5" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style11" Height="40px" OnClick="BtnOnayla_Click" Text="Onayla" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
