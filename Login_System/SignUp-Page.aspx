<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp-Page.aspx.cs" Inherits="Login_System.SignUp_Page" %>

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
    <h2>Sign Up</h2>
    <br />
    <br />
    <asp:Label runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="sUsernameTextbox" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="sPasswordTextbox" runat="server" type="password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" OnClick="SignUpButton_Click" />
    <br />
    <br />
    <asp:Button ID="LoginRedirectButton" runat="server" Text="Goto Login" OnClick="LoginRedirectButton_Click" />
    <br />
    <br /> 
    <asp:Label ID="error" runat="server" Text=""></asp:Label>
</section>
        <br />
        <br />
    </form>
</body>
</html>
