<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Smootbrood.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Portfolio Grid Section -->
    
    <div class="catalog">
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <div class="product">
                <a href="Productpage.aspx?id=<%# Eval("Id") %>">
                    <asp:Label ID="NaamLabel" runat="server" Text='<%# Eval("Naam") %>' /> <br />
                    <img src='<%# Eval("Afbeelding") %>' height="225" width=""/><br />
                    <asp:Label ID="PrijsLabel" runat="server" Text='<%# Convert.ToInt32(Eval("Prijs")).ToString("C") %>'/><br />
                    </a>
            </div>
        </ItemTemplate>
    </asp:ListView>
  </div>
</asp:Content>
