<%@ Page Title="Registered Patients" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewPatients.aspx.cs" Inherits="DocApp.ViewPatients" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Here are the registered patients.</h3>
    <p>
        <asp:GridView ID="gdvPatients" runat="server">
        </asp:GridView>
    </p>
    <table style="width: 100%; height: 278px">
        <tr>
            <td>&nbsp;</td>
            <td rowspan="6" style="background-image: url('Medi.gif'); width: 498px;">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
   
   
    
</asp:Content>
