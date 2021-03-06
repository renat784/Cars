﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shopping.aspx.cs" Inherits="Cars.Shopping" %>

<%@ Register Src="~/Reusable/FindTheDealer.ascx" TagName="findTheDealer" TagPrefix="CustomControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="updpnlRefresh" runat="server" UpdateMode="Conditional">
        <ContentTemplate>

            <script>

                // full page reload
                $(() => {
                    ChangeTab();
                })

                // partial page reload (isPostBack)
                function pageLoad(sender, args) {
                    if (args._isPartialLoad) {
                        ChangeTab();
                    }
                }

                function ChangeTab() {
                    if (localStorage["shopping_activeTabId"] !== null &&
                        localStorage["shopping_activeTabId"] !== undefined) {

                        ActiveTabSwitcher(localStorage["shopping_activeTabId"]);
                    } else {
                        ActiveTabSwitcher("home-tab");

                        localStorage["shopping_activeTabId"] = "home-tab";
                    }
                }

                function ActiveTabSwitcher(id) {
                    switch (id) {
                        case "home-tab":
                            if ($("#profile-tab").hasClass("active")) { $("#profile-tab").removeClass("active"); }
                            if ($("#profile").hasClass("active")) { $("#profile").removeClass("active"); }
                            if ($("#profile").hasClass("show")) { $("#profile").removeClass("show"); }

                            if (!$("#home-tab").hasClass("active")) { $("#home-tab").addClass("active"); }
                            if (!$("#home").hasClass("active")) { $("#home").addClass("active"); }
                            if (!$("#home").hasClass("show")) { $("#home").addClass("show"); }
                            break;

                        case "profile-tab":
                            if ($("#home-tab").hasClass("active")) { $("#home-tab").removeClass("active"); }
                            if ($("#home").hasClass("active")) { $("#home").removeClass("active"); }
                            if ($("#home").hasClass("show")) { $("#home").removeClass("show"); }

                            if (!$("#profile-tab").hasClass("active")) { $("#profile-tab").addClass("active"); }
                            if (!$("#profile").hasClass("active")) { $("#profile").addClass("active"); }
                            if (!$("#profile").hasClass("show")) { $("#profile").addClass("show"); }
                            break;
                    }
                }

                function TabClicked(e) {

                    ActiveTabSwitcher(e.id);
                    localStorage["shopping_activeTabId"] = e.id;
                }

            </script>

            <div class="bigImage" style="background-image: url(Images/mainImage2.png); position: relative">
                <div class="textOnImage">
                    <h2 class="font-weight-bold">Shop Cars for Sale</h2>
                    <h3>Find the right price, dealer and advice.</h3>
                </div>
            </div>
            <div class="divOnImage px-lg-3 p-sm-0" style="position: relative">
                <div class="mb-lg-2 pr-3 blackBox">
                    <div class="row">
                        <div class="col-lg-10 col-sm-8"></div>
                        <div class="col-lg-2 col-sm-4 p-2 pr-3" style="background-color: rgba(0,0,0,0.8); text-align: right;">
                            <a class="blackBoxOnImage" href="#">
                                <div id="model">2020 Volkswagen</div>
                                <div>
                                    <span>Learn More</span>
                                    <i class="fa fa-external-link ml-1" aria-hidden="true"></i>
                                </div>
                                <div id="sponsored">Sponsored by Jeep</div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="colorSecondary py-4  px-3 ">
                    <ul class="nav nav-tabs" style="border-bottom: none" id="myTab" role="tablist">
                        <li class="nav-item navTab">
                            <a class="nav-link  py-1 px-2" onclick="TabClicked(this)" id="home-tab" data-toggle="tab" href="#home" role="tab"
                                aria-controls="home" aria-selected="true">Search By Make
                            </a>
                        </li>
                        <li class="nav-item navTab">
                            <a class="nav-link py-1 px-2" onclick="TabClicked(this)" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                                aria-controls="profile" aria-selected="false">Search By Body Style
                            </a>
                        </li>
                        <li id="advSearch" style="margin-left: auto; text-align: right">
                            <a class="whiteLink" href="advanced-search.aspx">Advanced Search &gt;</a>
                        </li>
                    </ul>
                    <div class="tab-content mt-4" id="myTabContent">
                        <div class="tab-pane fade " id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="px-3">
                                <div class="row">
                                    <div class="col-lg-4 p-0">
                                        <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                            <asp:ListItem>Used Cars</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-4 p-0">
                                        <asp:DropDownList ID="Make" OnSelectedIndexChanged="OnSelectedIndexChanged" CssClass="form-control borderRad-0" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource" DataTextField="Make" DataValueField="Make">
                                        </asp:DropDownList>

                                        <asp:SqlDataSource runat="server" ID="SqlDataSource" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Make] FROM [Cars]"></asp:SqlDataSource>
                                    </div>
                                    <div class="col-lg-4 p-0">
                                        <asp:DropDownList ID="Model" OnSelectedIndexChanged="OnSelectedIndexChanged" OnDataBound="Model_OnDataBound" CssClass="form-control borderRad-0" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Model" DataValueField="Model">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Model], [Make] FROM [Cars] WHERE ([Make] = @Make)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Make" PropertyName="SelectedValue" Name="Make" Type="String"></asp:ControlParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4  p-0">
                                        <asp:DropDownList ID="Price" OnSelectedIndexChanged="OnSelectedIndexChanged" SelectMethod="MaxPriceList" CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="row">
                                            <div class="col-6 p-0">
                                                <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                                    <asp:ListItem>30 miles from</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-6  p-0">
                                                <asp:TextBox CssClass="form-control borderRad-0" runat="server" Text="ZIP"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 p-0">
                                        <asp:Button CssClass="btn btn-success greenButton borderRad-0"
                                            runat="server" Text="Search" OnClick="SearchByMake" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="row px-3">
                                <div class="col-lg-2 p-0">
                                    <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                        <asp:ListItem>Used Cars</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <asp:DropDownList ID="Bodystyle" OnSelectedIndexChanged="OnSelectedIndexChanged" CssClass="form-control borderRad-0" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Bodystyle" DataValueField="Bodystyle">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Bodystyle] FROM [Cars]"></asp:SqlDataSource>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <asp:DropDownList OnSelectedIndexChanged="OnSelectedIndexChanged" ID="Bodystyle_MaxPrice" CssClass="form-control borderRad-0" SelectMethod="MaxPriceList" runat="server" AutoPostBack="True">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                        <asp:ListItem>30 miles from</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <asp:TextBox CssClass="form-control borderRad-0" Text="ZIP" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <asp:Button CssClass="btn btn-success greenButton borderRad-0"
                                        runat="server" Text="Search" OnClick="SearchByBodyStyle" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <section>
                <h3 class="text-center">Find New & Used Cars for Sale</h3>
                <div class="colorGray">
                    <h5 class="text-center py-2 mb-0">Popular Searches Near You</h5>
                    <div class="row px-lg-5">
                        <div class="col-lg-3 p-lg-2 text-center carItem">
                            <a href="#">
                                <div style="background-color: white">
                                    <p style="color: black" class="font-weight-bold mb-0 pt-3">Used Ford F-150s</p>
                                    <p>
                                        <span>See all near you &gt;</span>
                                    </p>
                                    <div>
                                        <img style="width: 100%" src="Images/pickUp.png" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3 p-lg-2 text-center carItem">
                            <a href="#">
                                <div style="background-color: white">
                                    <p style="color: black" class="font-weight-bold mb-0 pt-3">Used Jeep Wranglers</p>
                                    <p>
                                        <span>See all near you &gt;</span>
                                    </p>
                                    <div>
                                        <img style="width: 100%" src="Images/jeep.png" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3 p-lg-2 text-center carItem">
                            <a href="#">
                                <div style="background-color: white">
                                    <p style="color: black" class="font-weight-bold mb-0 pt-3">Used Dodge Challenger </p>
                                    <p>
                                        <span>See all near you &gt;</span>
                                    </p>
                                    <div>
                                        <img style="width: 100%" src="Images/camaro.png" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3  p-lg-2 text-center carItem">
                            <a href="#">
                                <div style="background-color: white">
                                    <p style="color: black" class="font-weight-bold mb-0 pt-3">Electric Cars</p>
                                    <p>
                                        <span>See all near you &gt;</span>
                                    </p>
                                    <div>
                                        <img style="width: 100%" src="Images/tesla.png" />
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <section class="body-content">
                <h4 class="mb-4" style="text-align: center">Bodystyle Search</h4>
                <div class="row">
                    <div class="col-lg-6 col-sm-12">
                        <div class="row">
                            <div class="col-6">
                                <div class=" form-group">
                                    <h5>Coupes & Sedans</h5>
                                    <ul class="list">
                                        <li>
                                            <a href="/SearchResult?bodystyle=sedan">Sedan</a>
                                        </li>
                                        <li>
                                            <a href="/SearchResult?bodystyle=convertible">Convertible</a>
                                        </li>
                                        <li>
                                            <a href="/SearchResult?bodystyle=coupe">Coupe</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class=" form-group">
                                    <h5>Pickup Trucks</h5>
                                    <ul class="list">
                                        <li>
                                            <a href="/SearchResult?bodystyle=Regular+Cub+Pickup">Regular Cub Pickup</a>
                                        </li>
                                        <li>
                                            <a href="/SearchResult?bodystyle=Crew+Cub+Pickup">Crew Cub Pickup</a>
                                        </li>
                                        <li>
                                            <a href="/SearchResult?bodystyle=Extended+Cub+Pickup">Extended Cub Pickup</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-12">
                        <div class="row">
                            <div class="col-6">
                                <div class=" form-group">
                                    <h5>Vans & Minivans</h5>
                                    <ul class="list">
                                        <li>
                                            <a href="/SearchResult?bodystyle=minivan">Minivan</a>
                                        </li>
                                        <li>
                                            <a href="/SearchResult?bodystyle=Cargo+Van">Cargo Van</a>
                                        </li>
                                        <li>
                                            <a href="/SearchResult?bodystyle=Passenger+Van">Passenger Van</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class=" form-group">
                                    <h5>SUVs & Crossovers</h5>
                                    <ul class="list">
                                        <li>
                                            <a href="/SearchResult?bodystyle=SUV">SUV</a>
                                        </li>
                                        <li>
                                            <a href="/SearchResult?bodystyle=Wagon">Wagon</a>
                                        </li>
                                        <li>
                                            <a href="/SearchResult?bodystyle=Hatchback">Hatchback</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
            </section>
            <section class="body-content">
                <h4 style="text-align: center">Brand Search</h4>
                <asp:Repeater runat="server" DataSourceID="SqlDataSource">
                    <HeaderTemplate>
                        <div class="row">
                            <div class="col-lg-12 text-center form-group">
                                <ul class="list">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <a href="/SearchResult?make=<%#Eval("Make")%>"><%#Eval("Make")%></a>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                        </div>
                    </div>
                    </FooterTemplate>
                </asp:Repeater>
                <hr />
            </section>

            <CustomControl:findTheDealer runat="server"></CustomControl:findTheDealer>

            <div class="row py-3" style="background-color: #5c707c; color: white;">
                <div class="col-lg-5 offset-1 ">
                    <div class="">
                        <h5 class="font-weight-bold">Used-Car Values</h5>
                        <p class="mb-2">Find out before you go to trade it in at the dealer or sell it yourself.</p>
                        <p>
                            <a style="color: white; text-decoration: underline" href="#">Check current book value &gt;</a>
                        </p>
                    </div>
                </div>
                <div class="col-lg-5 offset-1" style="background-color: #5c707c; color: white">
                    <div class="">
                        <h5 class="font-weight-bold">Price Comparison Tool</h5>
                        <p class="mb-2">The Price Comparison Tool helps you find the most value for your money.</p>
                        <p>
                            <a href="#" style="color: white; text-decoration: underline">Learn more about deal badges &gt;</a>
                        </p>
                    </div>
                </div>
            </div>
            <section class="text-center colorGray p-3">
                <h3 class="mt-0">Used-Car Loan Rates</h3>
                <h1>4.93%</h1>
                <p>Current Average Loan Rate (APR)*</p>
                <p>Several factors can affect a car loan’s interest rate: the lender, the loan’s term length, your credit rating and the age of the used car you’re considering.</p>
                <p><a href="#">Read more</a></p>
                <p class="small">*Rates are averages and may change on an individual basis. <a href="#">Used car auto loan rates</a> provided by Bankrate.com</p>
            </section>
            <section>
                <h3 class="text-center mb-4">Used-Car Financing & Warranty FAQs</h3>
                <div class="col-lg-8 offset-lg-2">
                    <div>
                        <p class="font-weight-bold">Financing & Lease</p>
                        <div>
                            <p>
                                <a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">Can you lease a used car?
                                </a>
                            </p>
                            <div class="collapse mb-5" id="collapseExample">
                                <div class="card card-body p-0" style="border: none">
                                    Most dealers don't offer leasing on used cars, but used cars that were leased when new and are now for sale provide some benefits, such as good condition and low miles.
                        <strong>Related:</strong>
                                    <a href="#">Off-Lease Car Glut Might Mean Used-Car Buyer’s Market</a>
                                </div>
                            </div>
                        </div>
                        <div>
                            <p>
                                <a data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample">How do I finance a used car?
                                </a>
                            </p>
                            <div class="collapse mb-5" id="collapseExample2">
                                <div class="card card-body p-0" style="border: none">
                                    Using the dealership’s lender is convenient, but it's best to shop around at banks and credit unions ahead of time so you'll know whose rate is best when you're at a dealership. This research may take a few days but can be well worth the time.
                                    <strong>Related:</strong>
                                    <a href="#">Inside the Finance and Insurance Room</a>
                                    <a href="#">Auto Loan Basics for First-Time Buyers</a>
                                    <a href="#">What You Need to Get a Car Loan</a>
                                </div>
                            </div>
                        </div>
                        <div>
                            <p>
                                <a data-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false" aria-controls="collapseExample">Are loan rates higher for used cars?
                                </a>
                            </p>
                            <div class="collapse mb-5" id="collapseExample3">
                                <div class="card card-body p-0" style="border: none">
                                    Yes, loan rates are higher overall for used versus new cars, but they may be better if the car is factory-certified pre-owned 
                                    because manufacturers may offer attractive interest rates to promote CPO sales. Before financing with a dealer, bank or credit union, 
                                    check the national average interest rates for used cars at <a href="#">Bankrate.com.</a>
                                    <strong>Related:</strong>
                                    <a href="#">Report: Average payments for New, Used Cars Rise</a>
                                </div>
                            </div>
                        </div>
                        <div>
                            <p>
                                <a data-toggle="collapse" href="#collapseExample4" role="button" aria-expanded="false" aria-controls="collapseExample">How do I know if I can afford the payments?
                                </a>
                            </p>
                            <div class="collapse mb-5" id="collapseExample4">
                                <div class="card card-body p-0" style="border: none">
                                    You can estimate your payments here using <a href="#">Cars.com’s finance calculators.</a> You should have a down payment of at least 20 percent, financing lasting no longer than four years and a principal, interest and insurance total not exceeding 10 percent of your gross household income.
                                    <strong>Related:</strong>
                                    <a href="#">Can You Afford Your Car?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mt-5">
                        <p class="font-weight-bold">Warranty</p>
                        <div>
                            <p>
                                <a data-toggle="collapse" href="#collapseExample5" role="button" aria-expanded="false" aria-controls="collapseExample">Are extended warranties worth the money?
                                </a>
                            </p>
                            <div class="collapse mb-5" id="collapseExample5">
                                <div class="card card-body p-0" style="border: none">
                                    Extended warranties offer peace of mind, but apart from the coverage included with factory-certified pre-owned cars, additional plans come with a price that studies have shown to be higher than the benefits you can claim in repairs.
                                    <strong>Related:</strong>
                                    <a href="#">CPO Pros and Cons Versus Extended Warranty</a>
                                </div>
                            </div>
                        </div>
                        <div>
                            <p>
                                <a data-toggle="collapse" href="#collapseExample6" role="button" aria-expanded="false"
                                    aria-controls="collapseExample">What warranty comes with a used car?
                                </a>
                            </p>
                            <div class="collapse mb-5" id="collapseExample6">
                                <div class="card card-body p-0" style="border: none">
                                    Initial warranties are limited by the miles and age of a car, so if the car has higher miles, original warranties may no longer apply. Also note that warranties don't always transfer to subsequent buyers. Check the vehicle manufacturer’s specifications for warranty limits.
                                    <strong>Related:</strong>
                                    <a href="#">Making Sense of Used-Car Warranties</a>
                                </div>
                            </div>
                        </div>
                        <div>
                            <p>
                                <a data-toggle="collapse" href="#collapseExample7" role="button" aria-expanded="false"
                                    aria-controls="collapseExample">What is a bumper-to-bumper warranty and what does it cover?
                                </a>
                            </p>
                            <div class="collapse mb-5" id="collapseExample7">
                                <div class="card card-body p-0" style="border: none">
                                    Often called a basic warranty or new-vehicle warranty, a bumper-to-bumper policy covers components such as air conditioning, audio systems, vehicle sensors, fuel systems and major electrical components. Most policies exclude regular maintenance such as fluid top-offs and oil changes, but a growing number of brands have separate free-maintenance provisions. Bumper-to-bumper warranties typically expire faster than powertrain warranties. Terms are typically three years or 36,000 miles, although some have terms as high as six years or 60,000 miles. Check the vehicle manufacturer’s specifications for bumper-to-bumper warranty limits.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mt-5">
                        <p class="font-weight-bold">Certified Used Cars</p>
                        <div>
                            <p>
                                <a data-toggle="collapse" href="#collapseExample10" role="button" aria-expanded="false"
                                    aria-controls="collapseExample">What does CPO mean?
                                </a>
                            </p>
                            <div class="collapse mb-5" id="collapseExample10">
                                <div class="card card-body p-0" style="border: none">
                                    A certified pre-owned or CPO car has been inspected to meet minimum quality standards and typically includes some type of warranty. While dealers and third parties certify cars, the gold standard is an automaker-certified vehicle that provides a factory-backed warranty, often extending the original coverage. Vehicles must be in excellent condition and have low miles and wear to be certified, which is why off-lease vehicles feed many CPO programs.
                                    <strong>Related:</strong>
                                    <a href="#">Tips to Buying a CPO Car</a>
                                </div>
                            </div>
                        </div>
                        <div>
                            <a href="#">Shop and Learn CPO &gt;</a>
                        </div>
                    </div>
                </div>
            </section>
            <section class="colorGray_2">
                <div class="py-4 body-content">
                    <div class="text-center py-2">
                        <h3>Tips for Buying a Used Car</h3>
                        <h5 style="color: #777">Useful used-car advice from Cars.com experts to help you shop smart.</h5>
                    </div>
                    <div class="row mt-3">
                        <div class="col-lg-4">
                            <a href="#">
                                <div class="card h-100">
                                    <img src="Images/homePagePic-1.jpg" class="card-img-top">
                                    <div class="card-body">
                                        <h5 class="card-title font-weight-bold black text-center">First-Time Buyers: New, Used or Certified Pre-Owned?</h5>
                                        <p class="card-text black">For first-time buyers there's a key dilemma: Should I buy a new vehicle or a used vehicle? Or should I take the third path, certified pre-owned? We detail each option here.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-4">
                            <a href="#">
                                <div class="card h-100">
                                    <img src="Images/homePagePic-2.png" class="card-img-top">
                                    <div class="card-body">
                                        <h5 class="card-title font-weight-bold black text-center">Is a Used Car a Good Idea?</h5>
                                        <p class="card-text black">Thanks to engineering strides, vehicles have never been more durable and maintenance-free, and used cars, which have become more popular than ever, are no less a value.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-4">
                            <a href="#">
                                <div class="card h-100">
                                    <img src="Images/homePagePic-3.jpg" class="card-img-top">
                                    <div class="card-body">
                                        <h5 class="card-title font-weight-bold black text-center">Making Sense of Used-Car Warranties</h5>
                                        <p class="card-text black">Used cars tend to have fewer warranty options than their brand-new counterparts, but the policies can be just as daunting to understand. We checked several used-car policies and consulted with a few experts. Here's what we found.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-lg-4">
                            <a href="#">
                                <div class="card h-100">
                                    <img src="Images/homePagePic-4.jpg" class="card-img-top">
                                    <div class="card-body">
                                        <h5 class="card-title font-weight-bold black text-center">9 Fine Choices for Used-Car Shoppers</h5>
                                        <p class="card-text black">If the 1.8 million used vehicles on Cars.com didn't tip you off, that's quite the haystack. Which needles should you look for? Cars.com reviewers, a crew well-versed in used-car purchases, name their favorite used cars from the past dozen years.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-4">
                            <a href="#">
                                <div class="card h-100">
                                    <img src="Images/homePagePic-5.jpg" class="card-img-top">
                                    <div class="card-body">
                                        <h5 class="card-title font-weight-bold black text-center">How to inspect a Used Car</h5>
                                        <p class="card-text black">It's tempting to hop in a used car you’re considering buying and take it for a spin, but it's wise to inspect the car carefully before and after the drive to determine its condition and attempt to confirm the answers the seller gave you before you arrived.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-4">
                            <a href="#">
                                <div class="card h-100">
                                    <img src="Images/homePagePic-6.png" class="card-img-top">
                                    <div class="card-body">
                                        <h5 class="card-title font-weight-bold black text-center">Used-Car-Buyer's Checklist</h5>
                                        <p class="card-text black">As a potential used-car buyer, there's a lot to consider before handing over your hard-earned cash. We've created this step-by-step checklist to help get you on your way to buying a used car that best fits your life.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <section class="text-center">
                <h3>Were you looking for more on these related topics?</h3>
                <div class="mt-4">
                    <div>
                        <h5 class="mb-0">Knowing if Certified-Used Is for You</h5>
                        <p>CPO is a great option when buying used. <a href="#">Shop & learn CPO &gt;</a></p>
                    </div>
                    <div>
                        <h5 class="mb-0">Researching Models and Reviews</h5>
                        <p>Read specs and reviews, and compare. <a href="#">Research & learn &gt;</a></p>
                    </div>
                    <div>
                        <h5 class="mb-0">On a Tight Budget?</h5>
                        <p>Shop our list of affordable used cars near you. <a href="#">Cheap cars for sale &gt;</a></p>
                    </div>
                </div>
            </section>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
