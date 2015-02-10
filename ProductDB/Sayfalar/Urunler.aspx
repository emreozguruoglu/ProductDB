<%@ Page Title="" Language="C#" MasterPageFile="~/Sayfalar/MasterPage.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="ProductDB.Sayfalar.WebForm2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <a href="UrunSıl.aspx">URUN SIL</a>
    <a href="UrunEkle.aspx">URUN EKLE</a>
    <a href="UrunGuncelle.aspx">URUN GUNCELLE</a>
    <a href="http://localhost:56932/Pages/HomePage.aspx" target="_blank">MİSAFİR GÖZÜNDEN</a>

</asp:Content>
