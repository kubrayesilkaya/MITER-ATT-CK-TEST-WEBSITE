<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WebApplicationProje.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet3.css" rel="stylesheet" />
    <style>
        * {
            box-sizing: border-box;
        }

        /* Create three equal columns that floats next to each other */
        .column {
            float: left;
            width: 33.33%;
            padding: 10px;
            height: 400px; /* Should be removed. Only for demonstration */
            margin-top: 30px;
        }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }
    </style>
</head>
<body background="bg10.jpg">
        <ul>
        <li> <a href="Home.html">Home</a></li>
            <li> <a href="Test.aspx">Test</a></li>
            <li> <a href="Profile.aspx">Profile</a></li>
            <li> <a href="Contact.aspx">Contact Us</a></li>
            <li> <a href="AboutUs.html">About Us</a></li>
    </ul>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center; font-size: 50px;">MITRE ATT&CK TEST</h1>

            <div class="row">
                <div class="column" style="background-color: rgba(248,248,255,0.5);">
                    <h2>THE TEST TECHNIQUES</h2>
                    <h3>1- T1047 | Windows Management Instrumentation</h3>
                    <p>Adversaries may abuse Windows Management Instrumentation (WMI) to execute malicious commands and payloads. WMI is an administration feature that provides a uniform environment to access Windows system components. </p>
                    <h3>2- T1518 | Software Discovery</h3>
                    <p>Adversaries may attempt to get a listing of software and software versions that are installed on a system or in a cloud environment. Adversaries may use the information from Software Discovery during automated discovery to shape follow-on behaviors, including whether or not the adversary fully infects the target and/or attempts specific actions.</p>

                </div>
                <div class="column" style="background-color: rgba(28, 15, 69,0.5);">
                    <h2 style="text-align: center;">TESTING</h2>
                    <p>Choose one optioon and click the button to implement the test</p>
                    <asp:Button ID="btnTest" runat="server" Text="T1047 TEST BUTTON" OnClick="btnTest_Click" />
                    <asp:Button ID="btnTest2" runat="server" Text="T5118 TEST BUTTON" OnClick="btnTest2_Click" />
                </div>
                <div class="column" style="background-color: rgba(248,248,255,0.5);">
                    <h2>TEST RESULT</h2>
                    <asp:Button ID="btnResult" runat="server" Text="RESULT BUTTON" OnClick="testResult_Click" />

                    
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AttackID") %>'></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("AttackResult") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:DataList>

                    
                </div>
            </div>

        </div>
    </form>
</body>
</html>