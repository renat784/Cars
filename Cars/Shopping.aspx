<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shopping.aspx.cs" Inherits="Cars.Shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="colorSecondary py-4 px-3">
        <ul class="nav nav-tabs" style="border-bottom: none" id="myTab" role="tablist">
            <li class="nav-item navTab">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab"
                    aria-controls="home" aria-selected="true">Search By Make
                </a>

            </li>
            <li class="nav-item navTab">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                    aria-controls="profile" aria-selected="false">Search By Body Style
                </a>

            </li>
        </ul>
        <div class="tab-content mt-4" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="px-3">
                    <div class="row">
                        <div class="col-lg-4 p-0">
                            <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                <asp:ListItem>Used Cars</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-4 p-0">
                            <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                <asp:ListItem>All Makes</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-4 p-0">
                            <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                <asp:ListItem>All Models</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-4 p-0">
                            <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                <asp:ListItem>No Max Price</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-2 p-0">
                            <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                <asp:ListItem>30 miles from</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-2 p-0">
                            <asp:TextBox CssClass="form-control borderRad-0" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 p-0">
                            <asp:Button CssClass="btn btn-success greenButton borderRad-0"
                                runat="server" Text="Search" />
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
                        <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                            <asp:ListItem>SUV</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2 p-0">
                        <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                            <asp:ListItem>No Max Price</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2 p-0">
                        <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                            <asp:ListItem>30 miles from</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2 p-0">
                        <asp:TextBox CssClass="form-control borderRad-0" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2 p-0">
                        <asp:Button CssClass="btn btn-success greenButton borderRad-0"
                            runat="server" Text="Search" />
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="mt-5">
        <h2 class="text-center">Find New & Used Cars for Sale</h2>
        <div class="colorGray">
            <h5 class="text-center py-2">Popular Searches Near You</h5>
            <div class="row pb-3">
                <div class="col-lg-3 text-center">
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
                <div class="col-lg-3 text-center">
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
                <div class="col-lg-3 text-center">
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
                <div class="col-lg-3 text-center">
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
    </div>

    <div>
        <h4 style="text-align: center">Bodystyle Search</h4>
        <div class="row">
            <div class="col-lg-3 form-group">
                <h5>Coupes & Sedans</h5>
                <ul class="list">
                    <li>
                        <a href="#">Sedan</a>
                    </li>
                    <li>
                        <a href="#">Convertible</a>
                    </li>
                    <li>
                        <a href="#">Coupe</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3 form-group">
                <h5>Pickup Trucks</h5>
                <ul class="list">
                    <li>
                        <a href="#">Regular Cab Pickup</a>
                    </li>
                    <li>
                        <a href="#">Crew Cab Pickup</a>
                    </li>
                    <li>
                        <a href="#">Extended Cab Pickup</a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-3 form-group">
                <h5>Vans & Minivans</h5>
                <ul class="list">
                    <li>
                        <a href="#">Minivan</a>
                    </li>
                    <li>
                        <a href="#">Cargo Van</a>
                    </li>
                    <li>
                        <a href="#">Passenger Van</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3 form-group">
                <h5>SUVs & Crossovers</h5>
                <ul class="list">
                    <li>
                        <a href="#">SUV</a>
                    </li>
                    <li>
                        <a href="#">Wagon</a>
                    </li>
                    <li>
                        <a href="#">Hatchback</a>
                    </li>
                </ul>
            </div>
        </div>
        <hr />
    </div>



    <div>
        <h4 style="text-align: center">Brand Search</h4>
        <div class="row">
            <div class="col-lg-3 form-group">
                <ul class="list">
                    <li>
                        <a href="#">Aston Martin</a>
                    </li>
                    <li>
                        <a href="#">Dodge</a>
                    </li>
                    <li>
                        <a href="#">Ford</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3 form-group">
                <ul class="list">
                    <li>
                        <a href="#">Hummer</a>
                    </li>
                    <li>
                        <a href="#">Acura</a>
                    </li>
                    <li>
                        <a href="#">Audi</a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-3 form-group">
                <ul class="list">
                    <li>
                        <a href="#">Bentley</a>
                    </li>
                    <li>
                        <a href="#">Chevrolet</a>
                    </li>
                    <li>
                        <a href="#">FIAT</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3 form-group">
                <ul class="list">
                    <li>
                        <a href="#">BMW</a>
                    </li>
                    <li>
                        <a href="#">Honda</a>
                    </li>
                    <li>
                        <a href="#">KIA</a>
                    </li>
                </ul>
            </div>
        </div>
        <hr />
    </div>

    <div class="row"
        style="background: linear-gradient(
          rgba(0, 0, 0, 0.7), 
          rgba(0, 0, 0, 0.7) ), url(Images/big-Map.png); color: white; padding: 30px 0; text-align: center">
        <div class="col-lg-1 offset-lg-2">
            <i class="fa fa-map-marker" style="font-size: 40px" aria-hidden="true"></i>
        </div>
        <div class="col-lg-5">
            <h2>Find the Best Car Dealers</h2>
        </div>
        <div class="col-lg-2">
            <asp:Button CssClass="btn btn-outline-dark white-outline-button" runat="server" Text="Search Near You" />
        </div>

    </div>

    <div class="row" style="background-color: #5c707c; color: white; padding: 15px 0">
        <div class="col-lg-5 offset-lg-1">
            <h5 class="font-weight-bold">Used-Car Values</h5>
            <p>Find out before you go to trade it in at the dealer or sell it yourself.</p>
            <p>
                <a style="color: white; text-decoration: underline" href="#">Check current book value &gt;</a>
            </p>
        </div>
        <div class="col-lg-5" style="background-color: #5c707c; color: white">
            <h5 class="font-weight-bold">Price Comparison Tool</h5>
            <p>The Price Comparison Tool helps you find the most value for your money.</p>
            <p>
                <a href="#" style="color: white; text-decoration: underline">Learn more about deal badges &gt;</a>
            </p>
        </div>
    </div>

    <div class="text-center colorGray pt-5 pb-2">
        <h3 class="mt-0">Used-Car Loan Rates</h3>
        <h1>4.93%</h1>
        <p>Current Average Loan Rate (APR)*</p>
        <p>Several factors can affect a car loan’s interest rate: the lender, the loan’s term length, your credit rating and the age of the used car you’re considering.</p>
        <p><a href="#">Read more</a></p>
        <p class="small">*Rates are averages and may change on an individual basis. <a href="#">Used car auto loan rates</a> provided by Bankrate.com</p>
    </div>

    <div class="mt-5">
        <h3 class="text-center">Used-Car Financing & Warranty FAQs</h3>
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
                           aria-controls="collapseExample">
                            What warranty comes with a used car?
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
                           aria-controls="collapseExample">
                            What is a bumper-to-bumper warranty and what does it cover?
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
                           aria-controls="collapseExample">
                            What does CPO mean?
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
    </div>

    <div class="mt-5 py-4 colorGray_2">
        <div class="text-center py-2">
            <h3>Tips for Buying a Used Car</h3>
            <h5 style="color: #777">Useful used-car advice from Cars.com experts to help you shop smart.</h5>
        </div>
        <div class="row mt-3">
            <div class="col-lg-4">
                <a href="#">
                    <div class="card h-100" >
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
                    <div class="card h-100" >
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
                    <div class="card h-100" >
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
                    <div class="card h-100" >
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
                    <div class="card h-100" >
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
                    <div class="card h-100" >
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

    <div class="mt-5 text-center">
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

    </div>
</asp:Content>
