<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Dane.aspx.cs" Inherits="AutoCzesci.Klient._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h>
<b>Zapis do bazy danych!</b>
</h>
    <table width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td width="34%">
                Żeby móc złożyć zamówienie części samochodu, musisz zapisać się do bazy i wpisz
                dane Twojego samochodu.
                <br>
                Sprawdz w wyszukiwarce części samochodowych, czy część do Twojego samocodu jest.
                Jeśli nie ma, napisz do Nas, postaramy się zaopatrzyć w daną część.
                <br>
                Dane nie zostaną nigdzie wykorzystane.
            </td>
            <td width="33%">
                <center>
                    <b>Podaj dane osobowe:</b><br>
                    <br>
                    <br />
                    Imie:
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    Nazwisko:
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    Adres:
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    Wiek:
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="18"></asp:ListItem>
                        <asp:ListItem Value="19"></asp:ListItem>
                        <asp:ListItem Value="20"></asp:ListItem>
                        <asp:ListItem Value="21"></asp:ListItem>
                        <asp:ListItem Value="22"></asp:ListItem>
                        <asp:ListItem Value="23"></asp:ListItem>
                        <asp:ListItem Value="24"></asp:ListItem>
                        <asp:ListItem Value="25"></asp:ListItem>
                        <asp:ListItem Value="26"></asp:ListItem>
                        <asp:ListItem Value="27"></asp:ListItem>
                        <asp:ListItem Value="28"></asp:ListItem>
                        <asp:ListItem Value="29"></asp:ListItem>
                        <asp:ListItem Value="30"></asp:ListItem>
                        <asp:ListItem Value="31"></asp:ListItem>
                        <asp:ListItem Value="32"></asp:ListItem>
                        <asp:ListItem Value="33"></asp:ListItem>
                        <asp:ListItem Value="34"></asp:ListItem>
                        <asp:ListItem Value="35"></asp:ListItem>
                        <asp:ListItem Value="36"></asp:ListItem>
                        <asp:ListItem Value="37"></asp:ListItem>
                        <asp:ListItem Value="38"></asp:ListItem>
                        <asp:ListItem Value="39"></asp:ListItem>
                        <asp:ListItem Value="40"></asp:ListItem>
                        <asp:ListItem Value="41"></asp:ListItem>
                        <asp:ListItem Value="42"></asp:ListItem>
                        <asp:ListItem Value="43"></asp:ListItem>
                        <asp:ListItem Value="44"></asp:ListItem>
                        <asp:ListItem Value="45"></asp:ListItem>
                        <asp:ListItem Value="46"></asp:ListItem>
                        <asp:ListItem Value="47"></asp:ListItem>
                        <asp:ListItem Value="48"></asp:ListItem>
                        <asp:ListItem Value="49"></asp:ListItem>
                        <asp:ListItem Value="50"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Zatwierdź" OnClick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </center>
            </td>
            <td width="33%">
                <center>
                    <b>Dodaj swój samochód:</b><br>
                    <br>
                    Marka:
                    <asp:TextBox ID="MarkaTB" runat="server"></asp:TextBox><br>
                    Model:
                    <asp:TextBox ID="ModelTB" runat="server"></asp:TextBox><br>
                    Rok produkcji:
                    <asp:DropDownList ID="DropDownListRok" runat="server">
                        <asp:ListItem Value="2000"></asp:ListItem>
                        <asp:ListItem Value="2001"></asp:ListItem>
                        <asp:ListItem Value="2002"></asp:ListItem>
                        <asp:ListItem Value="2003"></asp:ListItem>
                        <asp:ListItem Value="2004"></asp:ListItem>
                        <asp:ListItem Value="2005"></asp:ListItem>
                        <asp:ListItem Value="2006"></asp:ListItem>
                        <asp:ListItem Value="2007"></asp:ListItem>
                        <asp:ListItem Value="2008"></asp:ListItem>
                        <asp:ListItem Value="2009"></asp:ListItem>
                        <asp:ListItem Value="2010"></asp:ListItem>
                        <asp:ListItem Value="2011"></asp:ListItem>
                        <asp:ListItem Value="2012"></asp:ListItem>
                        <asp:ListItem Value="2013"></asp:ListItem>
                        <asp:ListItem Value="2014"></asp:ListItem>
                        <asp:ListItem Value="2015"></asp:ListItem>
                        <asp:ListItem Value="2016"></asp:ListItem>
                    </asp:DropDownList>
                    <br>
                    Wielkość silnika:
                    <asp:DropDownList ID="DropDownListSilnik" runat="server">
                        <asp:ListItem Value="1.0"></asp:ListItem>
                        <asp:ListItem Value="1.1"></asp:ListItem>
                        <asp:ListItem Value="1.2"></asp:ListItem>
                        <asp:ListItem Value="1.3"></asp:ListItem>
                        <asp:ListItem Value="1.4"></asp:ListItem>
                        <asp:ListItem Value="1.5"></asp:ListItem>
                        <asp:ListItem Value="1.6"></asp:ListItem>
                        <asp:ListItem Value="1.7"></asp:ListItem>
                        <asp:ListItem Value="1.8"></asp:ListItem>
                        <asp:ListItem Value="1.9"></asp:ListItem>
                        <asp:ListItem Value="2.0"></asp:ListItem>
                    </asp:DropDownList>
                    <br>
                    Rodzaj paliwa:
                    <asp:DropDownList ID="DropDownListPaliwo" runat="server">
                        <asp:ListItem Value="Benzyna"></asp:ListItem>
                        <asp:ListItem Value="Diesel"></asp:ListItem>
                        <asp:ListItem Value="Gaz"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Zatwierdz" OnClick="Button2_Click" />
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </center>
            </td>
        </tr>
    </table>
</asp:Content>
