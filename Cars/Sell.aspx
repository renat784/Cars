<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sell.aspx.cs" Inherits="Cars.Sell" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="notLogedIn">
        <h2 class="blackTitle">My Listings</h2>
        <p>You are not currently logged in. Log in to view and edit your listings.</p>
        <div>
            <asp:Button CssClass="btn btn-outline-dark niceButton" runat="server" Text="Log In"/>
        </div>
    </div>
    
    <div class="row mt-5">
        <div class="col-lg-4 form-group">
            <h2 class="blackTitle2">Have A Junk Car?</h2>
            <p>Visit our Junk Car center to get offers on your vehicle and sell it fast.</p>
            <a href="#">Sell Your Junk Car</a>
        </div>
        <div class="col-lg-4 form-group">
            <h2 class="blackTitle2">How To Sell Your Car</h2>
            <p>Selling a car yourself is an easy way to get the most money for your used car. Place a free listing and follow these steps to learn how to find a buyer fast.</p>
            <a href="#">Learn How To Sell</a>
        </div>
        <div class="col-lg-4 form-group">
            <h2 class="blackTitle2">Used Cars For Sale by Owner</h2>
            <p>Looking to buy a car? Browse our private party listings.</p>
            <a href="#">Start Shopping</a>
        </div>
    </div>
    
    <div class="mt-4 carAdvice">
        <h2 class="blackTitle pb-3">Sold Your Car? Read The Latest Car Buying Advice</h2>
        <div class="row">
            <div class="col-lg-4 form-group">
                <a href="#">
                    <img src="../Images/car1.jpg"/>
                    <span>2020 Volvo XC90 Pros and Cons: 6 Things We Like (and 3 Not So Much)</span>
                </a>
                
            </div>
            <div class="col-lg-4 form-group">
                <a href="#">
                    <img src="../Images/car2.jpg"/>
                    <span>2021 Volkswagen Atlas Price: Styling Updates, Tech Upgrades Will Cost You Nothing</span>
                </a>
            </div>
            <div class="col-lg-4 form-group">
                <a href="#">
                    <img src="../Images/car3.jpg"/>
                    <span>2021 Genesis GV80 Price Will Make You Say, ‘BMW and Mercedes Who?’</span>
                </a>
            </div>
        </div>
        <div class="col-12 text-center mt-3">
            <asp:Button CssClass="btn btn-outline-dark niceButton" runat="server" Text="Read All Car Buying Advice"/>
        </div>
    </div>
    
    <div class="row mt-5">
        <div class="col-lg-6 form-group">
            <p>Sell your car fast with Quick Offer
                If you're looking to get eyes on your car quickly, use Quick Offer to get up to four offers 
                from dealerships online. 
                <a href="#">Learn More</a>
            </p>
            
        </div>
        <div class="col-lg-6 form-group">
            <p>Sell your car in-person to a dealer
                In-person appraisals let you select the dealers you want to contact, set up appointments 
                to get your car appraised and pick the offer that works best for you.
                <a href="#">Learn More</a>
            </p>
            
        </div>
    </div>

</asp:Content>
