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
        .auto-style11 {
            height: 21px;
        }
        .auto-style12 {
            height: 21px;
            text-align: right;
        }
        .auto-style13 {
            font-weight: bold;
            font-size: medium;
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
        <br />
        <div class="auto-style3" style="background-color: #FFCCFF">YORUM YAPMA PANELİ</div>
          <asp:Panel ID="Panel1" runat="server">
              <table class="auto-style8">
                  <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style12">Ad Soyad:</td>
                      <td class="auto-style11">
                          <asp:TextBox ID="TxtYorumAdSoyad" runat="server" Width="204px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style12">Mail:</td>
                      <td class="auto-style11"><strong>
                          <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="205px"></asp:TextBox>
                          </strong></td>
                  </tr>
                  <tr>
                      <td class="auto-style12">Yorumunuz:</td>
                      <td class="auto-style11"><strong>
                          <asp:TextBox ID="TxtYorum" runat="server" Height="97px" TextMode="MultiLine" Width="206px"></asp:TextBox>
                          </strong></td>
                  </tr>
                  <tr>
                      <td class="auto-style12">&nbsp;</td>
                      <td class="auto-style11">
                          <asp:Button ID="BtnGonder" runat="server" CssClass="auto-style13" OnClick="BtnGonder_Click" Text="Yorum Yap" Width="215px" />
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style12">&nbsp;</td>
                      <td class="auto-style11">&nbsp;</td>
                  </tr>
              </table>
    </asp:Panel>
</asp:Content>