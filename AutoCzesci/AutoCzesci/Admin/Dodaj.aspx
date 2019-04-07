<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Dodaj.aspx.cs" Inherits="AutoCzesci.Admin.Dodaj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table width="100%">
        <tr>
            <td width="50%">
                <center>
                    <b>DODAJ TOWAR:</b><br />
                    <br />
                    Nazwa części:
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    Cena:
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="Button1_Click" />
                </center>
            </td>
            <td width="50%">
                <center>
                    <h2>
                        Wyszukiwarka
                    </h2>
                    <p>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Szukaj" />
                        <asp:GridView ID="GridView2" runat="server">
                        </asp:GridView>
                    </p>
                </center>
            </td>
        </tr>
    </table>
</asp:Content>
