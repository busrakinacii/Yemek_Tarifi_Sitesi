<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_web/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.Admin_web.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            margin-left: 80px;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            text-align: right;
            height: 26px;
        }
        .auto-style13 {
            height: 26px;
            margin-left: 80px;
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
            <td class="auto-style12"><strong>Mesaj Gönderen:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="TxtMesajGonderen" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Başlık:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Mail Adresi:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Mesaj İçerik:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="Txticerik" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
