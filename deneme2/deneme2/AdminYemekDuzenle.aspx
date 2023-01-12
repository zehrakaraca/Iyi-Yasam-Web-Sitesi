<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYemekDuzenle.aspx.cs" Inherits="deneme2.AdminYemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 266px;
        }
        .auto-style8 {
            height: 26px;
            width: 266px;
        }
        .auto-style9 {
            height: 26px;
            margin-left: 50px;
        }
        .auto-style15 {
            height: 45px;
        }
        .auto-style16 {
            width: 800px;
            margin-left: 50px;
            height:auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>&nbsp</div>
        <div style="background-color: #C6F8DA; " class="auto-style16"> 
            <table class="auto-style9">
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Yemek Ad:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="400px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Malzemeler:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="400px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Tarif:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox3" runat="server" Height="150px" Width="400px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Kategori:</strong></td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="400px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style6"></td>
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
