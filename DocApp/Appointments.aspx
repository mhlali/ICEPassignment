<%@ Page Title="Appointments" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointments.aspx.cs" Inherits="DocApp.Appointments" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Only the doctor is allowed to view the appointments.</h3>
    <h4>Login to view Appointments</h4>
    
    <br />
    <table class="nav-justified">
        
        <tr>
            <td style="width: 154px">Username</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="22px" Width="166px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="26px" TextMode="Password" Width="167px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 45px">&nbsp;</td>
            <td style="height: 45px">
                <asp:Label ID="lblLogin" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 45px"></td>
            <td style="height: 45px">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </td>
        </tr>
    </table>
    
</asp:Content>
