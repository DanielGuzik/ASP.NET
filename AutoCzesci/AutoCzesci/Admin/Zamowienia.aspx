<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Zamowienia.aspx.cs" Inherits="AutoCzesci.Admin.Usuwanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <center>
        <b>ZAMÓWIENIA:</b><br>
        <br>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br>
        Usuń zamowienie:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="ID_zamowienie" DataValueField="ID_zamowienie">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Usuń" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1DGuzikConnectionString %>"
            SelectCommand="SELECT [ID_zamowienie] FROM [Zamowienie]"></asp:SqlDataSource>
    </center>
    <br />
</asp:Content>
