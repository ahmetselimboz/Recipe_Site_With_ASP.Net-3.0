<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifler.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.AdminTarifler" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style14 {
            border: 0px solid #456879;
            border-radius: 10px;
        }

        .auto-style18 {
            width: 149px;
            height: 44px;
            text-align: center;
        }

        .auto-style19 {
            text-align: center;
            width: 134px;
            height: 44px;
        }

        .auto-style20 {
            text-align: center;
            height: 44px;
        }

        .auto-style22 {
            text-align: center;
        }

        .auto-style25 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 15px;
            width: 330px;
            background-color: #97E2FF;
        }

        .auto-style26 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 15px;
            width: 321px;
            font-size: 18pt;
            background-color: #97E2FF;
        }

        .auto-style27 {
            border: 0px solid #456879;
            border-radius: 10px;
            margin-top: 0px;
        }

        .auto-style24 {
            margin-left: 17px;
        }

        .auto-style23 {
            font-size: 15pt;
        }

        .auto-style32 {
            text-decoration: underline;
            font-size: 19pt;
        }

        .auto-style33 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }

        .auto-style34 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 15px;
            width: 467px;
            font-size: 18pt;
            background-color: #97E2FF;
        }

        .auto-style35 {
            width: 186px;
            height: 44px;
            text-align: center;
        }

        .auto-style36 {
            text-align: center;
            width: 111px;
            height: 44px;
        }

        .auto-style37 {
            width: 102%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14" Width="450px" Height="74px">
        <div class="auto-style22">
            <table class="auto-style8">
                <tr>
                    <td class="auto-style34">
                        <span class="auto-style32"><strong>Onaylanan Tarifler</strong></span></td>
                    <td class="auto-style25"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style33" Height="50px" Text="+" Width="50px" OnClick="Button1_Click" />
                    </strong></td>
                    <td class="auto-style25"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style33" Height="50px" Text="-" Width="50px" OnClick="Button2_Click" />
                    </strong></td>
                </tr>
            </table>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style27" Width="450px">
        <table class="auto-style8">
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style24" Width="431px">
                        <ItemTemplate>
                            <table class="auto-style8">
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label5" runat="server" CssClass="auto-style23" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style36">&nbsp;</td>
                                    <td class="auto-style20">
                                        <a href='AdminTarifYemek.aspx?Tarifid=<%# Eval("tarifid") %>'>
                                            <asp:Image ID="Image4" runat="server" Height="50px" ImageUrl="~/Resimler/more.png" Width="50px" />
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style14" Width="450px" Height="74px">
        <div class="auto-style22">
            <table class="auto-style8">
                <tr>
                    <td class="auto-style26">
                        <span class="auto-style32"><strong>Onaylanmayan Tarifler</strong></span></td>
                    <td class="auto-style25"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style33" Height="50px" Text="+" Width="50px" OnClick="Button3_Click" />
                    </strong></td>
                    <td class="auto-style25"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style33" Height="50px" Text="-" Width="50px" OnClick="Button4_Click" />
                    </strong></td>
                </tr>
            </table>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style27" Width="450px">
        <table class="auto-style8">
            <tr>
                <td>
                    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style24" Width="431px">
                        <ItemTemplate>
                            <table class="auto-style37">
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label5" runat="server" CssClass="auto-style23" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style19">&nbsp;</td>
                                    <td class="auto-style20">
                                        <a href="AdminTariflerDetay.aspx?Tarifid=<%# Eval("tarifid") %>">
                                            <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/Resimler/to-do-list.png" Width="50px" /></a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>



