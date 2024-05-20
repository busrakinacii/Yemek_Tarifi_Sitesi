<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_web/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.Admin_web.HakkimizdaAdmin" %>
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

        .auto-style19 {
            position: relative;
            vertical-align: top;
            width: 100%;
            height: 43px;
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
            left: 0px;
            top: 0px;
        }
        .auto-style20 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-size: medium;
            font-style: italic;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17" __designer:mapid="835">
        <tr __designer:mapid="836">
            <td class="auto-style14" __designer:mapid="837"><strong __designer:mapid="838">
                <asp:Button ID="Btn_Ac" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Btn_Ac_Click"/>
                </strong></td>
            <td class="auto-style15" __designer:mapid="83a"><strong __designer:mapid="83b">
                <asp:Button ID="Btn_Kapat" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Btn_Kapat_Click" />
                </strong></td>
            <td __designer:mapid="83d" class="auto-style16"><strong>HAKKIMIZDA</strong></td>
        </tr>
    </table>
    <div class="auto-style3">
        <asp:Panel ID="Panel1" runat="server">
            <em>
            <asp:TextBox ID="TxtHakkimizda" runat="server" CssClass="auto-style20" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
            </em><strong>
            <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style19" Text="Güncelle" Width="200px" OnClick="BtnGuncelle_Click" />
            </strong>
        </asp:Panel>
    </div>
</asp:Content>
