<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHakkimizda.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.AdminHakkimizda" %>




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
            text-align: center;
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
                        <span class="auto-style10"><strong>Hakkımızda</strong></span></td>
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
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style27" Width="450px" Height="312px">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Height="216px" TextMode="MultiLine" Width="335px"></asp:TextBox>
        <br />
        <br />
        <strong>
        <asp:Button ID="Button3" runat="server" CssClass="auto-style28" Height="39px" Text="Güncelle" Width="129px" OnClick="Button3_Click" />
        </strong>

    </asp:Panel>
</asp:Content>



