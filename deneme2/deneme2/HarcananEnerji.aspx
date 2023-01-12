<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="HarcananEnerji.aspx.cs" Inherits="deneme2.HarcananEnerji" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            font-size: x-large;
            margin-left: 40px;
        }
        .auto-style22 {
            margin-left: 775px;
        }
        .auto-style23 {
            width: 600px;
            margin-left: 40px;
        }
        .auto-style24 {
            margin-left: 40px;
        }
        .auto-style25 {
            width: 180px;
        }
        .auto-style26 {
            margin-left: 158px;
        }
        .auto-style27 {
            margin-left: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:100px;">&nbsp</div>
        <div class="auto-style21"><strong>Fiziksel Aktivite ve Harcanan Enerji</strong></div>
        <div class="auto-style22">Kilonuz (kg):&nbsp; &nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div>&nbsp</div>
        <div class="auto-style24"><strong>Aktiviteler</strong></div>
        <div>&nbsp</div>
        <div>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style25">Yürüyüş (dk):</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Text ="0"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">Koşu (dk);</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Text ="0"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">Yüzme (dk):</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Text ="0"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">Tenis (dk):</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Text ="0"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">Yazı Yazma&nbsp; (dk):</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Text ="0"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">Ütü Yapma (dk):</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Text ="0"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <div>&nbsp</div>
            <div class="auto-style26">&nbsp<asp:Button ID="Button1" runat="server" Text="Hesapla" OnClick="Button1_Click" />
            </div>
            <div>&nbsp</div>
            <div class="auto-style27">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
