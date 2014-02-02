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
        <%-- Felmeddelanden --%>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Fel inträffade. Korrigera och försök igen." ShowMessageBox="True" />
        <%-- Starttemperatur --%>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Starttemperatur:" AssociatedControlID="StartTemp"></asp:Label>
            <asp:TextBox ID="StartTemp" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fyll i en starttemperatur!" 
                ControlToValidate="StartTemp" Display="Dynamic" Text="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Texten måste kunna tolkas som heltal." 
                Display="Dynamic" ControlToValidate="StartTemp" SetFocusOnError="True" 
                Operator="DataTypeCheck" Type="Integer" Text="*"></asp:CompareValidator>
        </div>
        <%-- Sluttemperatur --%>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Sluttemperatur:" AssociatedControlID="SlutTemp"></asp:Label>
            <asp:TextBox ID="SlutTemp" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fyll i en sluttemperatur!" ControlToValidate="SlutTemp" Display="Dynamic" SetFocusOnError="True" Text="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Texten måste kunna tolkas som heltal." 
                Display="Dynamic" ControlToValidate="SlutTemp" SetFocusOnError="True" 
                Operator="DataTypeCheck" Type="Integer" Text="*"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Sluttemperaturen måste vara högre än starttemperaturen." 
                Display="Dynamic" ControlToValidate="SlutTemp" SetFocusOnError="True" 
                Operator="GreaterThan" Type="Integer" Text="*" ControlToCompare="StartTemp"></asp:CompareValidator>  
        </div>
        <%-- Temperatursteg --%>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Temperatursteg:" AssociatedControlID="TempSteg"></asp:Label>
            <asp:TextBox ID="TempSteg" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fyll i ett temperatursteg!" ControlToValidate="TempSteg" Display="Dynamic" Text="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Texten måste kunna tolkas som heltal." 
                Display="Dynamic" ControlToValidate="TempSteg" SetFocusOnError="True" 
                Operator="DataTypeCheck" Type="Integer" Text="*"></asp:CompareValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Temperatursteget måste ligga mellan 1 och 100." 
                Display="Dynamic" Text="*" ControlToValidate="TempSteg" MaximumValue="100" MinimumValue="1" 
                SetFocusOnError="True" Type="Integer"></asp:RangeValidator>       
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
