<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            text-align: center;
        }

        .auto-style8 {
            color: #06283D;
        }

        .auto-style10 {
            text-decoration: none;
        }

        .auto-style15 {
            height: 20px;
            width: 700px;
        }
        .auto-style13 {
            font-size: 15pt;
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style20 {
            border: 1px solid #456879;
            border-radius: 10px;
            height: 33px;
            width: 230px;
            text-align: center;
            background-color: #FCC5C0;
            font-weight: bold;
        }
        .auto-style22 {
            color: #06283D;
            font-weight: bold;
        }
        .auto-style23 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 291px;
            width: 200px;
            float: left;
        }
        .auto-style26 {
            width: 102%;
        }
        .auto-style27 {
            width: 210px;
        }
        .auto-style28 {
            width: 116px;
            text-align: left;
        }
        .auto-style29 {
            color: #FFFFFF;
            font-size: 9pt;
        }
        .auto-style35 {
            width: 446px;
        }
        .auto-style37 {
        width: 100%;
        height: 833px;
    }
    .auto-style38 {
        text-decoration: none;
        width: 174px;
        text-align: center;
        font-size: 15pt;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style37">
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style38"><strong>Tarif Ad:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox1" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style38"><strong>Malzemeler:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox2" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style38"><strong>Yapılış:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style38"><strong>Resim:</strong></td>
        <td class="auto-style10">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="257px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style38"><strong>Tarif Öneren:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox4" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style38"><strong>Mail Adresi:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style10">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="48px" Text="Tarif Öner" Width="184px" OnClick="Button1_Click" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
</table>
</asp:Content>

