<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductPagina.aspx.cs" Inherits="smoothboard2.ProductPagina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceholderId="body" runat="server">

<div class="grow">
		<div class="container">
			<h2><asp:Label ID="NaamLabel"  runat="server" Text="Naam"></asp:Label></h2>
		</div>
	</div>
	<!-- grow -->
		<div class="product">
			<div class="container">
				
				<div class="product-price1">
				<div class="top-sing">
				<div class="col-md-7 single-top">	
						<div class="flexslider">
			  <ul class="slides">
			    <li data-thumb="images/si.jpg">
			        <div class="thumb-image"> <img id="AfbeeldingLabel" src="Afbeelding" runat="server" data-imagezoom="true" class="img-responsive"> </div>
			  </ul>
		</div>

	<div class="clearfix"> </div>

	
	
	
	
	
	
					</div>	
					<div class="col-md-5 single-top-in simpleCart_shelfItem">
						<div class="single-para ">
						<p><asp:Label ID="BeschrijvingLabel"  runat="server" Text="Beschrijving"></asp:Label></p>
							<div class="star-on">
								
								<div class="review">
									<a href="#"> 1 customer review </a>
									
								</div>
							<div class="clearfix"> </div>
							</div>
							
							<h5 class="item_price">$ 500.00</h5>

							
								<a href="#" class="add-cart item_add">Toevoegen aan Winkelwagen</a>
							
						</div>
					</div>
				<div class="clearfix"> </div>
				</div>
			<!---->

		<div class=" bottom-product">
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="#"><img class="img-responsive" src="images/pi3.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
						<div class="ca-rt">
							<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
						</div>						
					</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="#"><img class="img-responsive" src="images/pi1.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
						<div class="ca-rt">
							<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
						</div>					</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="#"><img class="img-responsive" src="images/pi4.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
						<div class="ca-rt">
							<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
						</div>					</div>
					<div class="clearfix"> </div>
				</div>
</div>

		<div class="clearfix"> </div>
		</div>
		</div>
    </asp:Content>
