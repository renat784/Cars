<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SellCar.aspx.cs" Inherits="Cars.SellCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <section>


        <div class="col-lg-6 offset-lg-2">
            <h2 class="primary text-center">Your Listing</h2>
            <hr />
            <div class="mt-5">
                <h6 class="mb-3">Look Up by License Plate (optional)</h6>
                <div class="form-group">
                    <label class="control-label" for="licencePlate">License Plate</label>
                    <asp:TextBox ID="licencePlate" CssClass="form-control" runat="server">
                    </asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="state">State</label>
                    <asp:DropDownList ID="state" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group mt-4">
                    <asp:Button runat="server" CssClass="btn niceButton col-12" Text="Look Up" />
                </div>
            </div>
            <div class="mt-5">
                <h6 class="mb-3">Basic Vehicle Information (required Information)</h6>
                <hr />
                <div class="form-group">
                    <label class="control-label" for="year">Year</label>
                    <asp:DropDownList ID="year" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="make">Make</label>
                    <asp:DropDownList ID="make" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="model">Model</label>
                    <asp:DropDownList ID="model" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="style">Style</label>
                    <asp:DropDownList ID="style" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="bodyStyle">Body Style</label>
                    <asp:DropDownList ID="bodyStyle" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="transmission">Transmission</label>
                    <asp:DropDownList ID="transmission" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="mileage">Mileage</label>
                    <asp:DropDownList ID="mileage" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="exteriorColor">Exterior Color</label>
                    <asp:DropDownList ID="exteriorColor" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="interiorColor">Interior Color</label>
                    <asp:DropDownList ID="interiorColor" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="mt-5">
                <h6>Optional information</h6>

                <div class="form-group">
                    <label class="control-label" for="numberOfDoors">Number of Doors</label>
                    <asp:DropDownList ID="numberOfDoors" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="engineCylinder">Engine Cylinder</label>
                    <asp:DropDownList ID="engineCylinder" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="driveType">Drive Type</label>
                    <asp:DropDownList ID="driveType" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="fueltype">Fuel Type</label>
                    <asp:DropDownList ID="fuelType" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div>
                    <a href="#">Save progress</a>
                </div>
                <hr />

                <div>
                    <h6>Your Car's Features</h6>
                    <p>Check any that apply or select none.</p>
                    <div>
                        <h6>Comfort</h6>

                    </div>
                    <hr />
                </div>
            </div>
            <div class="mt-5">
                <h6>Price/Description</h6>
                <div class="form-group">
                    <label class="control-label" for="price">Enter Price (required)</label>
                    <div style="position: relative">
                        <asp:TextBox ID="price" TextMode="Number" CssClass="form-control pl-4" runat="server">
                        </asp:TextBox>
                        <i class="fa fa-usd" aria-hidden="true" style="position: absolute; left: 2%; top: 50%; transform: translateY(-50%)"></i>
                    </div>
                    <div class="form-group">
                        <asp:CheckBox CssClass="custom-checkbox" runat="server" Text="Or Best Offer" />
                    </div>
                    <div>
                        <a href="#">Get Used Car Values</a>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="description">Enter Description (optional)</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="description" TextMode="MultiLine"></asp:TextBox>
                        <small>1000 Characters</small>
                    </div>
                    <div>
                        <a href="#">Save progress</a>
                    </div>
                    <hr />
                    <div>
                        <h6>Your Contact Information</h6>
                        <p>Curious how your info is displayed online?</p>
                        <div>
                            <a href="#">Learn More</a>
                        </div>
                        <hr />
                    </div>




                </div>
            </div>
            <div class="mt-5">
                <small>All fields required</small>
                <hr />
                <div>
                    <div class="form-group">
                        <label class="control-label" for="firstName">First Name</label>
                        <asp:TextBox ID="firstName" CssClass="form-control" runat="server">
                        </asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="lastName">Last Name</label>
                        <asp:TextBox ID="lastName" CssClass="form-control" runat="server">
                        </asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="emailAdress">Email Address</label>
                        <asp:TextBox ID="emailAdress" CssClass="form-control" runat="server">
                        </asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="phoneNumber">Phone number</label>
                        <asp:TextBox ID="phoneNumber" CssClass="form-control" runat="server">
                        </asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList ID="phoneType" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="zip">ZIP</label>
                        <asp:TextBox ID="zip" CssClass="form-control" runat="server">
                        </asp:TextBox>
                        <small>Vehicle location</small>
                    </div>
                    <div>
                        <a href="#">Save Progress</a>
                    </div>
                    <hr />
                </div>
            </div>
        </div>



        <div class="col-lg-8 offset-lg-2">
            <div class="mt-5">
                <p>Now it's time to add some photos to your listing! Add at least 1 photo to continue.</p>
                <asp:FileUpload ID="car_Images" AllowMultiple="True" runat="server" />
                <div>
                    <small>*If your photo doesn't appear with the desired orientation, please rotate it using your computer's built in photo editor at least once. This will remove the orientation metadata that's preventing your photo from showing up correctly.</small>
                </div>
                <h6 class="mt-5">Photo Tips</h6>
                <p>Sell your car faster by adding photos taken from multiple angles, like these:</p>

                <div class="row">
                    <div class="col-lg-6 col-sm-12">
                        <div class="row">
                            <div class="col-4">
                                <img style="width: 100%" src="Images/PhotoTips/front_right_mdpi.png" />
                            </div>
                            <div class="col-4">
                                <img style="width: 100%" src="Images/PhotoTips/front_mdpi.png" />
                            </div>
                            <div class="col-4">
                                <img style="width: 100%" src="Images/PhotoTips/center_console_mdpi.png" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-12">
                        <div class="row">
                            <div class="col-4">
                                <img style="width: 100%" src="Images/PhotoTips/LRrear_mdpi.png" />
                            </div>
                            <div class="col-4">
                                <img style="width: 100%" src="Images/PhotoTips/rear_mdpi.png" />
                            </div>
                            <div class="col-4">
                                <img style="width: 100%" src="Images/PhotoTips/rear_right_mdpi.png" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-6">
                        <h6 >Do</h6>
                        <ul>
                            <li>Make sure there is good lighting</li>
                            <li>Have a clear background</li>
                            <li>Highlight special features</li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <h6 >Don't</h6>
                        <ul>
                            <li>Use stock photos</li>
                            <li>Upload portrait orientation; we will auto crop-it</li>
                        </ul>
                    </div>
                </div>
                <div>
                    <asp:Button runat="server" CssClass="btn btn-dark" Enabled="False" Text="Next Step"/>
                    <span class="ml-4">No Photos? <a href="#">Save Listing For Later</a></span>
                </div>


                <hr />
            </div>
            <div class="mt-5">
                <h6>Need Help?</h6>
                <small>Having trouble Uploading? <a href="#">Click here To Chat with Live Support</a> or <a href="#">send us an email</a></small>
            </div>
        </div>
    </section>
</asp:Content>
