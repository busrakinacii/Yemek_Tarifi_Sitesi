<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 289px;
            font-size: xx-large;
        }
        .auto-style10 {
            width: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style7">
        <table class="auto-style8">
            <tr>
                <td class="auto-style9">
        <strong>&nbsp;&nbsp;&nbsp; <span class="auto-style4">HAKKIMIZDA</span></strong></td>
                <td class="auto-style10">&nbsp;<strong><asp:Image ID="Image4" runat="server" Height="98px" ImageUrl="~/Resimler/2.jpg" Width="145px" />
                    </strong></td>
            </tr>
        </table>
    </p>
    <table class="auto-style8">
        <tr>
            <td class="auto-style3">
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
                <br />
            </td>
        </tr>
    </table>
    <asp:Image ID="Image1" runat="server" Height="160px" ImageUrl="~/Resimler/blog.jpg" Width="450px" />
    <table class="auto-style8">
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
