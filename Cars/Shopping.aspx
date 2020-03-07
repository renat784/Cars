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
        <hr/>
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
        <hr/>
    </div>

    <div class="text-center">
        <h3>Used-Car Loan Rates</h3>
        <h1>4.93%</h1>
        <p>Current Average Loan Rate (APR)*</p>
        <p>Several factors can affect a car loan’s interest rate: the lender, the loan’s term length, your credit rating and the age of the used car you’re considering.</p>
        <p><a href="#">Read more</a></p>
        <p class="small">*Rates are averages and may change on an individual basis. <a href="#">Used car auto loan rates</a> provided by Bankrate.com</p>
    </div>
</asp:Content>
