<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesajlar.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.AdminMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style14 {
            border: 0px solid #456879;
            border-radius: 10px;
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
            height: auto;
        }

        .auto-style24 {
            margin-left: 17px;

        }

        .auto-style18 {
            width: 149px;
            height: 44px;
        }

        .auto-style23 {
            font-size: 15pt;
        }

        .auto-style19 {
            text-align: center;
            width: 134px;
            height: 44px;
        }

        .auto-style21 {
            margin-top: 0px;
        }
    
        .auto-style20 {
            text-align: center;
            height: 44px;
        }

        .auto-style28 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14" Width="450px" Height="74px">
        <div class="auto-style22">
            <table class="auto-style8">
                <tr>
                    <td class="auto-style26">
                        <span class="auto-style10"><strong>Mesajlar</strong></span></td>
                    <td class="auto-style25">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style28" Height="50px" OnClick="Button1_Click" Text="+" Width="50px" />
                    </td>
                    <td class="auto-style25">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style28" Height="50px" OnClick="Button2_Click" Text="-" Width="50px" />
                    </td>
                </tr>
            </table>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style27" Width="450px">
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style24" Width="431px">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style23" Text='<%# Eval("MesajBaslik") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                            <a href="AdminMesajlar.aspx?Mesajid=<%#Eval("Mesajid") %>&islem=sil"><asp:Image ID="Image2" runat="server" CssClass="auto-style21" Height="39px" ImageUrl="~/Resimler/delete.png" Width="43px" />
                            </td></a>
                        <td class="auto-style20">
                            <a href="AdminMesajlarDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"><asp:Image ID="Image3" runat="server" Height="41px" ImageUrl="~/Resimler/loupe.png" Width="43px" />
                            </td></a>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
</asp:Content>

