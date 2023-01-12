<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Hesaplamalar.aspx.cs" Inherits="deneme2.Hesaplamalar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            height: 100px;
        }
        .auto-style22 {
            font-size: x-large;
            margin-left: 50px;
        }
        .auto-style23 {
            height: 495px;
        }
        .auto-style24 {
            height: 35px;
        }
        .auto-style25 {
            margin-left: 50px;
        }
        .auto-style26 {
            height: 25px;
        }
        .auto-style27 {
            font-size: large;
        }
        .auto-style28 {
            margin-left: 50px;
            color: #15C67B;
            font-size: large;
        }
        .auto-style29 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style23">
        <div class="auto-style21">&nbsp</div>
        <div class="auto-style22"><strong>Hesaplamalar</strong></div>
        <div class="auto-style24">&nbsp</div>
        <div class="auto-style28">Sağlıklı Beslenme Yolculuğuna Planlı Bir Şekilde Başlayalım...</div>
        
        <div class="auto-style24">&nbsp</div>
        <div class="auto-style25">
            <a href="BedenKitle.aspx"><asp:Label ID="Label1" runat="server" Text="Beden Kitle İndeksi Hesapla" CssClass="auto-style27"></asp:Label></a>
            <br class="auto-style27" />
            <span class="auto-style29">Boy ve kilo değerlerinize göre hangi ağırlık sınıfında olduğunuzu öğrenebilirsiniz ve ideal kilosunu görebilirsiniz.</span></div>
        <div class="auto-style26">&nbsp</div>
        <div class="auto-style25">
            <a href="HarcananEnerji.aspx"><asp:Label ID="Label2" runat="server" Text="Fiziksel Aktivite ve Harcanan Enerji" CssClass="auto-style27"></asp:Label></a>
            <br class="auto-style27" />
            <span class="auto-style29">Gün içinde yapılan fiziksel aktivitelerin yoğunluğuna ve kilonuza göre kaç kalori yaktığınızı hesaplayabilirsiniz.</span></div>
    </div>
</asp:Content>
