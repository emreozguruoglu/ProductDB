<%@ Page Title="" Language="C#" MasterPageFile="~/Sayfalar/MasterPage.Master" AutoEventWireup="true" CodeBehind="UrunGuncelle.aspx.cs" Inherits="ProductDB.Sayfalar.UrunGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table>
                <tr>
                    <td>Güncellenecek ID:</td>
                    <td>
                        <asp:TextBox ID="txtGuncellenecekId" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnSorgula" runat="server" Text="Sorgula" OnClick="btnSorgula_Click" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1">Price :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Image URL :</td>
                    <td>
                        <asp:TextBox ID="txtImageUrl" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Description :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Status :</td>
                    <td>
                        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnGuncelle" runat="server" OnClick="btnGuncelle_Click" Text="Bilgileri Güncelle" />
                    </td>
                    <td>
                        <asp:Button ID="btnGeri" runat="server" OnClick="btnGeri_Click" Text="GERİ " />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
