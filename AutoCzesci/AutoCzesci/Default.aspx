<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="AutoCzesci._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td width="50%">
                <b>Części samochodowe sklep internetowy</b>
                <br>
                <br>    
                <b>Witamy w AutoCzesci.pl</b> jednym z największych w Polsce sklepów internetowych
                z częściami samochodowymi.
                <br>
                Mamy w swojej ofercie niemal 1,5 miliona auto części do wszystkich marek samochodów.
                <br>
                Zapraszamy do naszego punktu odbiorów osobistych w Krakowie.
                <br>
                <br>
                Pierwszy raz w <b>AutoCzesci.pl?</b> Obok możesz wyszukać potrzebnej części do samochodu.
            </td>
            <td width="50%">
                <center>
                    <h2>
                        Wyszukiwarka
                    </h2>
                    <p>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Szukaj" />
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </p>
                </center>
            </td>
        </tr>
    </table>
</asp:Content>
