<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_web/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
            background-color: #CCCCCC;
        }

        .auto-style14 {
            width: 29px;
            background-color: #CCCCCC;
        }

        .auto-style13 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style15 {
            width: 32px;
            background-color: #CCCCCC;
        }

        .auto-style16 {
            background-color: #CCCCCC;
        }

        .auto-style12 {
            width: 249px;
        }

        .auto-style11 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17" __designer:mapid="835">
        <tr __designer:mapid="836">
            <td class="auto-style14" __designer:mapid="837"><strong __designer:mapid="838">
                <asp:Button ID="Btn_Ac" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Btn_Ac_Click" />
            </strong></td>
            <td class="auto-style15" __designer:mapid="83a"><strong __designer:mapid="83b">
                <asp:Button ID="Btn_Kapat" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Btn_Kapat_Click" />
            </strong></td>
            <td __designer:mapid="83d" class="auto-style16"><strong>YEMEK LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" Width="447px">
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/choose.png" Width="30px" /></a>
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

