<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="deneme2.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            height: 315px;
            width: 396px;
            margin-left: 50px;
            margin-right: 0px;
            text-align: left;
        }
        .auto-style24 {
            font-size: x-large;
        }
        .auto-style25 {
            font-size: large;
            margin-top: 0px;
            margin-left: 0px;
        }
        .auto-style28 {
            font-size: x-large;
            text-align: left;
        }
        .auto-style29 {
            margin-left: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style=" height:100px;">&nbsp</div>
    <div class="auto-style28"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sağlıklı Tarifler</strong></div>
    <div style=" height:50px;">&nbsp</div>

    <div>&nbsp<div style="background-color: #C6F8DA"; class="auto-style21" >
        
        <strong><span class="auto-style24">Kategoriler<br />
        <br />
        </span>
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style25" Height="194px"  Width="395px">
            <ItemTemplate>
                
                <div style="border: thin solid #C0C0C0;">
                    <strong>
                        <a href="KategoriDetay.aspx?KategoriId=<%#Eval("KategoriId")%>">
                    <asp:Label ID="KategoriAdLabel" runat="server" Text='<%# Eval("KategoriAd") %>' /></a>
                    &nbsp;( </strong><asp:Label ID="KategoriAdetLabel" runat="server" Text='<%# Eval("KategoriAdet") %>'></asp:Label>
                    )</div>
                

            </ItemTemplate>
        </asp:DataList></strong>
        
    </div> 
    </div>
    <div>&nbsp</div>
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    
    <%--<div class="auto-style29">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
            <ContentTemplate>
                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/slider.xml" />
                   <asp:Timer ID="Timer1" runat="server" Interval="2500"></asp:Timer>
            </ContentTemplate>
    </div>--%>
</asp:Content>
