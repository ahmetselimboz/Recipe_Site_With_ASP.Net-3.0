<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.GununYemegi" %>
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
        height: 20px;
        width: 700px;
        font-size: 25pt;
        text-decoration: underline;
    }
    .auto-style38 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style14">
            <tr>
                <td class="auto-style38"><strong>
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style37" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong>
                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Malzemeler:</strong>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <div class="auto-style16">
                        <strong>Tarif: </strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </div>
                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Image ID="Image2" runat="server" Height="181px" Width="389px" CssClass="tb5" ImageUrl='<%# Eval("YemekResim") %>' />
                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Puan: </strong>
                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        &nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Eklenme Tarihi:</strong> <em>
                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

