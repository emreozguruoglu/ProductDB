<%@ Page Title="" Language="C#" MasterPageFile="~/Sayfalar/MasterPage.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="ProductDB.Sayfalar.URUNEKLE" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ContentTemplate>
            <table>
                <tr>
                    <td>Prudoct Name :</td>
                    <td>
                        <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Category Id:</td>
                    <td>
                        <asp:DropDownList ID="drpCategoryId" runat="server" Height="16px" OnSelectedIndexChanged="Page_Load" Width="126px">
                        </asp:DropDownList></td>
                    
                </tr>
                <tr>
                    <td>Price :</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Image URL :</td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="FileUpload1" runat="server"  />
                    </td>
                </tr>
                <tr>
                    <td>Description :</td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Status :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnEkle" runat="server" OnClick="btnEkle_Click" Text="Ekle" />
                    </td>
                    <td>
                        <asp:Button ID="btnGeri" runat="server" Text="Geri" OnClick="btnGeri_Click" />

                    </td>
                </tr>
            </table>
        </ContentTemplate>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 28px;
        }
    </style>
</asp:Content>

