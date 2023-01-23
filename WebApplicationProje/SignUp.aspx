<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplicationProje.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up Page</title>
        <link href="SignUpStyleSheet.css" rel="stylesheet" />
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
   <form id="Signupform" runat="server">
       <div>
           <h2>Sign Up</h2>
       </div>
        <div id="MyTable" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="txtCompanyName" runat="server" placeholder="Company Name" Width="200px" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtCompanyName"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                         <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" Width="200px" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" Width="200px" Height="25px" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDate" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCountry" runat="server" placeholder="Country" Width="200px" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCountry" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server" placeholder="City" Width="200px" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                     <td>
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="05*********" Width="200px" Height="25px" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="example@example.com" Width="200px" Height="25px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Must be in e-mail format!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                     <td>
                        <select class="select" id="companyType" name="option">
                            <option value="" disabled selected>Choose Company Type</option>
                            <option value="1">Incorporated Company</option>
                            <option value="2">Limited Company</option>
                            <option value="3">Unlimited Company</option>
                            <option value="4">Cooperative Company</option>
                            <option value="5">Commandite Company</option>
                        </select>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"> 
                        <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="RegisterButton" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sign Up &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" OnClick="RegisterButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="toLoginButton" runat="server" Text="Go to the login page" OnClick="LoginPage_Click" CausesValidation = "false" Width="299px" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="margin:20% 0 0 0; text-align:center">
                <asp:Label ID="lblMessage" runat="server" Font-Size="24px"></asp:Label>
        </div>
    </form>
</body>
</html>
