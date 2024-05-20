<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_web/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.Admin_web.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style12 {
            height: 21px;
            text-align: right;
        }
        
        .auto-style11 {
            height: 21px;
        }
        .auto-style13 {
            font-size: large;
        }
        .auto-style14 {
            position: relative;
            vertical-align: top;
            width: 100%;
            height: 38px;
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
            left: 9px;
            top: 0px;
        }
        .auto-style15 {
            height: 21px;
            text-align: center;
        }
        .auto-style16 {
            height: 21px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style13">
            <tr>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style12">Tarif Ad:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtTarifAd" runat="server" Width="275px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Tarif Malzemeler:</td>
                <td class="auto-style11"><strong>
                    <asp:TextBox ID="TxtTarifMalzeme" runat="server" TextMode="MultiLine" Width="275px" CssClass="tb5" Height="150px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style12">Yapılış:</td>
                <td class="auto-style11"><strong>
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="200px" TextMode="MultiLine" Width="275px" CssClass="tb5"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style12">Tarif Resim:</td>
                <td class="auto-style11">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="277px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Tarif Öneren:</td>
                <td class="auto-style11"><strong>
                    <asp:TextBox ID="TxtTarifOneren" runat="server" CssClass="tb5" Width="275px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style12">Öneren Mail:</td>
                <td class="auto-style11"><strong>
                    <asp:TextBox ID="TxtOnerenMail" runat="server" CssClass="tb5" Width="275px" TextMode="Email"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style12">Kategori:</td>
                <td class="auto-style16">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="275px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style14" OnClick="BtnOnayla_Click" Text="Onayla" Width="220px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
