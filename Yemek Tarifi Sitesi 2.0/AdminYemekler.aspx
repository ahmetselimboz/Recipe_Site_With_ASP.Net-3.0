<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYemekler.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.AdminYemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style14 {
            border: 0px solid #456879;
            border-radius: 10px;
        }

        .auto-style18 {
            width: 149px;
            height: 44px;
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

        .auto-style28 {
            width: 100%;
            height: 72px;
        }

        .auto-style31 {
            border: 0px solid #456879;
            border-radius: 10px;
            margin-top: 4px;
        }

        .auto-style24 {
            margin-left: 17px;
        }

        .auto-style23 {
            font-size: 15pt;
        }

        .auto-style21 {
            margin-top: 0px;
        }

        .auto-style32 {
            text-decoration: underline;
            font-size: 19pt;
        }

        .auto-style30 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-size: 14pt;
        }

        .auto-style33 {
            border: 2px solid #456879;
            border-radius: 10px;
        }

        .auto-style34 {
            width: 152px;
            text-align: center;
            font-size: 15pt;
        }

        .auto-style35 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14" Width="450px" Height="65px">
        <div class="auto-style22">
            <table class="auto-style8">
                <tr>
                    <td class="auto-style26">
                        <span class="auto-style32"><strong>Yemek Listesi</strong></span></td>
                    <td class="auto-style25"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style35" Height="50px" OnClick="Button1_Click" Text="+" Width="50px" />
                    </strong></td>
                    <td class="auto-style25">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style35" Height="50px" OnClick="Button2_Click" Text="-" Width="50px" />
                    </td>
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
                                    <td class="auto-style18">
                                        <asp:Label ID="Label5" runat="server" CssClass="auto-style23" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style19">
                                        <a href="AdminYemekler.aspx?Yemekid=<%# Eval("yemekid") %>&islem=sil">
                                            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" Height="39px" ImageUrl="~/Resimler/delete.png" Width="43px" /></a>
                                    </td>
                                    <td class="auto-style20">
                                        <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("yemekid") %>">
                                            <asp:Image ID="Image3" runat="server" Height="41px" ImageUrl="~/Resimler/upload.png" Width="43px" /></a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style31" Width="450px" Height="73px">
        <div class="auto-style22">
            <table class="auto-style28">
                <tr>
                    <td class="auto-style26">
                        <span class="auto-style10"><strong>Yemek Ekle</strong></span></td>
                    <td class="auto-style25"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style35" Height="50px" OnClick="Button3_Click" Text="+" Width="50px" />
                    </strong></td>
                    <td class="auto-style25"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style35" Height="50px" Text="-" Width="50px" OnClick="Button4_Click" />
                    </strong></td>
                </tr>
            </table>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style14" Width="450px" Height="723px">
        <table class="auto-style8">
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">Yemek Adı:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style33" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">Malzemeler:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style33" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">Yemek Tarifi:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style33" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">Kategoriler:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style33" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">Resim:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style30" Height="44px" OnClick="Button5_Click" Text="Ekle" Width="149px" />
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>


    </asp:Panel>
</asp:Content>




