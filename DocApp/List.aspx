<%@ Page Title="Appointment List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="DocApp.List" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Here are the appointments scheduled by the patients.</h3>
    <p>
        <asp:GridView ID="gdvList" runat="server" AutoGenerateColumns="true">
        </asp:GridView>
    </p>
    <table style="width: 100%; height: 476px">
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td rowspan="8" style="background-image: url('NonMedi.jpg'); width: 827px;">&nbsp;</td>
            <td><p>Click <a href="ViewPatients.aspx">here</a> to view registered Patients.</p>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 152px; width: 113px"></td>
            <td style="height: 152px"></td>
        </tr>
    </table>
   
   
    
</asp:Content>
