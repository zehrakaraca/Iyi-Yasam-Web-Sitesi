<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategoriDuzenle.aspx.cs" Inherits="deneme2.AdminKategoriDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 266px;
        }
        .auto-style8 {
            width: 266px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style14 {
            width: 266px;
            height: 45px;
        }
        .auto-style15 {
            height: 45px;
        }
        .auto-style16 {
            width: 800px;
            margin-left: 50px;
            height:200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>&nbsp</div>
        <div style="background-color: #C6F8DA; " class="auto-style16"> 
            <table class="auto-style6">
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>KATEGORİ AD:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>ADET:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Güncelle" Height="35px" Width="127px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
