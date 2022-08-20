<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumlar.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.AdminYorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style14 {
            text-align: center;
        }

        .auto-style15 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 621px;
            font-size: 18pt;
            background-color: #97E2FF;
            margin-top: 0px;
        }

        .auto-style16 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 330px;
            background-color: #97E2FF;
        }

        .auto-style23 {
            font-size: 15pt;
        }

        .auto-style19 {
            text-align: center;
            width: 92px;
            height: 44px;
        }

        .auto-style21 {
            margin-top: 0px;
        }

        .auto-style20 {
            height: 44px;
        }

        .auto-style25 {
            margin-left: 25px;
            margin-bottom: auto;
        }

        .auto-style26 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 775px;
            font-size: 18pt;
            background-color: #97E2FF;
        }

        .auto-style29 {
            width: 100%;
            height: 73px;
        }
    
        .auto-style30 {
            width: 100%;
            height: 66px;
        }
    
        .auto-style28 {
            width: 248px;
            height: 44px;
            text-align: center;
        }
        .auto-style31 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14" Width="450px" Height="76px">
        <div class="auto-style22">
            <table class="auto-style30">
                <tr>
                    <td class="auto-style26">
                        <strong><span class="auto-style10">Onaylanmış</span> <span class="auto-style10">Yorum</span> <span class="auto-style10">Listesi</span></strong></td>
                    <td class="auto-style16"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="50px" Text="+" Width="50px" OnClick="Button1_Click" />
                    </strong></td>
                    <td class="auto-style16"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style31" Height="50px" Text="-" Width="50px" OnClick="Button2_Click" />
                    </strong></td>
                </tr>
            </table>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style24" Width="444px" >
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style28">
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style23" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                            <a href="AdminYorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&islem=sil"><asp:Image ID="Image2" runat="server" CssClass="auto-style21" Height="39px" ImageUrl="~/Resimler/delete.png" Width="43px" /></a>
                        </td>
                        <td class="auto-style20">
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style14" Width="450px" Height="74px">
        <div class="auto-style22">
            <table class="auto-style29">
                <tr>
                    <td class="auto-style15">
                        <strong><span class="auto-style10">Onaylanmamış Yorum</span> <span class="auto-style10">Listesi</span></strong></td>
                    <td class="auto-style16"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style31" Height="50px" Text="+" Width="50px" OnClick="Button3_Click1" />
                    </strong></td>
                    <td class="auto-style16"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style31" Height="50px" Text="-" Width="50px" OnClick="Button4_Click1" />
                    </strong></td>
                </tr>
            </table>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style24" Width="445px">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style28">
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style23" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                            <a href="AdminYorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&islem=sil"><asp:Image ID="Image4" runat="server" CssClass="auto-style21" Height="39px" ImageUrl="~/Resimler/delete.png" Width="43px" /></a>
                        </td>
                        <td class="auto-style20">
                            <a href="AdminYorumlarDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image5" runat="server" CssClass="auto-style25" Height="41px" ImageUrl="~/Resimler/correct.png" Width="43px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>


