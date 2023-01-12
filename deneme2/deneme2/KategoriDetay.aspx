<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="deneme2.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            text-align: left;
            height: 50px;
        }
        .auto-style21 {
            height: 315px;
            width: 396px;
            margin-left: 0px;
            margin-right: 778px;
            text-align: left;
        }
        .auto-style24 {
            font-size: x-large;
        }
        .auto-style25 {
            font-size: large;
            margin-top: 0px;
        }
        .auto-style28 {
            font-size: x-large;
            text-align: left;
        }
        .auto-style29 {
            height: 592px;
            width: 1098px;
        }
        .auto-style30 {
            width: 100%;
        }
        .auto-style31 {
            height: 26px;
            background-color: #FFFFFF;
        }
        .auto-style32 {
            text-align: left;
        }
        .auto-style33 {
            text-align: left;
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style=" height:50px;">&nbsp</div>
    <div class="auto-style28"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sağlıklı Tarifler</strong></div>
    <div style=" height:50px;">&nbsp</div>

    <div style=" margin-right:1000px; background-color: #C6F8DA"; class="auto-style21" > 
        <strong><span class="auto-style24">Kategoriler<br />
        <br />
        </span>
          <asp:DataList ID="DataList1" runat="server" CssClass="auto-style25"  Height="194px"  Width="395px">
              <ItemTemplate>
                  <div style="border: thin solid #C0C0C0;">
                  <a href="KategoriDetay.aspx?KategoriId=<%#Eval("KategoriId")%>"> 
                  <asp:Label ID="Label5" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label></a>
                  &nbsp;(
                  <asp:Label ID="Label6" runat="server" Text='<%# Eval("KategoriAdet") %>'></asp:Label>
                  )
                  </div>
              </ItemTemplate>
        </asp:DataList>


        </strong>
        <br />
    </div>
    <div style=" height:40px;">&nbsp</div>

    <div style= "background-color: #C6F8DA; height:auto; " class="auto-style29">
        <asp:DataList ID="DataList2" runat="server" Width="1088px">
            <ItemTemplate>
                <table class="auto-style30">
                    <tr>
                        <td class="auto-style31">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style33"><strong>Malzemeler:</strong>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style32">
                            <strong>Tarif:</strong>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                            <table class="auto-style30">
                                <tr>
                                    <td><strong>Eklenme Tarihi:</strong>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
