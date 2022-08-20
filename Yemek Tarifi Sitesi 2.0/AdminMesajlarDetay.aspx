<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesajlarDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.AdminMesajlarDetay" %>



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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style51"><strong>Mesaj Detayı</strong></td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Panel ID="Panel1" runat="server" Height="219px" Style ="margin-left: 20px" >
        <strong><span class="auto-style52">Konu:</span></strong>&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <strong><span class="auto-style52">Gönderen Adı:</span></strong>&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <strong><span class="auto-style52">Gönderen Email:</span></strong>&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <br />
        <br />
        <span class="auto-style52">İçerik:</span></strong>&nbsp;
        <asp:Label ID="Label7" runat="server" Font-Italic="True" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
    </asp:Panel>
    <br />
    <br />
</asp:Content>



