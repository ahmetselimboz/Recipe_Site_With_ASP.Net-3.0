<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifYemek.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.AdminTarifYemek" %>



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

        .auto-style28 {
            width: 100%;
            height: 72px;
        }

        .auto-style31 {
            border: 0px solid #456879;
            border-radius: 10px;
            margin-top: 4px;
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

        .auto-style30 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-size: 14pt;
        }

        .auto-style35 {
            font-size: 15pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style31" Width="450px" Height="73px">
        <div class="auto-style22">
            <table class="auto-style28">
                <tr>
                    <td class="auto-style26">
                        <span class="auto-style10"><strong>Yemek Ekle</strong></span></td>
                    <td class="auto-style25"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="tb5" Height="50px" Text="+" Width="50px" />
                    </strong></td>
                    <td class="auto-style25"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="tb5" Height="50px" Text="-" Width="50px" />
                    </strong></td>
                </tr>
            </table>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style14" Width="450px" Height="697px">
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
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style35" Text="Label"></asp:Label>
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





