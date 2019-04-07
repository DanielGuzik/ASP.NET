<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Zamowienie.aspx.cs" Inherits="AutoCzesci.Users.Zamowienie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td width="33%">
                <center>
                    <b>KLIENCI:</b><br>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </center>
            </td>
            <td width="34%">
                <center>
                    <b>CZĘŚCI:</b><br>
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
                </center>
            </td>
            <td width="33%">
                <center>
                    <b>SAMOCHODY:</b>
                    <asp:GridView ID="GridView3" runat="server">
                    </asp:GridView>
                </center>
            </td>
        </tr>
    </table>
    <center>
        <br>
        <br>
        <b>ZAMOWIENIE:</b><br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="nazwisko" DataValueField="ID_klient">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
            DataTextField="nazwa" DataValueField="ID_czesc">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3"
            DataTextField="Model" DataValueField="ID_samochod">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Zamów!" />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1DGuzikConnectionString %>"
            SelectCommand="SELECT [ID_klient], [nazwisko] FROM [Klient]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1DGuzikConnectionString %>"
            SelectCommand="SELECT [ID_czesc], [nazwa] FROM [Czesci]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:1DGuzikConnectionString %>"
            SelectCommand="SELECT [ID_samochod], [Model] FROM [Samochod]"></asp:SqlDataSource>
    </center>
</asp:Content>
