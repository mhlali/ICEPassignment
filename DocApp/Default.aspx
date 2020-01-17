<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DocApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image: url('Back2.gif');">
        <h1>Doctor&#39;s Online</h1>
        <p>&nbsp;</p>
        <table class="nav-justified">
            <tr>
                <td style="width: 808px; height: 251px;">This is the online application, here patients book appointments to consult the Doctor.<br />
                    Patients need to register before they can book appointments<br />
                    <a href="http://www.asp.net" class="btn btn-primary btn-large">Learn more &raquo;</a></td>
                <td style="height: 251px">
                    <asp:Button ID="btnView" runat="server" BackColor="#0066CC" BorderStyle="None" CssClass="btn btn-primary btn-large" ForeColor="White" Height="49px" Text="View Appointments »" Width="254px" OnClick="btnView_Click" />
                </td>
            </tr>
        </table>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Medical Aid</h2>
            <p>
                Patients with medical aid will be helped with the benefit from the medical aid scheme they are using. High quality assistance will be provided to suite their needs.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Non-Medical Aid</h2>
            <p>
                These patients will get high quality help from the doctor, but priscriptions will be paid by the patients cash with their own money togrther with levys.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Priscriptions</h2>
            <p>
                Doctors priscriptions will be fatched to a pharmacy that is registered to the Healthy Association of South Africa. .
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
