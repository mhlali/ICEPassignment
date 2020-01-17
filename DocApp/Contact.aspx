<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DocApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This is all of the information you will need to contact us.</h3>
    <address>
        417 Servaas Street<br />
        Pretoria West<br />
        0813</address>
    <p>Cell: 071 075 0795</p>

    <address>
        <strong>Support:</strong>   <a href="mailto:mandisi.mqwala@gmail.com">Gmail</a><br />
        <strong>Marketing:</strong> <a href="mailto:mandisi.mqwala@facebook.com">Facebook</a>
    </address>
</asp:Content>
