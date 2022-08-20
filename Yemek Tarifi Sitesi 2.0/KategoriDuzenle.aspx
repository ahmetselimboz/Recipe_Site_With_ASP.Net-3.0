<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_2._0.KategoriDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            border: 0px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 330px;
            font-size: 18pt;
            text-align: center;
            background-color: #97E2FF;
        }
        .auto-style15 {
            width: 164px;
        }
        .auto-style17 {
            width: 164px;
            height: 29px;
            text-align: center;
        }
        .auto-style18 {
            height: 29px;
        }
        .auto-style19 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            margin-left: 0px;
        }
        .auto-style20 {
            width: 164px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style14" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10">Kategori Güncelle</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">Kategori Ad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">Kategori Adet:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">Kategori İkon</td>
            <td class="auto-style18">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style9"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="37px" OnClick="Button1_Click" Text="Güncelle" Width="118px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

