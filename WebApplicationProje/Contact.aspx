<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplicationProje.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Get in touch</title>
        <link rel="stylesheet" type="text/css" href="CompanyStyle.css"/>
</head>
<body background="contactbckgrnd2.jpg">
    <div id="banner">
        <h1><marquee scrollamount="2" height="200" width="100%" direction="down" style="height: 120px; width: 100%;"><img src="CeRaLogo.png" /></marquee></h1>
    </div>
    <div id="navBar">
        <ul>
            <li> <a href="Home.html">Home</a></li>
            <li> <a href="Test.aspx">Test</a></li>
            <li> <a href="Profile.aspx">Profile</a></li>
            <li> <a href="Contact.aspx">Contact Us</a></li>
            <li> <a href="AboutUs.html">About Us</a></li>
        </ul>
    </div>
    <form id="Contactform" runat="server">
        <div>
            <b> <asp:Label ID="lblTitle" runat="server" Text="CONTACT FORM" ForeColor="black" Width="283px" Height="40px" Font-Size="XX-Large" ></asp:Label></b>
            <br />
            <div id="leftArea" runat="server">
            <table id="mytable" runat="server">
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Size="X-Large" ForeColor="black"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="txtEmail" runat="server" Height="33px" Width="230px" Font-Size="Larger"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="**Required" ForeColor="DarkBlue" ControlToValidate="txtEmail" Font-Size="Larger"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Must be in e-mail format!" ForeColor="DarkBlue" Font-Size="Larger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblType" runat="server" Text="Choose Message Type:" Font-Size="X-Large" ForeColor="black"></asp:Label>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButtonList ID="Type" runat="server" BackColor="Transparent" Height="2px" TextAlign="Left" Font-Size="X-Large" ForeColor="#FFD9F2">
                             <asp:ListItem>Suggestion</asp:ListItem>
                             <asp:ListItem>Complaint</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" Text="Your message:" Font-Size="X-Large" ForeColor="black"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="txtMessage" runat="server" Height="158px" TextMode="MultiLine" Width="230px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="**Required" ForeColor="DarkBlue" ControlToValidate="txtMessage" Font-Size="Larger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td ></td>
                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSave" runat="server" Text="Send" OnClick="Save_Click" Font-Size="X-Large"  />
                    </td>
                </tr>
            </table>
            </div>
            <br />
        </div>
        <div style="margin:20% 0 0 0; text-align:center">
                <asp:Label ID="labelMessage" runat="server" Font-Size="24px"></asp:Label>
        </div>
       
    </form>
</body>
</html>
