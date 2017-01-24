<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="logon.aspx.cs" Inherits="Smootbrood.logon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Label ID="Label2" runat="server" Text="Username" Width="125px"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Password" Width="120px"></asp:Label>
&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
    <br />

    <br />
</asp:Content>
