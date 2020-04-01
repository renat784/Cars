<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="research.aspx.cs" Inherits="Cars.research" %>

<%@ Register Src="~/Reusable/FindTheDealer.ascx" TagName="findTheDealer" TagPrefix="CustomControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="updpnlRefresh" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="bigImage" style="background-image: url(Images/researchCar.jpg); position: relative">
                <div class="textOnImage">
                    <h2 class="font-weight-bold">Make Smart Choices</h2>
                    <h3>Read specs and reviews, and compare cars.</h3>
                </div>
            </div>
            <div class="px-sm-0 px-lg-3">
                <div class="divOnImage" style="position: relative">
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
                    <div class="p-3 colorPrimary col-sm-12" style="border-radius: 5px">
                        <div>
                            <p style="color: white">Research a specific model - new or used.</p>
                        </div>
                        <div class="row px-lg-3">
                            <div class="col-lg-3 col-sm-12 p-lg-0">
                                <asp:DropDownList ID="Make" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource" DataTextField="Make" DataValueField="Make">
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Make] FROM [Cars]"></asp:SqlDataSource>
                            </div>
                            <div class="col-lg-3 col-sm-12 p-lg-0">
                                <asp:DropDownList ID="Model" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Model" DataValueField="Model">
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Model] FROM [Cars] WHERE ([Make] = @Make)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Make" PropertyName="SelectedValue" Name="Make" Type="String"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                            <div class="col-lg-3 col-sm-12 p-lg-0">
                                <asp:DropDownList ID="Year" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Year" DataValueField="Year">
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Year] FROM [Cars] ORDER BY [Year]"></asp:SqlDataSource>
                            </div>
                            <div id="searchResearch" class="col-lg-3 col-sm-12 p-lg-0">
                                <asp:Button CssClass="form-control" OnClick="SearchCars" runat="server" Text="Search" />
                            </div>
                        </div>
                    </div>
                </div>
                <section>
                    <div class="text-center">
                        <h4 class="font-weight-bold">Research Car Models</h4>
                        <h5 class="font-weight-bold">Start with Type</h5>
                    </div>
                    <div class="row carRow">
                        <div class="col-lg-3 ">
                            <a href="/SearchResult?bodystyle=sedan">
                                <div>
                                    <img src="../Content/CarTypes/sedan.png" />
                                </div>
                                <p>Sedan</p>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="/SearchResult?bodystyle=coupe">
                                <div>
                                    <img src="../Content/CarTypes/coupe.png" />
                                </div>
                                <p>Coupe</p>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="/SearchResult?bodystyle=suv">
                                <div>
                                    <img src="../Content/CarTypes/suv.png" />
                                </div>
                                <p>SUV</p>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="#">
                                <div>
                                    <img src="../Content/CarTypes/crossover.png" />
                                </div>
                                <p>Crossover</p>
                            </a>
                        </div>
                    </div>
                    <div class="row carRow my-lg-5">
                        <div class="col-lg-3 ">
                            <a href="/SearchResult?bodystyle=hatchback">
                                <div>
                                    <img src="../Content/CarTypes/hatchback.png" />
                                </div>
                                <p>Wagon/Hatchback</p>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="#">
                                <div>
                                    <img src="../Content/CarTypes/green.png" />
                                </div>
                                <p>Green Car/Hybrid</p>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="/SearchResult?bodystyle=convertible">
                                <div>
                                    <img src="../Content/CarTypes/convertible.png" />
                                </div>
                                <p>Convertible</p>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="#">
                                <div>
                                    <img src="../Content/CarTypes/sportcar.png" />
                                </div>
                                <p>Sports Car</p>
                            </a>
                        </div>
                    </div>
                    <div class="row carRow">
                        <div class="col-lg-3 ">
                            <a href="#">
                                <div>
                                    <img src="../Content/CarTypes/truck.png" />
                                </div>
                                <p>Pickup Truck</p>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="/SearchResult?bodystyle=minivan">
                                <div>
                                    <img src="../Content/CarTypes/minivan.png" />
                                </div>
                                <p>Minivan/Van</p>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="#">
                                <div>
                                    <img src="../Content/CarTypes/luxury.png" />
                                </div>
                                <p>Luxury Car</p>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="#">
                                <div>
                                    <img src="../Content/CarTypes/preowned.png" />
                                </div>
                                <p>Certified Pre-Owned</p>
                            </a>
                        </div>
                    </div>
                </section>
                <section>
                    <h5 class="text-center font-weight-bold">Start with Make</h5>
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
                </section>
                <hr />
                <section>
                    <div class="text-center">
                        <h3 class="font-weight-bold">Tools and Expert Advice</h3>
                        <h5 class="gray">What you need from now until you buy, all in one place.</h5>
                    </div>
                    <div class="row grayToolBox mt-5">
                        <div class="col-lg-2 offset-lg-1 ">
                            <a href="#">
                                <img src="../Images/compareCars1.png" />
                                <p>Side-by-side Comparisons</p>
                                <span>See popular or customize comparisons &gt;</span>
                            </a>
                        </div>
                        <div class="col-lg-2 ">
                            <a href="#">
                                <img src="../Images/calc1.png" />
                                <p>
                                    Payment Calculators
                                </p>
                                <span>Estimate payments, and compare financing &gt;</span>
                            </a>
                        </div>
                        <div class="col-lg-2">
                            <a href="#">
                                <img src="../Images/smartphone1.png" />
                                <p>
                                    Latest Video Reviews
                                </p>
                                <span>Take a tour of your favorite cars with our experts &gt;</span>
                            </a>
                        </div>
                        <div class="col-lg-2">
                            <a href="#">
                                <img src="../Images/certified1.png" />
                                <p>
                                    Certified Pre-Owned
                                </p>
                                <span>Search, compare or research CPO programs &gt;</span>
                            </a>
                        </div>
                        <div class="col-lg-2">
                            <a href="#">
                                <img src="../Images/newRdeisignCar1.png" />
                                <p>New and Redesigned</p>
                                <span>View brand-new models and redesigned vehicles &gt;</span>
                            </a>
                        </div>
                    </div>
                </section>
                <CustomControl:findTheDealer runat="server" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
