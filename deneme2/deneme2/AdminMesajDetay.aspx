<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesajDetay.aspx.cs" Inherits="deneme2.AdminMesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            margin-left: 50px;
        }
        .auto-style8 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="background-color:#C6F8DA;" class="auto-style7">

            <table class="auto-style6">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Gönderen Ad:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mail Adresi:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mesaj:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>
