<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="KacKalori.aspx.cs" Inherits="deneme2.KacKalori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            height: 855px;
            text-align: center;
        }
        .auto-style22 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style23 {
            height: 100px;
        }
        .auto-style24 {
            text-align: left;
        }
        .auto-style25 {
            height: 50px;
        }
        .auto-style26 {
            height: 162px;
        }
        .auto-style27 {
            width: 150px;
            height: 150px;
            float: left;
            margin-left: 39px;
        }
        .auto-style30 {
        color: #E8A21B;
    }
    .auto-style31 {
        color: #04337A;
    }
    .auto-style32 {
        color: #CAC42D;
    }
        .auto-style33 {
            height: 334px;
            text-align: left;
            margin-left: 58px;
        }
        .auto-style34 {
            width: 130px;
            height: 130px;
            float: left;
            margin-left: 39px;
        }
        .auto-style35 {
            height: 334px;
            text-align: left;
            margin-left: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style21">
        <div class="auto-style23">&nbsp</div>
        <%--Text="  Aramak İstediğiniz Besin Adı Giriniz"--%>
        <asp:TextBox ID="TextBox1" runat="server"  CssClass="auto-style22" Height="38px" Width="1000px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="ARA" Height="42px" OnClick="Button1_Click" style="width: 49px" />
        <div class="auto-style25">&nbsp<%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            </asp:GridView>--%>
        </div>
        <div class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sık Aranılan Besinler</strong></div>
        <div class="auto-style26">
            <img alt="" class="auto-style27" src="Img/muz.jpg" />&nbsp&nbsp&nbsp<div class="auto-style33">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("BesinAd") %>'></asp:Label>
                    </strong>&nbsp;(100gr):<br />
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("BesinKalori") %>'></asp:Label>
                    &nbsp;kalori<br />
                    <br />
                    <span class="auto-style30">Karbonhidrat:</span><asp:Label ID="Label3" runat="server" Text='<%# Eval("BesinKarbonhidrat") %>'></asp:Label>
                    <br />
                    <span class="auto-style31">Protein:</span><asp:Label ID="Label4" runat="server" Text='<%# Eval("BesinProtein") %>'></asp:Label>
                    <br />
                    <span class="auto-style32">Yağ:</span><asp:Label ID="Label5" runat="server" Text='<%# Eval("BesinYag") %>'></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </div>
        </div>
        <div class="auto-style26">
            <img alt="" class="auto-style34" src="Img/peynir.jpg" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<div class="auto-style33">
            <asp:DataList ID="DataList2" runat="server">
                <ItemTemplate>
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("BesinAd") %>'></asp:Label>
                    </strong>&nbsp;(100gr):<br />
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("BesinKalori") %>'></asp:Label>
                    &nbsp;kalori<br />
                    <br />
                    <span class="auto-style30">Karbonhidrat:</span><asp:Label ID="Label3" runat="server" Text='<%# Eval("BesinKarbonhidrat") %>'></asp:Label>
                    <br />
                    <span class="auto-style31">Protein:</span><asp:Label ID="Label4" runat="server" Text='<%# Eval("BesinProtein") %>'></asp:Label>
                    <br />
                    <span class="auto-style32">Yağ:</span><asp:Label ID="Label5" runat="server" Text='<%# Eval("BesinYag") %>'></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </div>

        </div>
    </div>
</asp:Content>
