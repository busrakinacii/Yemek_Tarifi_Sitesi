<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            font-size: xx-large;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            font-size: medium;
        }
        .auto-style10 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text="Label" ForeColor="White"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style8">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: dotted; border-bottom-width: thin; border-bottom-color: #FFFFFF">
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style9" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp; -&nbsp; </strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style10" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
