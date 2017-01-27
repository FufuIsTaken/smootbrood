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
                                    <a href="Productpagina.aspx?id=<%# Eval("Id") %>">
                                        <img class="img-responsive" src="<%# Eval("Afbeelding") %>" alt="">
                                        <div class="pro-grid">
                                            <span class="buy-in">Bekijk</span>
                                        </div>
                                    </a>
                                </div>
                                <strong>
                                    <p class="tun"><%# Eval("Naam") %></p>
                                </strong>
                                <div class="ca-rt">
                                    <a href="#" class="item_add">
                                        <p class="number item_price"><i></i><%# Eval("Prijs") %></p>
                                    </a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="col-md-3 prod-rgt">
                <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Populair</h2>
                <br />
                <asp:ListView ID="ListView2" runat="server">
                    <ItemTemplate>
                        <div class=" pro-tp">
                            <div class="pl-lft">
                                <a href="Productpagina.aspx?id=<%# Eval("Id") %>">
                                    <img class="img-responsive" src="<%# Eval("Afbeelding") %>" alt=""></a>
                            </div>
                            <div class="pl-rgt">
                                <h6><a href="Productpagina.aspx?id=<%# Eval("Id") %>"><%# Eval("Naam") %></a></h6>
                                <p><a href="Productpagina.aspx?id=<%# Eval("Id") %>"><%# Eval("Prijs") %></a></p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <hr />
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
</asp:Content>
