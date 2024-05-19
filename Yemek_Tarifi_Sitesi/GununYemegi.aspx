<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style8 {
            text-align: right;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Height="500px" Width="445px">
        <ItemTemplate>
            <table class="auto-style1">
               
                <tr>
                    <td class="auto-style5" style="text-align: center">
                        <asp:Label ID="Label7" runat="server" style="font-weight: 700; font-size: x-large; text-align: center;" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong><span class="auto-style6">Malzemeler:</span></strong>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong><span class="auto-style6">Yapılışı:</span></strong>&nbsp;
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; margin-left: 120px">
                        <asp:Image ID="Image2" runat="server" Height="150px" Width="418px" ImageUrl="~/Resimler/Kiymali_Patlican.jpg" />
                    </td>
                </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style9"><strong>Puan:&nbsp;</strong>&nbsp;<asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style8"><strong>Eklenme Tarihi:&nbsp;</strong>
                                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                </tr>
              
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
