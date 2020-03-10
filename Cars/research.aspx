<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="research.aspx.cs" Inherits="Cars.research" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="body-content">
        <h2>Make Smart Choices</h2>
    <h3>Read specs and reviews, and compare cars.</h3>

    <div class="p-3 colorPrimary col-sm-12" style="border-radius: 5px">
        <div>
            <p style="color: white">Research a specific model - new or used.</p>
        </div>
        <div class="row px-lg-3">
            <div class="col-lg-3 col-sm-12 p-lg-0">
                <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True">
                    <asp:ListItem>All Makes</asp:ListItem>
                    <asp:ListItem>Toyota</asp:ListItem>
                    <asp:ListItem>Honda</asp:ListItem>
                    <asp:ListItem>Lexus</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-lg-3 col-sm-12 p-lg-0">
                <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True">
                    <asp:ListItem>All Models</asp:ListItem>
                    <asp:ListItem>model 1</asp:ListItem>
                    <asp:ListItem>model 2</asp:ListItem>
                    <asp:ListItem>model 3</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-lg-3 col-sm-12 p-lg-0">
                <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True">
                    <asp:ListItem>All Years</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div id="searchResearch" class="col-lg-3 col-sm-12 p-lg-0">
                <asp:Button CssClass="form-control" runat="server" Text="Search" />
            </div>
        </div>
    </div>

    <div>
        <div class="text-center">
            <h4>Research Car Models</h4>
            <h5>Start with Type</h5>
        </div>
        <div class="row carRow">
            <div class="col-lg-3 ">
                <a href="#">
                    <div>
                        <img src="../Content/CarTypes/sedan.png"/>
                    </div>
                    <p >Sedan</p>
                </a>
            </div>
            <div class="col-lg-3">
                <a href="#">
                    <div>
                        <img  src="../Content/CarTypes/coupe.png"/>
                    </div>
                    <p >Coupe</p>
                </a>
            </div>
            <div class="col-lg-3">
                <a href="#">
                    <div>
                        <img src="../Content/CarTypes/suv.png"/>
                    </div>
                    <p >SUV</p>
                </a>
            </div>
            <div class="col-lg-3">
                <a href="#">
                    <div>
                        <img src="../Content/CarTypes/crossover.png"/>
                    </div>
                    <p>Crossover</p>
                </a>
            </div>
        </div>
        <div class="row carRow my-lg-5">
            <div class="col-lg-3 ">
                <a href="#">
                    <div>
                        <img src="../Content/CarTypes/hatchback.png"/>
                    </div>
                    <p >Wagon/Hatchback</p>
                </a>
            </div>
            <div class="col-lg-3">
                <a href="#">
                    <div>
                        <img  src="../Content/CarTypes/green.png"/>
                    </div>
                    <p >Green Car/Hybrid</p>
                </a>
            </div>
            <div class="col-lg-3">
                <a href="#">
                    <div>
                        <img src="../Content/CarTypes/convertible.png"/>
                    </div>
                    <p >Convertible</p>
                </a>
            </div>
            <div class="col-lg-3">
                <a href="#">
                    <div>
                        <img src="../Content/CarTypes/sportcar.png"/>
                    </div>
                    <p>Sports Car</p>
                </a>
            </div>
        </div>
        <div class="row carRow">
            <div class="col-lg-3 ">
                <a href="#">
                    <div>
                        <img src="../Content/CarTypes/truck.png"/>
                    </div>
                    <p >Pickup Truck</p>
                </a>
            </div>
            <div class="col-lg-3">
                <a href="#">
                    <div>
                        <img  src="../Content/CarTypes/minivan.png"/>
                    </div>
                    <p >Minivan/Van</p>
                </a>
            </div>
            <div class="col-lg-3">
                <a href="#">
                    <div>
                        <img src="../Content/CarTypes/luxury.png"/>
                    </div>
                    <p >Luxury Car</p>
                </a>
            </div>
            <div class="col-lg-3">
                <a href="#">
                    <div>
                        <img src="../Content/CarTypes/preowned.png"/>
                    </div>
                    <p>Certified Pre-Owned</p>
                </a>
            </div>
        </div>
    </div>



    <div>
        <div class="text-center">
            <p>Tools and Expert Advice</p>
            <p>What you need from now until you buy, all in one place.</p>
        </div>
        <div class="row grayToolBox">
            <div class="col-lg-2 offset-lg-1 ">
                <a href="#">
                    <img src="../Images/compareCars1.png"/>
                    <p>Side-by-side Comparisons</p>
                    <span>See popular or customize comparisons &gt;</span>
                </a>
            </div>
            <div class="col-lg-2 ">
                <a href="#">
                    <img src="../Images/calc1.png"/>
                    <p>Payment <br/>Calculators</p>
                    <span>Estimate payments, and compare <br/>financing &gt;</span>
                </a>
            </div>
            <div class="col-lg-2">
                <a href="#">
                    <img src="../Images/smartphone1.png"/>
                    <p>Latest Video <br/>Reviews</p>
                    <span>Take a tour of your favorite cars with our experts &gt;</span>
                </a>
            </div>
            <div class="col-lg-2">
                <a href="#">
                    <img src="../Images/certified1.png"/>
                    <p>Certified<br/> Pre-Owned</p>
                    <span>Search, compare or research CPO programs &gt;</span>
                </a>
            </div>
            <div class="col-lg-2">
                <a href="#">
                    <img src="../Images/newRdeisignCar1.png"/>
                    <p>New and Redesigned Vehicles</p>
                    <span>View brand-new models and redesigned vehicles &gt;</span>
                </a>
            </div>
        </div>
    </div>
    </div>
    




</asp:Content>
