<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">

        .auto-style7 {
            width: 100%;
        }
        .auto-style9 {
            text-align: center;
            background-color: #FFCCFF;
        }
        .auto-style13 {
            font-size: x-large;
            color: #FF5050;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style10 {
            font-size: medium;
        }
        .auto-style11 {
            color: #FFFFFF;
        }
        .auto-style12 {
            font-size: medium;
            color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style7">
            <tr>
                <td class="auto-style9"><strong><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style8"><strong><span class="auto-style10">Malzemeler: </span></strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><span class="auto-style10"><strong>Yemek Tarifi:</strong></span>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong><span class="auto-style10">Eklenme Tarihi:</span></strong>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- <strong><span class="auto-style10">Puan: </span><em>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: double; border-bottom-width: thick; border-bottom-color: #000000;"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

</asp:Content>
