<%@ Page Title="Book Appointment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookAppointment.aspx.cs" Inherits="DocApp.BookAppointment" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <h4>Book your appointments here</h4>
    <table class="nav-justified">
        <tr>
            <td style="width: 193px">ID</td>
            <td>
                <asp:TextBox ID="txtID" runat="server" BorderStyle="Solid" BorderWidth="1px" Width="151px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">First Name</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" BorderStyle="Solid" BorderWidth="1px" Width="151px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">Last Name</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server" BorderStyle="Solid" BorderWidth="1px" Width="151px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" BorderStyle="Solid" BorderWidth="1px" Width="151px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="#666666" Text="YYYY-MM-DD"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">Appointment Date</td>
            <td>
                <asp:TextBox ID="txtAppoDate" runat="server" BorderStyle="Solid" BorderWidth="1px" Width="151px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="#666666" Text="HH:MM"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">Appointment Time</td>
            <td>
                <asp:TextBox ID="txtAppoTime" runat="server" BorderStyle="Solid" BorderWidth="1px" Width="151px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">&nbsp;</td>
            <td>
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            </td>
        </tr>
</table>
    </asp:Content>

