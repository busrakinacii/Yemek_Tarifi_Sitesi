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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <div class="auto-style3">
            <strong>KATEGORİ LİSTESİ</strong></div>
    </asp:Panel>
        <asp:DataList ID="DataList1" runat="server" Width="447px" >
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/Delete.png" Width="30px" />
                        </td>
                        <td class="auto-style11">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/Update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
