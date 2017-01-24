<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Productpage.aspx.cs" Inherits="Smootbrood.Productpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="product1">
        <img id="AfbeeldingLabel" class="AfbeeldingLabel" runat="server" src="Afbeelding" />
        <br />
        €                    
        <asp:Label ID="PrijsLabel" class="PrijsLabel" runat="server" Text="Prijs" />
        <br />
        <a href="../Form.aspx?id=<%= ID %>" class="btnAfspraak">Afspraak maken             </a></div>
    <div class="product2">
        <asp:Label ID="NaamLabel" class="NaamLabel" runat="server" Text="Naam" />
        <br />
        <asp:Label ID="BeschrijvingLabel" class="BeschrijvingLabel" runat="server" Text="Beschrijving" />
        <br />

    </div>
</asp:Content>
