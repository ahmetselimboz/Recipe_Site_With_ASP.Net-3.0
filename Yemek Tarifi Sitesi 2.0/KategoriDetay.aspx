<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.KategoriDetay" %>

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
            border: 0px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 448px;
            text-align: center;
            background-color: #FCC5C0;
        }

        .auto-style38 {
            width: 175px;
        }

        .auto-style39 {
            width: 289px;
            text-align: left;
            height: 144px;
        }

        .auto-style40 {
            width: 289px;
        }

        .auto-style41 {
            width: 175px;
            height: 144px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <table class="auto-style37">
    <tr>
            <td class="auto-style32"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" CssClass="auto-style26" Text=<%#Eval("KategoriAd") %> style="font-size: 25pt"></asp:Label>
                </strong></td>
        </tr>
</table>
        </ItemTemplate>
    </asp:Repeater>
    <p class="auto-style7">
        <br />
        <asp:DataList ID="DataList2" runat="server" Width="446px">
    <ItemTemplate>
        <table class="auto-style19">
            <tr>
                <td class="auto-style41">
                    <asp:Image ID="Image2" runat="server" CssClass="tb5" Height="140px" ImageUrl='<%# Eval("YemekResim") %>' Width="173px" />
                </td>
                <td class="auto-style39"><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>"</a>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style21" style="font-size: 18pt; color: #000000" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style40"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
    </p>
</asp:Content>

