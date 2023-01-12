<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesaj.aspx.cs" Inherits="deneme2.AdminMesaj" %>
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
        .auto-style20 {
            width: 465px;
        }
        .auto-style21 {
            text-align: center;
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
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="35px" Text="+" Width="30px" OnClick="Button1_Click" />
                            </strong>
                        </td>
                        <td class="auto-style12">
                            <strong>
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Height="35px" Text="-" Width="30px" OnClick="Button2_Click" />
                            </strong>
                        </td>
                        <td class="auto-style10"><span class="auto-style8"><strong>Mesaj Listesi</strong></span></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <asp:DataList ID="DataList1" runat="server" Width="894px">
                    <ItemTemplate>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style20">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajAd") %>'></asp:Label>
                                </td>
                                <td class="auto-style21">
                                    <a href="AdminMesajDetay.aspx?MesajId=<%#Eval("MesajId") %>"> <asp:Image ID="Image1" runat="server" Height="45px" ImageUrl="~/icons/message.png" Width="45px" /></a>
                                </td>
                                
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
