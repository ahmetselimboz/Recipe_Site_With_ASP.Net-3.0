<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumlarDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.AdminYorumlarDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style51 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 450px;
            font-size: 18pt;
            text-align: center;
            text-decoration: underline;
            background-color: #97E2FF;
        }
        .auto-style52 {
            font-size: 15pt;
        }
        .auto-style54 {
            width: 99px;
        }
        .auto-style55 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            margin-left: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style51"><strong>Yorum Onay Sayfası</strong></td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Panel ID="Panel1" runat="server" Height="286px" Style ="margin-left: 20px" >
        <strong><span class="auto-style52">Yemek Adı:</span></strong>&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <strong><span class="auto-style52">Gönderen Adı:</span></strong>&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <strong><span class="auto-style52">İçerik:</span></strong>&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <br />
        <br />
        <span class="auto-style52">Eklenme Tarihi:</span></strong>&nbsp;
        <asp:Label ID="Label7" runat="server" Font-Italic="True" Text="Label"></asp:Label>
        <br />
        <br />
        <table class="auto-style8">
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style55" Height="50px" OnClick="Button1_Click" Text="Onayla" Width="126px" />
                    </strong></td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    <br />
    <br />
</asp:Content>

