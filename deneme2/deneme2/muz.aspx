<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="muz.aspx.cs" Inherits="deneme2.muz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 176px;
            height: 170px;
            margin-left: 30px;
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
            margin-left: 30px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img alt="" class="auto-style1" src="Img/muz.jpg" />
            <br />
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style33">
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
            <br />
        </div>
    </form>
</body>
</html>
