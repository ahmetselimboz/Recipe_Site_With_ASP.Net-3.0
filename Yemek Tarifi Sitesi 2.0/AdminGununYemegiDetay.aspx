<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminGununYemegiDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.AdminGununYemegiDetay" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

        .auto-style15 {
            width: 100%;
            height: 72px;
        }

        .auto-style17 {
            font-size: 18pt;
            text-decoration: underline;
        }

        .auto-style19 {
            text-align: center;
        }

        .auto-style24 {
            height: 26px;
        }

        .auto-style27 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-size: 15pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style8">
            <tr>
                <td class="auto-style14"><strong>Günün Tarifi Seç</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Width="450px" Height="511px">
        <table class="auto-style8">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:DataList ID="DataList2" runat="server" Width="440px">
                        <ItemTemplate>
                            <table class="auto-style15">
                                <tr>
                                    <td class="auto-style19"><strong>
                                        <asp:Label ID="Label2" runat="server" CssClass="auto-style17" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                    </strong></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style27" Height="50px" OnClick="Button2_Click" Text="Sıfırla" Width="142px" />
                </td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style27" Height="50px" OnClick="Button3_Click" Text="Seç" Width="132px" />
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
