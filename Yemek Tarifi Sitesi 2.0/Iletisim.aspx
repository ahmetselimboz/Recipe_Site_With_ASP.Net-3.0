<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.Iletisim" %>

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
        .auto-style33 {
        width: 125px;
            height: 34px;
        }
    .auto-style35 {
        width: 446px;
    }
    .auto-style36 {
        width: 125px;
        text-align: center;
    }
        .auto-style37 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 330px;
            font-size: 25pt;
            background-color: #FCC5C0;
        }
        .auto-style38 {
            text-decoration: underline;
        }
        .auto-style40 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }
        .auto-style41 {
            width: 700px;
            text-align: center;
            height: 47px;
        }
        .auto-style42 {
            width: 226px;
            height: 47px;
        }
        .auto-style43 {
            width: 700px;
            text-align: center;
            height: 29px;
        }
        .auto-style45 {
            width: 226px;
            height: 34px;
        }
        .auto-style46 {
            width: 226px;
            height: 29px;
        }
        .auto-style47 {
            width: 700px;
            text-align: center;
            height: 20px;
        }
        .auto-style48 {
            width: 226px;
            height: 20px;
        }
        .auto-style49 {
            width: 700px;
            text-align: center;
            height: 22px;
            font-size: 15pt;
        }
        .auto-style50 {
            width: 226px;
            height: 22px;
        }
        .auto-style51 {
            width: 700px;
            text-align: center;
            height: 3px;
        }
        .auto-style52 {
            width: 226px;
            height: 3px;
        }
        .auto-style53 {
            width: 700px;
            text-align: center;
            height: 18px;
            font-size: 15pt;
        }
        .auto-style54 {
            width: 226px;
            height: 18px;
        }
        .auto-style55 {
            width: 700px;
            text-align: center;
            height: 7px;
        }
        .auto-style56 {
            width: 226px;
            height: 7px;
        }
        .auto-style57 {
            width: 700px;
            text-align: center;
            height: 2px;
            font-size: 15pt;
        }
        .auto-style58 {
            width: 226px;
            height: 2px;
        }
        .auto-style59 {
            width: 700px;
            text-align: center;
            height: 38px;
        }
        .auto-style60 {
            width: 226px;
            height: 38px;
        }
        .auto-style61 {
            width: 700px;
            text-align: center;
            height: 29px;
            font-size: 15pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style37" colspan="2"><strong>&nbsp;&nbsp;&nbsp; <span class="auto-style38">İletişim</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style45"></td>
        </tr>
        <tr>
            <td class="auto-style61">Ad-Soyad:</td>
            <td class="auto-style46">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style47"></td>
            <td class="auto-style48"></td>
        </tr>
        <tr>
            <td class="auto-style49">Email:</td>
            <td class="auto-style50">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style51"></td>
            <td class="auto-style52"></td>
        </tr>
        <tr>
            <td class="auto-style53">Konu:</td>
            <td class="auto-style54">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style55" style="height:5px"></td>
            <td class="auto-style56"></td>
        </tr>
        <tr>
            <td class="auto-style57">Mesaj:</td>
            <td class="auto-style58">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="50px" TextMode="MultiLine" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style43"></td>
            <td class="auto-style46"></td>
        </tr>
        <tr>
            <td class="auto-style59"></td>
            <td class="auto-style60">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style40" Height="44px" OnClick="Button1_Click" Text="Gönder" Width="161px" />
                </td>
        </tr>
        <tr>
            <td class="auto-style41"></td>
            <td class="auto-style42"></td>
        </tr>
    </table>
</asp:Content>


