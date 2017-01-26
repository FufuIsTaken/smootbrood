<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="logon.aspx.cs" Inherits="smoothboard2.logon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    	<div class="grow">
		<div class="container">
			<h2>Login</h2>
		</div>
	</div>
	<!-- grow -->
<!--content-->
<div class="container">
		<div class="account">
		<div class="account-pass">
		<div class="col-md-8 account-top">
			<form runat="server">
				
			<div> 	
				<span>Gebruikersnaam</span>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
			</div>
			<div> 
				<span >Wachtwoord</span>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
			</div>				
				    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
    <br />

    <br />
			</form>
		</div>
	<div class="clearfix"> </div>
	</div>
	</div>

</div>
</asp:Content>
