<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplicationProje.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Login Page</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body background="bg10.jpg">
     <section class="section">
  <div class="text">
    <h1>Welcome to
      <span class="slide">
        <span class="wrapper">
          <span style="background: -webkit-linear-gradient(#FF794D, #FF3269);    -webkit-background-clip: text;
                        -webkit-text-fill-color: transparent;">Mitre ATT&CK</span>
          <span style="background: -webkit-linear-gradient(#717aa3, #b7bcc4);    -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;">and Security</span>
          <span style="background: -webkit-linear-gradient(#FF794D, #FF3269);    -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;">Mitre ATT&CK</span>
        </span>
      </span>
    </h1>
  </div>
</section>
   <form id="Loginform" runat="server">
       <div>
           <h2>Login!</h2>
       </div>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="CompanyName" runat="server" Text="Company&nbsp;Name" ForeColor="Black" Font-Size="Larger"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtCompanyName" runat="server" placeholder="@companyName." Width="200px" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtCompanyName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Password" ForeColor="Black" Font-Size="Larger"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:TextBox ID="txtPassword" runat="server" placeholder="password." Width="200px" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                         <asp:CheckBox ID="remember" runat="server" Text="Remember Me" ForeColor="Black" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"> 
                        <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Go to the sign-up page" OnClick="Button1_Click" CausesValidation = "false" />
                    </td>
                </tr>
            </table>
        </div>
      
       <asp:Label ID="Label" runat="server" Text="" BackColor="Transparent" ForeColor="White" Font-Italic="True" Font-Size="Large" Font-Underline="True"></asp:Label>
    </form>
</body>
</html>
