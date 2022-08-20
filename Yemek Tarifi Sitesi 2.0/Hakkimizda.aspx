<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

        .auto-style36 {
            width: 100%;
            height: 359px;
        }

        .auto-style43 {
            border: 0px solid #456879;
            border-radius: 10px;
            font-size: 25pt;
            background-color: #E8A0BF;
        }

        .auto-style34 {
            width: 325px;
            height: 89px;
            background-color: #E8A0BF;
        }

        .auto-style42 {
            font-size: 12pt;
        }

        .auto-style44 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 330px;
            font-size: 25pt;
            text-decoration: underline;
            text-align: center;
            background-color: #FCC5C0;
        }

        .auto-style45 {
            text-decoration: none;
            background-color: #E8A0BF;
        }

        .auto-style46 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 89px;
            font-size: 25pt;
            background-color: #E8A0BF;
            width: 186px;
        }

        .auto-style47 {
            height: 261px;
        }

        .auto-style48 {
            width: 450px;
            height: 410px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:panel id="Panel2" runat="server" height="413px">
    <table class="auto-style48">
        <tr>
            <td class="auto-style44"><strong>Hakkımızda</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">
                <asp:DataList ID="DataList2" runat="server" CssClass="auto-style43" Width="443px">
                    <ItemTemplate>
                        <table class="auto-style45">
                            <tr>
                                <td class="auto-style46">
                                    <asp:Image ID="Image1" runat="server" Height="174px" ImageUrl="~/Resimler/Selimm.jpeg" Width="139px" />
                                </td>
                                <td class="auto-style34">
                                    <asp:Label ID="Label3" runat="server" CssClass="auto-style42" Text='<%# Eval("Metin") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:panel>
</asp:Content>
