﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategori.aspx.cs" Inherits="deneme2.AdminKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 900px;
            margin-left: 58px;
            height: auto;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            width: 1000px;
            background-color: #C6F8DA;
            margin-left: 80px;
            height: auto;
        }
        .auto-style10 {
            height: 33px;
        }
        .auto-style11 {
            height: 33px;
            width: 47px;
        }
        .auto-style12 {
            height: 33px;
            width: 56px;
        }
        .auto-style14 {
            width: 159px;
        }
        .auto-style15 {
            width: 159px;
            height: 29px;
        }
        .auto-style16 {
            height: 29px;
        }
        .auto-style18 {
            text-align: right;
        }
        .auto-style19 {
            text-align: right;
            width: 264px;
        }
        .auto-style20 {
            width: 389px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>&nbsp</div>
    <div class="auto-style9">
        
        <div class="auto-style6">
            <asp:Panel ID="Panel1" runat="server">
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style11">
                            <strong>
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="35px" OnClick="Button1_Click" Text="+" Width="30px" />
                            </strong>
                        </td>
                        <td class="auto-style12">
                            <strong>
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Height="35px" OnClick="Button2_Click" Text="-" Width="30px" />
                            </strong>
                        </td>
                        <td class="auto-style10"><span class="auto-style8"><strong>Kategori Listesi</strong></span></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <asp:DataList ID="DataList1" runat="server" Width="894px">
                    <ItemTemplate>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style20">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                                </td>
                                <td class="auto-style19">
                                    <a href="AdminKategori.aspx?KategoriId=<%#Eval("KategoriId")%>&islem=sil"> <asp:Image ID="Image1" runat="server" Height="48px" ImageUrl="~/icons/delete.png" Width="36px" /></a>
                                </td>
                                <td class="auto-style18">
                                    <a href="AdminKategoriDuzenle.aspx?KategoriId=<%#Eval("KategoriId")%>"><asp:Image ID="Image2" runat="server" Height="27px" ImageUrl="~/icons/update.png" Width="35px" /></a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server">
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style11">
                            <strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Height="35px" Text="+" Width="30px" OnClick="Button3_Click" />
                            </strong>
                        </td>
                        <td class="auto-style12">
                            <strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Height="35px" Text="-" Width="30px" OnClick="Button4_Click" />
                            </strong>
                        </td>
                        <td class="auto-style10"><span class="auto-style8"><strong>Kategori Ekleme</strong></span></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server">
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15">Kategori Ad:</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style16">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button5" runat="server" Height="30px" Text="Ekle" Width="100px" OnClick="Button5_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
