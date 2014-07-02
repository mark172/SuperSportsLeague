<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SuperSportsLeague.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SSL Login Page</title>
    <link href="css/styleSSL.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>SSL Admin Login</h2>
            <asp:Label ID="Label1" runat="server" Text="Please log in below to access the administration area."></asp:Label>
            <br />
            <br />
            <asp:Login ID="LoginControl" LoginButtonStyle-Font-Bold="true" runat="server" onauthenticate="LoginControl_Authenticate" BackColor="#E3EAEB" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="140px" Width="286px" TextLayout="TextOnTop">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle Font-Bold="True" BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55"></LoginButtonStyle>
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
        </div>
        <div>
            <br />
            <asp:Button ID="Button1" PostBackUrl="~/Index.aspx" runat="server" Text="Return Home" />
        </div>
    </form>
</body>
</html>
