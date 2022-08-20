<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 330px;
            font-size: 25pt;
            text-align: center;
            text-decoration: underline;
            background-color: #93DEFF;
        }
        .auto-style19 {
            width: 197px;
            text-align: center;
            font-size: 15pt;
        }
        .auto-style20 {
            width: 311px;
            text-align: left;
        }
        .auto-style21 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
        }
        .auto-style22 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style23 {
            width: 197px;
            text-align: center;
            font-size: 15pt;
            height: 34px;
        }
        .auto-style24 {
            width: 311px;
            text-align: left;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style8">
            <tr>
                <td class="auto-style14"><strong>Yemek Düzenle</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Width="441px">
        <table class="auto-style8">
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">Yemek Ad:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style22" Width="280px" Height="28px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">Malzemeler:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style22" Width="280px" Height="120px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">Tarifi:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style22" Width="280px" Height="150px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">Kategori:</td>
                <td class="auto-style24">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style22" Width="170px" Height="30px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">Resim:</td>
                <td class="auto-style20">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style22" Height="29px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="35px" OnClick="Button1_Click" Text="Güncelle" Width="160px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

