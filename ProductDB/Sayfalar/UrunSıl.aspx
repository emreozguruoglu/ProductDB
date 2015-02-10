<%@ Page Title="" Language="C#" MasterPageFile="~/Sayfalar/MasterPage.Master" AutoEventWireup="true" CodeBehind="UrunSıl.aspx.cs" Inherits="ProductDB.Sayfalar.UrunSıl" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="updatepanelSil" runat="server" />
        <ContentTemplate>
            <table>
                <tr>
                    <td>Silinecek Ürün ID'si : </td>
                    <td>
                        <asp:TextBox ID="txtSilinecekId" runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="btnDbSil" runat="server" OnClick="btnDbSil_Click" Text="Sil" />
                        <ajax:ConfirmButtonExtender ID="Button1_ConfirmButtonExtender" runat="server"
                            ConfirmText="Really" OnClientCancel="btnGeri"
                            Enabled="True" TargetControlID="btnDbSil">
                        </ajax:ConfirmButtonExtender>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnGeri" runat="server" Text="Geri" OnClick="btnGeri_Click" />
                    </td>
                    <td><a href="http://localhost:56932/Pages/Products.aspx" target="_blank">ID Listesi</a></td>
                </tr>
            </table>
        </ContentTemplate>
</asp:Content>
