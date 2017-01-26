<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductPagina.aspx.cs" Inherits="smoothboard2.ProductPagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="body" runat="server">

    <div class="grow">
        <div class="container">
            <h2>
                <asp:Label ID="NaamLabel" runat="server" Text="Naam"></asp:Label></h2>
        </div>
    </div>
    <!-- grow -->
    <div class="product">
        <div class="container">

            <div class="product-price1">
                <div class="top-sing">
                    <div class="col-md-7 single-top">
                        <div class="flexslider">
                            <div class="thumb-image">
                                <img id="AfbeeldingLabel" src="Afbeelding" runat="server" data-imagezoom="true" class="img-responsive">
                            </div>
                        </div>

                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-5 single-top-in simpleCart_shelfItem">
                        <div class="single-para ">
                            <p>
                                <asp:Label ID="BeschrijvingLabel" runat="server" Text="Beschrijving"></asp:Label>
                            </p>
                            <div class="star-on">

                                <div class="review">
                                    <a href="#">1 customer review </a>

                                </div>
                                <div class="clearfix"></div>
                            </div>

                            <h5 class="item_price">$<asp:Label runat="server" ID="PrijsLabel" Text="Prijs" /></h5>


                            <a href="#" class="add-cart item_add">Toevoegen aan Winkelwagen</a>

                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!---->

                <div class=" bottom-product">
                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>


                            <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                                <div class="product-at ">
                                    <a href="Productpagina.aspx?id=<%# Eval("Id") %>">
                                        <img class="img-responsive" src="<%# Eval("Afbeelding") %>" alt="">
                                        <div class="pro-grid">
                                            <span class="buy-in">Bekijk</span>
                                        </div>
                                    </a>
                                &nbsp;&nbsp;&nbsp;</div>
                                <p class="tun">
                                    <span><%# Eval("Naam") %></span><br>
                                    CLARISSA
                                </p>
                                <div class="ca-rt">
                                    <a href="#" class="item_add">
                                        <p class="number item_price"><i></i>$<%# Eval("Prijs") %></p>
                                    </a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
