<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Edycja.aspx.cs" Inherits="AutoCzesci.Admin.Dodawanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 229px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table width="100%" border="1" style="height: 522px; margin-bottom: 47px">
        <tr>
            <td width="50%" rowspan="1" class="style1">
                <center>
                    <b>EDYCJA KLIENTA:<b><br>
                        <br>
                        Imie:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        Nazwisko:
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        Adres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <br />
                        Wiek:
                        <asp:DropDownList ID="DropDownList6" runat="server">
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
                        &nbsp;lat<br />
                        &nbsp;Dla ID:
                        <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="ID_klient" DataValueField="ID_klient">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1DGuzikConnectionString %>"
                            SelectCommand="SELECT [ID_klient] FROM [Klient]"></asp:SqlDataSource>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Zamień" OnClick="Button1_Click" />
                </center>
            </td>
            <td width="50%" rowspan="1" class="style1">
                <center>
                    <b>EDYCJA SAMOCHODÓW:<b><br>
                        <br>
                        Marka: &nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <br />
                        Model:&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <br />
                        Rok produkcji:
                        <asp:DropDownList ID="DropDownList9" runat="server">
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
                        <br />
                        Wielkość silnika:
                        <asp:DropDownList ID="DropDownList10" runat="server">
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
                        <br />
                        Rodzaj paliwa:
                        <asp:DropDownList ID="DropDownList11" runat="server">
                            <asp:ListItem Value="Benzyna"></asp:ListItem>
                            <asp:ListItem Value="Diesel"></asp:ListItem>
                            <asp:ListItem Value="Gaz"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Dla ID:
                        <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource3"
                            DataTextField="ID_samochod" DataValueField="ID_samochod">
                        </asp:DropDownList>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:1DGuzikConnectionString %>"
                            SelectCommand="SELECT [ID_samochod] FROM [Samochod]"></asp:SqlDataSource>
                        <asp:Button ID="Button3" runat="server" Text="Zamien" OnClick="Button3_Click" />
                </center>
            </td>
        </tr>
        <tr>
            <td width="50%" rowspan="1">
                <center>
                    <b>EDYCJA CZĘŚCI:<b><br>
                        <br>
                        Nazwa:
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <br />
                        Cena:
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1DGuzikConnectionString %>"
                            SelectCommand="SELECT [ID_czesc] FROM [Czesci]"></asp:SqlDataSource>
                        <br />
                        Dla ID:
                        <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource2"
                            DataTextField="ID_czesc" DataValueField="ID_czesc">
                        </asp:DropDownList>
                        <br />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Zamień" />
                </center>
            </td>
            <td>
                <center>
                    <b>W tej sekcji, możesz edytować różne parametry.
                        <br>
                        W sekcji Klienta, edytujemy dane klienta, jeśli klient tego sobie życzy.
                        <br>
                        W sekcji Części, zmieniamy nazwę części, jeśli ulegnie zmianie, jak i cenę.
                        <br>
                        W sekcji Samochód, na prośbę klienta edytujemy jego pojazd, lub jeżeli źle wprowadzi
                        dane. </b>
                </center>
            </td>
        </tr>
    </table>
</asp:Content>
