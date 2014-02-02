<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Temperaturer.aspx.cs" Inherits="KonverteraTemperaturer.Temperaturer" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="sv">
<head runat="server">
    <title>Konvertera temperaturer</title>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="KonvButton">
    <div>
        <h1>Konvertera temperaturer</h1>
        <%-- Starttemperatur --%>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Starttemperatur:" AssociatedControlID="StartTemp"></asp:Label>
            <asp:TextBox ID="StartTemp" runat="server"></asp:TextBox>
        </div>
        <%-- Sluttemperatur --%>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Sluttemperatur:" AssociatedControlID="SlutTemp"></asp:Label>
            <asp:TextBox ID="SlutTemp" runat="server"></asp:TextBox>
        </div>
        <%-- Temperatursteg --%>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Temperatursteg:" AssociatedControlID="SlutTemp"></asp:Label>
            <asp:TextBox ID="TempSteg" runat="server"></asp:TextBox>
        </div>
        <%-- Välj typ av konvertering --%>
        <div>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Typ av konvertering:"></asp:Label>
            </p>
            <asp:RadioButton ID="C2F" runat="server" GroupName="KonvTyp" Text="Celsius till Fahrenheit" Checked="True" />
            <asp:RadioButton ID="F2C" runat="server" GroupName="KonvTyp" Text="Fahrenheit till Celsius" />
        </div>
        <%-- Konvertera-knapp --%>
        <div>
            <asp:Button ID="KonvButton" runat="server" Text="Konvertera" OnClick="KonvButton_Click" />
        </div>
    </div>
    </form>
</body>
</html>
