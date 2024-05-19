<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_web/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.Admin_web.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

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
        .auto-style12 {
        width: 249px;
    }
        .auto-style11 {
        text-align: right;
    }
        .auto-style16 {
            background-color: #CCCCCC;
        }
        .auto-style17 {
            width: 100%;
            background-color: #CCCCCC;
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
            <td __designer:mapid="83d" class="auto-style16"><strong>ONAYLI YORUM LİSTESİ</strong></td>
        </tr>
    </table>
        <asp:DataList ID="DataList1" runat="server" Width="447px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                           <a href="Yorumlar.aspx?Yorumid=<%# Eval("Yorumid") %>&islem=sil" ><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/Delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style11">
                           <a href="Yorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>" ><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/Update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
       <br />
    <table class="auto-style17" __designer:mapid="835">
        <tr __designer:mapid="836">
            <td class="auto-style14" __designer:mapid="837"><strong __designer:mapid="838">
                <asp:Button ID="Btn_Ac0" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Btn_Ac0_Click"  />
                </strong></td>
            <td class="auto-style15" __designer:mapid="83a"><strong __designer:mapid="83b">
                <asp:Button ID="Btn_Kapat0" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Btn_Kapat0_Click"  />
                </strong></td>
            <td __designer:mapid="83d" class="auto-style16"><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
        </tr>
    </table>
 

        <asp:DataList ID="DataList2" runat="server" Width="447px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                           <a href="Yorumlar.aspx?Yorumid=<%# Eval("Yorumid") %>&islem=sil" ><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/Delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style11">
                           <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>" ><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/Update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        

    </asp:Content>
