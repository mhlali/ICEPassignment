<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mLogin.aspx.cs" Inherits="DocApp.Account.mLogin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Use a local account to log in as a patient.</h3>
    <p>
        <asp:Label ID="lblLogin" runat="server" ForeColor="Red"></asp:Label>
</p>
    
    <br />
    <table class="nav-justified">
        <tr>
            <td style="width: 154px">Username</td>
            <td style="width: 337px">
                <asp:TextBox ID="txtUsername" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="22px" Width="166px"></asp:TextBox>
            </td>
            <td rowspan="5" style="background-image: url('Back.gif')">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 154px">Password</td>
            <td style="width: 337px">
                <asp:TextBox ID="txtPassword" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="26px" TextMode="Password" Width="167px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 45px"></td>
            <td style="height: 45px; width: 337px;">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 45px">&nbsp;</td>
            <td style="height: 45px; width: 337px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 154px; height: 45px">&nbsp;</td>
            <td style="height: 45px; width: 337px;">
                <p><a href="Register.aspx">Register</a>&nbsp;if you don't have a local account</p>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
