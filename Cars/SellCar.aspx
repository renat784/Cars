<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="SellCar.aspx.cs" Inherits="Cars.SellCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <script>
        $(function () {
            $('[data-toggle="popover"]').popover();

           
        });
        $('.popover-dismiss').popover({
            trigger: 'focus'
        });
    </script>


    <asp:UpdatePanel ID="updpnlRefresh" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <section>
            
            <%--for test output--%>
            <asp:Label runat="server" ID="test" style="color: red; position: fixed; top: 50%; left: 5%;background-color: black"></asp:Label>
            <%--for test output--%>
            


                <div class="col-lg-6 offset-lg-2">
                    <h2 class="secondary text-center font-weight-bold">Your Listing</h2>
                    <hr />
                    <div class="mt-5">
                        <h6 class="mb-3">Look Up by License Plate (optional)</h6>
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="LicencePlate" runat="server">License Plate</asp:Label>
                            <asp:TextBox ID="LicencePlate" CssClass="form-control" runat="server">
                            </asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="State" runat="server">State</asp:Label>
                            <asp:DropDownList ID="State"   CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>
                        <div class="form-group mt-4">
                            <asp:Button runat="server" ID="LookUp" CssClass="btn niceButton col-12" Text="Look Up" />
                        </div>
                    </div>
                    <div class="mt-5">
                        <h6 class="mb-3">Basic Vehicle Information</h6>
                        <small>Required Information</small>
                        <hr />
                        <div class="form-group">
                            <asp:Label class="control-label" for="Year" runat="server">Year</asp:Label>
                            <asp:DropDownList ID="Year" CssClass="form-control" SelectMethod="YearsList" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="Make"  runat="server">Make</asp:Label>
                            <asp:DropDownList ID="Make" CssClass="form-control" OnSelectedIndexChanged="ChangeModels" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="Model" runat="server">Model</asp:Label>
                            <asp:DropDownList ID="Model" CssClass="form-control"  runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="Style" runat="server">Style</asp:Label>
                            <asp:DropDownList ID="Style" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-6 text-left">
                                    <asp:Label class="control-label" AssociatedControlID="BodyStyle" runat="server">Body Style</asp:Label>
                                </div>
                                <div class="col-6 text-right">
                                    <a tabindex="0" role="button" data-toggle="popover"
                                        data-trigger="focus"
                                        data-content="Describes the external configuration and appearance of a vehicle. Ex. 
                                              coupe, sedan, SUV, wagon, minivan, hatchback, etc.">
                                        <i class="fa fa-question-circle-o gray" aria-hidden="true" style="font-size: 20px"></i>
                                    </a>
                                </div>
                            </div>
                            <asp:DropDownList ID="BodyStyle" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-6">
                                    <asp:Label class="control-label" AssociatedControlID="Transmission" runat="server">Transmission</asp:Label>
                                </div>
                                <div class="col-6 text-right">
                                    <a tabindex="0" role="button" data-toggle="popover"
                                        data-trigger="focus"
                                        data-content="Manual/Standard: The driver changes gears using a hand-operated gearshift 
                                              and a foot-operated clutch.
                                              Automatic: Drivers select a 'drive' mode and the transmission automatically 
                                              selects the most appropriate gear.
                                              Automanual: An automatic transmission that allows the driver to change gears 
                                              manually, in sequence.
                                              Continuously Variable Transmission (CVT): A type of automatic transmission 
                                              with an infinite number of gear ratios, as opposed to a traditional automatic
                                              with 5-7 gears.">
                                        <i class="fa fa-question-circle-o gray" aria-hidden="true" style="font-size: 20px"></i>
                                    </a>
                                </div>
                            </div>

                            <asp:DropDownList ID="Transmission" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="Mileage" runat="server">Mileage</asp:Label>
                            <asp:TextBox ID="Mileage" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="ExteriorColor" runat="server">Exterior Color</asp:Label>
                            <asp:DropDownList ID="ExteriorColor" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="InteriorColor" runat="server">Interior Color</asp:Label>
                            <asp:DropDownList ID="InteriorColor" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div>
                        <small>Optional information</small>
                        <hr />
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="NumberOfDoors" runat="server">Number of Doors</asp:Label>
                            <asp:DropDownList ID="NumberOfDoors" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="EngineCylinder" runat="server">Engine Cylinder</asp:Label>
                            <asp:DropDownList ID="EngineCylinder" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-6">
                                    <asp:Label class="control-label" AssociatedControlID="DriveType" runat="server">Drive Type</asp:Label>
                                </div>
                                <div class="col-6 text-right">
                                    <a tabindex="0" role="button" data-toggle="popover"
                                        data-trigger="focus"
                                        data-content="4x2/Two-wheel drive: A type of drive train that sends engine power to 
                                             either the front or rear wheels without any driver interaction.
                                             4x4/Four-wheel drive: Engine power sent to all four wheels with a 
                                             driver-selectable Low range.
                                             All-wheel drive(AWD): Engine power sent to all four wheels, no 
                                             driver-selectable Low range.
                                             Rear-wheel drive (RWD): Engine power sent only to the rear wheels.
                                             Front-wheel drive (FWD): Engine power sent only to the front wheels.">
                                        <i class="fa fa-question-circle-o gray" aria-hidden="true" style="font-size: 20px"></i>
                                    </a>
                                </div>
                            </div>

                            <asp:DropDownList ID="DriveType" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label class="control-label" AssociatedControlID="Fueltype" runat="server">Fuel Type</asp:Label>
                            <asp:DropDownList ID="Fueltype" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>
                        <div class="text-center text-lg-left">
                            <a href="#">Save progress</a>
                        </div>
                        <hr />

                        <div>
                            <h6>Your Car's Features</h6>
                            <p>Check any that apply or select none.</p>
                            <div class="checkboxList">
                                <h6 class="my-3">Comfort</h6>
                                <asp:CheckBoxList runat="server" ID="CheckBoxListComfort" AutoPostBack="True">
                                    <asp:ListItem>A/C: Front</asp:ListItem>
                                    <asp:ListItem>A/C: Rear</asp:ListItem>
                                    <asp:ListItem>Cruise Control</asp:ListItem>
                                    <asp:ListItem>Navigation</asp:ListItem>
                                    <asp:ListItem>Power Locks</asp:ListItem>
                                    <asp:ListItem>Power Steering</asp:ListItem>
                                    <asp:ListItem>Keyless Entry</asp:ListItem>
                                    <asp:ListItem>Integrated Phone</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                            <div class="checkboxList">
                                <h6 class="my-3">Seats</h6>
                                <asp:CheckBoxList runat="server" ID="CheckBoxListSeats" AutoPostBack="True">
                                    <asp:ListItem>Bucket Seats</asp:ListItem>
                                    <asp:ListItem>Leather Interior</asp:ListItem>
                                    <asp:ListItem>Memory Seats</asp:ListItem>
                                    <asp:ListItem>Power Seats</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                            <div class="checkboxList">
                                <h6 class="my-3">Safety</h6>
                                <asp:CheckBoxList runat="server" ID="CheckBoxListSafety" AutoPostBack="True">
                                    <asp:ListItem>Airbag: Driver</asp:ListItem>
                                    <asp:ListItem>Airbag: Passenger</asp:ListItem>
                                    <asp:ListItem>Airbag: Side</asp:ListItem>
                                    <asp:ListItem>Alarm</asp:ListItem>
                                    <asp:ListItem>Antilock Brakes</asp:ListItem>
                                    <asp:ListItem>Fog Lights</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                            <div class="checkboxList">
                                <h6 class="my-3">Windows</h6>
                                <asp:CheckBoxList runat="server" ID="CheckBoxListWindows" AutoPostBack="True">
                                    <asp:ListItem>Power Windows</asp:ListItem>
                                    <asp:ListItem>Rear Window Defroster</asp:ListItem>
                                    <asp:ListItem>Rear Window Wiper</asp:ListItem>
                                    <asp:ListItem>Tinted Glass</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                            <div class="checkboxList">
                                <h6 class="my-3">Entertainment</h6>
                                <asp:CheckBoxList runat="server" ID="CheckBoxListEntertainment" AutoPostBack="True">
                                    <asp:ListItem>AM/FM Stereo</asp:ListItem>
                                    <asp:ListItem>Cassette Player</asp:ListItem>
                                    <asp:ListItem>CD (Single Disc)</asp:ListItem>
                                    <asp:ListItem>CD (Multi Disc)</asp:ListItem>
                                    <asp:ListItem>MP3 (Single Disc)</asp:ListItem>
                                    <asp:ListItem>Premium Sound</asp:ListItem>
                                    <asp:ListItem>DVD System</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                            <div class="checkboxList">
                                <h6 class="my-3">Other</h6>
                                <asp:CheckBoxList runat="server" ID="CheckBoxListOther" AutoPostBack="True">
                                    <asp:ListItem>Alloy Wheels</asp:ListItem>
                                    <asp:ListItem>Moonroof/Sunroof</asp:ListItem>
                                    <asp:ListItem>Third Row Seats</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                            <hr />
                        </div>

                        <div class="mt-5">
                            <h6 class="mb-3">Price/Description</h6>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-6">
                                        <asp:Label class="control-label" AssociatedControlID="Price" runat="server">Enter Price (required)</asp:Label>
                                    </div>
                                    <div class="col-6 text-right">
                                        <a tabindex="0" role="button" data-toggle="popover"
                                            data-trigger="focus"
                                            data-content="Enter the price you'd like to receive for this vehicle. You may also
                                             indicate that you are willing to accept the best offer made by buyers 
                                             by selecting the 'Or Best Offer' check box.">
                                            <i class="fa fa-question-circle-o gray" aria-hidden="true" style="font-size: 20px"></i>
                                        </a>
                                    </div>
                                </div>

                                <div style="position: relative">
                                    <asp:TextBox ID="Price" TextMode="Number" CssClass="form-control pl-4" runat="server">
                                    </asp:TextBox>
                                    <i class="fa fa-usd" aria-hidden="true" style="position: absolute; left: 2%; top: 50%; transform: translateY(-50%)"></i>
                                </div>
                            </div>
                            <div class="asp_checkbox my-3">
                                <asp:CheckBox runat="server" ID="or_best_offer" Text="Or Best Offer" />
                            </div>
                            <div class="form-group text-center text-lg-left">
                                <a href="#">Get Used Car Values</a>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label" AssociatedControlID="Description" runat="server">Enter Description (optional)</asp:Label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="Description" TextMode="MultiLine"></asp:TextBox>
                                <div class="text-center text-lg-left">
                                    <small>1000 Characters</small>
                                </div>

                            </div>
                            <div class="text-center text-lg-left">
                                <a href="#">Save progress</a>
                            </div>
                            <hr />
                            <div>
                                <h6>Your Contact Information</h6>
                                <p>Curious how your info is displayed online?</p>
                                <div>
                                    <a href="#">Learn More</a>
                                </div>

                            </div>
                        </div>

                        <div>
                            <small>All fields required</small>
                            <hr />
                            <div>
                                <div class="form-group">
                                    <asp:Label class="control-label" AssociatedControlID="FirstName" runat="server">First Name</asp:Label>
                                    <asp:TextBox ID="FirstName" CssClass="form-control" runat="server">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label" AssociatedControlID="LastName" runat="server">Last Name</asp:Label>
                                    <asp:TextBox ID="LastName" CssClass="form-control" runat="server">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label" AssociatedControlID="EmailAdress" runat="server">Email Address</asp:Label>
                                    <asp:TextBox ID="EmailAdress" TextMode="Email" CssClass="form-control" runat="server">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label" AssociatedControlID="PhoneNumber" runat="server">Phone number</asp:Label>
                                    <asp:TextBox ID="PhoneNumber" TextMode="Phone" CssClass="form-control" runat="server">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:DropDownList ID="phoneType" CssClass="form-control" runat="server" AutoPostBack="True">
                                        <asp:ListItem>Daytime</asp:ListItem>
                                        <asp:ListItem>Evening</asp:ListItem>
                                        <asp:ListItem>Mobile</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Label class="control-label" AssociatedControlID="Zip" runat="server">ZIP</asp:Label>
                                        </div>
                                        <div class="col-6 text-right">
                                            <a tabindex="0" role="button" data-toggle="popover"
                                                data-trigger="focus"
                                                data-content="Indicate the 5-digit ZIP code where the vehicle is stored, or where 
                                                 you would meet a potential buyer for a test drive.">
                                                <i class="fa fa-question-circle-o gray" aria-hidden="true" style="font-size: 20px"></i>
                                            </a>
                                        </div>
                                    </div>

                                    <asp:TextBox ID="Zip" CssClass="form-control" runat="server">
                                    </asp:TextBox>
                                    <div class="text-center text-lg-left">
                                        <small>Vehicle location</small>
                                    </div>
                                </div>

                                <div class="text-center text-lg-left">
                                    <a href="#">Save Progress</a>
                                </div>
                                <hr />
                            </div>
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
                        <div class="my-5">
                            <h6>Photo Tips</h6>
                            <p>Sell your car faster by adding photos taken from multiple angles, like these:</p>
                        </div>

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

                        <div class="row mt-5">
                            <div class="col-lg-6">
                                <h6 class="text-center text-lg-left">
                                    <i class="fa fa-check-circle" aria-hidden="true" style="color: green"></i>
                                    <span>Do</span>
                                </h6>
                                <ul>
                                    <li>Make sure there is good lighting</li>
                                    <li>Have a clear background</li>
                                    <li>Highlight special features</li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <h6 class="text-center text-lg-left">
                                    <i class="fa fa-exclamation-circle" aria-hidden="true" style="color: red"></i>
                                    <span>Don't</span>
                                </h6>
                                <ul>
                                    <li>Use stock photos</li>
                                    <li>Upload portrait orientation; we will auto crop-it</li>
                                </ul>
                            </div>
                        </div>
                        <div class="mt-3">
                            <div class="row text-center text-lg-left">
                                <div class="col-lg-6 ">
                                    <asp:Button runat="server" CssClass="btn btn-dark disabled" Text="Next Step" />
                                </div>
                                <div class="col-lg-6 mt-3 mt-lg-0">
                                    <span>No Photos? <a href="#">Save Listing For Later</a></span>
                                </div>
                            </div>


                        </div>


                        <hr />
                    </div>
                    <div class="mt-5 text-center text-lg-left">
                        <h6>Need Help?</h6>
                        <small>Having trouble Uploading? <a href="#">Click here To Chat with Live Support</a> or <a href="#">send us an email</a></small>
                    </div>
                </div>

            </section>
        </ContentTemplate>
    
    </asp:UpdatePanel>










</asp:Content>
