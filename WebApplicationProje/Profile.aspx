<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplicationProje.Profile" %>

<!DOCTYPE html>
<html>
<head>
    <title>ProfileInformations</title>
    <link rel="stylesheet" href="StyleSheet4.css">
</head>
<body background="bg10.jpg">
    <ul>
        <li><a href="Home.html">Home</a></li>
        <li><a href="Test.aspx">Test</a></li>
        <li><a href="Profile.aspx">Profile</a></li>
        <li><a href="Contact.aspx">Contact Us</a></li>
        <li><a href="AboutUs.html">About Us</a></li>
    </ul>
    <h1 style="top: 100px;">Profile Informations Update</h1>

    <form id="ProfileForm" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="CompanyName" runat="server" Text="Company&nbsp;Name" ForeColor="Black" Font-Size="Larger"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCompanyName" runat="server" placeholder="Company Name" Width="200px" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="Black" Font-Size="Larger"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" Width="200px" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Phone" ForeColor="Black" Font-Size="Larger"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="05*****" Width="200px" Height="25px" TextMode="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="e-mail" ForeColor="Black" Font-Size="Larger"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="example@example.com" Width="200px" Height="25px" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save Changes" OnClick="btnSave_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <div id="message"></div>
</body>
</html>
