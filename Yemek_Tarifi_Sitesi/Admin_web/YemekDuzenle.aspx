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
        .auto-style13 {
            position: relative;
            vertical-align: top;
            width: 146px;
            height: 31px;
            padding: 0;
            font-size: 10pt;
            text-align: center;
            text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
            background: #0099CC;
            border-bottom: 2px solid #acb2b7;
            cursor: pointer;
            -webkit-box-shadow: inset 0 -2px #acb2b7;
            box-shadow: inset 0 -2px #acb2b7;
            border-radius: 10px;
            font-weight: bold;
            left: 0px;
            top: 0px;
        }
        .auto-style14 {
            height: 35px;
        }
        .auto-style15 {
            text-align: center;
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>YEMEK AD:</strong></td>
            <td colspan="2">
                <asp:TextBox ID="TxtYemekAd" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>MALZEMELER:</strong></td>
            <td colspan="2">
                <asp:TextBox ID="TxtMalzemeler" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>TARİF:</strong></td>
            <td colspan="2">
                <asp:TextBox ID="TxtYemekTarif" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>KATEGORİ:</strong></td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"><strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style10" OnClick="BtnGuncelle_Click" Text="GÜNCELLE" Width="138px" />
                </strong></td>
            <td class="auto-style15"><strong>
                <asp:Button ID="BtnSec" runat="server" CssClass="auto-style13" OnClick="BtnSec_Click" Text="Günün Yemeği Seç" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
