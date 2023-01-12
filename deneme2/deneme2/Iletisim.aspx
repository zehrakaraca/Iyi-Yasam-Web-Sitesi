<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="deneme2.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style39 {
            height: 75px;
            font-size: xx-large;
            text-align: left;
        }
        .auto-style21 {
            height: 364px;
            margin-top: 0px;
        }
        .auto-style22 {
            width: 39%;
            height: 174px;
        margin-left: 50px;
    }
        .auto-style23 {
            height: 26px;
        }
        .auto-style24 {
        height: 26px;
        text-align: left;
        width: 149px;
    }
        .auto-style25 {
        height: 26px;
        width: 149px;
    }
        .auto-style27 {
            width: 310px;
            text-align: center;
            height: 29px;
        }
        .auto-style29 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
        }
        .auto-style30 {
            height: 100px;
        }
    .auto-style40 {
        height: 557px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style40">
    <div class="auto-style30">&nbsp</div>
    <div class="auto-style39">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İletişim</strong>
    </div>
    <div class="auto-style21">
            <table align="left" class="auto-style22">
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style24">İsim:</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="Txtİsim" runat="server" CssClass="tb5" Width="415px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">Email:</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" Width="415px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">Mesaj:</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Width="415px" Height="150px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style27" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <strong>
                        <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="auto-style29" Height="40px" Width="100px" OnClick="Button1_Click"/>
                        </strong>
                     </td>
                </tr>
            </table>
        </div>
        </div>
</asp:Content>
