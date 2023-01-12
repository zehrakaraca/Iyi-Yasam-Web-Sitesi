<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="deneme2.Giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 450px;
            height: 400px;
            text-align: center;
        }
    </style>
    <style>
        .backimg{
            background-image:url(Img/anasayfa_foto.png);
            width:100%;
            height:100%;
            background-repeat:no-repeat;
            background-size:cover;
        }
        .auto-style16 {
            color: #FFFFFF;
            text-align: left;
        }
        .auto-style39 {
            width: 100px;
            height: 10px;
        }
        .auto-style30 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
        }
        .auto-style21 {
            height: 100px;
        }
    .auto-style22 {
        width: 100%;
        height: 100%;
        background-size: cover;
        margin-top: 0px;
        background-image: url('Img/anasayfa_foto.png');
        background-repeat: no-repeat;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style22">
    <div class="auto-style21">&nbsp</div>
    
    <div style=" margin-left:750px; background-color: #15C67B"; class="auto-style18" >
                    
                     <div style="width:100px; height:50px;">&nbsp</div>
                    <div class="auto-style16" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kullanıcı İsmi:</div>
                     
                         <asp:TextBox ID="TextBox1" runat="server" Height="43px" Width="294px" CssClass="tb5" ></asp:TextBox>
                     
                    <div style=" height:25px;">&nbsp</div>
                    <div class="auto-style16" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Şifre:</div>
                     

                         <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="43px" Width="294px" CssClass="tb5"></asp:TextBox>
                     
                    <div style=" height:25px;">&nbsp</div>
                    <div class="auto-style16" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                     
                         
                    <div class="auto-style39">&nbsp</div>
                    <asp:Button ID="Button1" runat="server" Text="Kaydol" OnClick="Button1_Click" CssClass="auto-style30" Height="50px" Width="100px" />
                    
                </div>
        <div style=" height:100px;">&nbsp</div>
        </div>
</asp:Content>
