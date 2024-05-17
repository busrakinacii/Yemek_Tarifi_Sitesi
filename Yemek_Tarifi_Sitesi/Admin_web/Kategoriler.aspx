<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_web/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.Admin_web.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        background-color: #CCCCCC;
    }
    .auto-style11 {
        text-align: right;
    }
    .auto-style12 {
        width: 249px;
    }
        .auto-style13 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style14 {
            width: 29px;
        }
        .auto-style15 {
            width: 32px;
        }
        .auto-style16 {
            position: relative;
            vertical-align: top;
            width: 183px;
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
            font-weight: bold;
            left: -1px;
            top: 0px;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style18 {
            width: 167px;
        }
        .auto-style19 {
            text-align: left;
            width: 167px;
        }
        .auto-style20 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <div class="auto-style3">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style14"><strong>
                        <asp:Button ID="Btn_Ac" runat="server" CssClass="auto-style13" Height="30px" OnClick="Btn_Ac_Click" Text="+" Width="30px" />
                        </strong></td>
                    <td class="auto-style15"><strong>
                        <asp:Button ID="Btn_Kapat" runat="server" CssClass="auto-style13" Height="30px" OnClick="Btn_Kapat_Click" Text="-" Width="30px" />
                        </strong></td>
                    <td><strong>KATEGORİ LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
        <asp:DataList ID="DataList1" runat="server" Width="447px" >
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                           <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid") %>&islem=sil" ><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/Delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style11">
                           <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>" ><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/Update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <br />
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style10">
        <table class="auto-style7">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Btn_Ac0" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Btn_Ac0_Click" />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Btn_Kapat0" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Btn_Kapat0_Click" />
                    </strong></td>
                <td class="auto-style3"><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>KATEGORİ AD:</strong></td>
                <td>
                    <asp:TextBox ID="TxtKategoriAd" runat="server" Width="172px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>KATEGORİ İKON:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style20" Width="177px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style16" Height="30px" OnClick="BtnEkle_Click" Text="Ekle" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
