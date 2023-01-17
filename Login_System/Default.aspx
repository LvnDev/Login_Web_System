<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Login_System.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
<section style="background-color:gray; padding:2px; text-align:center;">
    <h2>Login</h2>
    <br />
    <br />
    <asp:Label runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="UsernameTextbox" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="PasswordTextbox" runat="server" type="password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
    <br />
    <br />
    <asp:Button ID="SignUpRedirectButton" runat="server" Text="Sign Up" OnClick="SignUpRedirectButton_Click" />
    <br />
    <br />
    <asp:Label ID="error" runat="server" Text=""></asp:Label>
</section>
        <br />
        <br />

    </form>
</body>
</html>
