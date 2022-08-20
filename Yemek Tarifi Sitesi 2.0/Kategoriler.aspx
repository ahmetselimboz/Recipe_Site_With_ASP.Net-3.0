<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        .auto-style29 {
            width: 202px;
            text-align: center;
            font-size: 15pt;
        }
        .auto-style30 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
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
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14" Width="450px" Height="65px">
        <div class="auto-style22">
        <table class="auto-style8">
            <tr>
                <td class="auto-style26">
            <span class="auto-style10"><strong>Kategori Listesi</strong></span></td>
                <td class="auto-style25">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style32" Height="50px" OnClick="Button1_Click1" Text="+" Width="50px" />
                </td>
                <td class="auto-style25"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style32" Height="50px" OnClick="Button2_Click1" Text="-" Width="50px" />
                    </strong></td>
            </tr>
        </table>
    </div>
        
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style27" Width="450px" >
        <table class="auto-style8" >
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style24" Width="431px" >
                        <ItemTemplate>
                            <table class="auto-style8">
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label5" runat="server" CssClass="auto-style23" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style19">
                                        <a href="Kategoriler.aspx?Kategoriid=<%# Eval("kategoriid") %>&islem=sil"><asp:Image ID="Image2" runat="server" CssClass="auto-style21" Height="39px" ImageUrl="~/Resimler/delete.png" Width="43px" /></a>
                                    </td>
                                    <td class="auto-style20">
                                        <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("kategoriid") %>"><asp:Image ID="Image3" runat="server" Height="41px" ImageUrl="~/Resimler/upload.png" Width="43px" /></a>
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
            <span class="auto-style10"><strong>Kategori Ekle</strong></span></td>
                <td class="auto-style25">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style32" Height="50px" OnClick="Button3_Click" Text="+" Width="50px" />
                </td>
                <td class="auto-style25">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style32" Height="50px" OnClick="Button4_Click" Text="-" Width="50px" />
                </td>
            </tr>
        </table>
    </div>
        
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style14" Width="450px" Height="252px">
        <table class="auto-style8">
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">Kategori Adı:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="202px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">Kategori İkonu:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style30" Height="44px" Text="Ekle" Width="94px" OnClick="Button5_Click1" />
                    </strong></td>
            </tr>
        </table>
        
        
    </asp:Panel>
</asp:Content>


