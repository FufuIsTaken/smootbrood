<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="smoothboard2.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="cont">
        <div class="content">
            <div class="content-top-bottom">
                <h2>Featured PRODUCTS</h2>
                <div class="col-md-6 men">
                    <a href="single.html" class="b-link-stripe b-animate-go  thickbox">
                        <img class="img-responsive" src="images/t1.jpg" alt="">
                        <div class="b-wrapper">
                            <h3 class="b-animate b-from-top top-in   b-delay03 ">
                                <span>Bekijk Surfboards</span>
                            </h3>
                        </div>
                    </a>


                </div>
                <div class="col-md-6">
                    <div class="col-md1 ">
                        <a href="single.html" class="b-link-stripe b-animate-go  thickbox">
                            <img class="img-responsive" src="http://2.bp.blogspot.com/-o6SlDC3_2-s/TY4z50e2xxI/AAAAAAAAFzo/LIU90s8dJa8/s1600/wallbridge-top.png" alt="">
                            <div class="b-wrapper">
                                <h3 class="b-animate b-from-top top-in1   b-delay03 ">
                                    <span>Bekijk Surfboards</span>
                                </h3>
                            </div>
                        </a>

                    </div>
                    <div class="col-md2">
                        <div class="col-md-6 men1">
                            <a href="single.html" class="b-link-stripe b-animate-go  thickbox">
                                <img class="img-responsive" src="images/t3.jpg" alt="">
                                <div class="b-wrapper">
                                    <h3 class="b-animate b-from-top top-in2   b-delay03 ">
                                        <span>Bekijk Surfboards</span>
                                    </h3>
                                </div>
                            </a>

                        </div>
                        <div class="col-md-6 men2">
                            <a href="single.html" class="b-link-stripe b-animate-go  thickbox">
                                <img class="img-responsive" src="images/t4.jpg" alt="">
                                <div class="b-wrapper">
                                    <h3 class="b-animate b-from-top top-in2   b-delay03 ">
                                        <span>Bekijk Surfboards</span>
                                    </h3>
                                </div>
                            </a>

                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="content-top">
                <h1>Recente Producten</h1>
                <div class="grid-in">
                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>
                            <div class="col-md-3 grid-top simpleCart_shelfItem">
                                <a href="single.html" class="b-link-stripe b-animate-go  thickbox">
                                    <img class="img-responsive" src="<%# Eval("Afbeelding") %>" alt="">
                                    <div class="b-wrapper">
                                        <h3 class="b-animate b-from-left    b-delay03 ">
                                            <span><%# Eval("Naam") %></span>

                                        </h3>
                                    </div>
                                </a>
                                <p><a href="Artikelpagina.aspx?id=<%# Eval("ArtikelId") %>"><%# Eval("Naam") %></a></p>
                                <a href="#" class="item_add">
                                    <p class="number item_price"><i></i><%# Eval("Prijs") %></p>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
        <!----->
    </div>
</asp:Content>
