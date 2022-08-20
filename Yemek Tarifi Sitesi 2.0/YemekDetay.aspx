<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.YemekDetay" %>

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

        .auto-style38 {
            margin-right: 0px;
    }
        .auto-style41 {
            width: 125px;
            text-align: center;
            font-size: 9pt;
        }
        .auto-style42 {
        text-decoration: none;
        width: 434px;
    }
    .auto-style43 {
        width: 434px;
    }
    .auto-style44 {
        color: #06283D;
        font-weight: bold;
        font-size: 14pt;
    }
    .auto-style45 {
        border: 0px solid #456879;
        border-radius: 10px;
        height: 22px;
        width: 385px;
    }
    .auto-style47 {
        border: 0px solid #456879;
        border-radius: 10px;
        height: 22px;
        width: 516px;
        font-size: 18pt;
        text-align: center;
        text-decoration: underline;
        background-color: #FCC5C0;
    }
    .auto-style48 {
        border: 0px solid #456879;
        border-radius: 10px;
        height: 22px;
        width: 448px;
    }
    .auto-style49 {
        border: 0px solid #456879;
        border-radius: 10px;
        height: 22px;
        width: 330px;
        font-size: 18pt;
        text-decoration: underline;
        text-align: center;
        background-color: #FCC5C0;
    }
    .auto-style50 {
        text-align: center;
    }
        .auto-style51 {
            border: 2px solid #456879;
            border-radius: 10px;
            margin-left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server">
    </asp:Panel>
    <table class="auto-style48">
        <tr>
            <td class="auto-style50"> <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style19" Text="" style="font-size: 22pt"></asp:Label>
    </strong>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <strong>Malzemeler:
    </strong>&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <strong>Tarif:</strong>&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <strong>Puan:</strong>&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Eklenme Tarihi:</strong>&nbsp;
    <asp:Label ID="Label7" runat="server" Font-Italic="True" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:Image ID="Image2" runat="server" CssClass="auto-style51" Height="270px" Width="425px" />
    <br />
    <br />
    <br />
    <br />
    <table class="th">
        <tr>

            <td class="auto-style49" colspan="2"><strong>Yorum Yap</strong></td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53">Ad-Soyad:</td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox1" runat="server" Width="235px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53">Email:</td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="236px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53">Yorumunuz:</td>
            <td class="auto-style52">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="236px" CssClass="tb5" Height="100px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style44"></td>
            <td class="auto-style45"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="tb5" Height="41px"  Text="Yorum Yap" Width="141px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
    <br />
    <table class="auto-style48">
        <tr>
            <td class="auto-style47"><strong>Yorumlar</strong></td>
        </tr>
    </table>
    <br />
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <table class="auto-style34">
                <tr>
                    <td class="auto-style43">
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style44" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("Yorumİçerik") %>'></asp:Label>
                        &nbsp;- <em>
                        <asp:Label ID="Label12" runat="server" CssClass="auto-style41" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </em></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #000080" class="auto-style43">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>


