<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producten.aspx.cs" Inherits="smoothboard2.Producten" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="grow">
		<div class="container">
			<h2>Products</h2>
		</div>
	</div>
	<!-- grow -->
	<div class="pro-du">
		<div class="container">
			<div class="col-md-9 product1">
				<div class=" bottom-product">
                    <asp:ListView ID="ListView1" runat="server">
                      <ItemTemplate>
                    <div class="col-md-6 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="Productpagina.aspx?id=<%# Eval("Id") %>" ><img class="img-responsive" src="<%# Eval("Afbeelding") %>" alt="">
							<div class="pro-grid">
										<span class="buy-in">Bekijk</span>
							</div>
						</a>	
						</div>
						<p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
						<div class="ca-rt">
							<a href="Productpagina.aspx?id=<%# Eval("Id") %>"  class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
						</div>
						<div class="clearfix"></div>
					</div>
       						</ItemTemplate>
                            </asp:ListView>
						<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
