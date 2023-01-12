<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="BedenKitle.aspx.cs" Inherits="deneme2.BedenKitle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            height: 523px;
        }
        .auto-style22 {
            height: 100px;
        }
        .auto-style23 {
            height: 45px;
            font-size: x-large;
            margin-left: 50px;
        }
        .auto-style24 {
            width: 1059px;
            margin-left: 50px;
        }
    .auto-style25 {
        height: 35px;
    }
    .auto-style26 {
        height: 42px;
        text-align: left;
    }
    .auto-style27 {
        margin-left: 157px;
    }
        .auto-style28 {
            margin-left: 50px;
        }
        .auto-style29 {
            color: #FF0000;
        }
        .auto-style30 {
            margin-left: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style21">
        <div class="auto-style22">&nbsp</div>
        <div class="auto-style23"><strong>Beden Kitle İndeksi Hesapla</strong></div>
        <div>&nbsp</div>
        <div class="auto-style24">Kilonuz (kg):&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div>&nbsp</div>
        <div class="auto-style24">Boyunuz (cm):&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <div class="auto-style25">&nbsp</div>
        <div class="auto-style26">&nbsp<asp:Button ID="Button1" runat="server" CssClass="auto-style27" Height="41px" Text="Hesapla" Width="92px" OnClick="Button1_Click" />
        </div>
        <div>&nbsp</div>
        <div class="auto-style28">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style29"></asp:Label>
        </div>
        <div>&nbsp</div>
        <div class="auto-style30">
            <asp:Label ID="Label2" runat="server" ></asp:Label>
        </div>

    </div>
</asp:Content>
