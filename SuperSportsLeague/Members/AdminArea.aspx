<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminArea.aspx.cs" Inherits="SuperSportsLeague.AdminArea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Super Sports League Admin Area</title>
    <link href="~/css/styleSSL.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h2>SSL Database Administration</h2>
                <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label>
                <asp:LoginName ID="LoginName" runat="server" />
                (<asp:LoginStatus ID="LoginStatus" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/Login.aspx" />)
            </div>


            <asp:GridView ID="GridView1" OnPageIndexChanging="ChangePage" CssClass="Grid" DataKeyNames="ID" runat="server" OnRowDeleting="OnRowDeleting" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Message" HeaderText="Message" />
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
