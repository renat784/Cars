<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SellCar.aspx.cs" Inherits="Cars.SellCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <script>
        $(function () {
            $('[data-toggle="popover"]').popover()
        });
        $('.popover-dismiss').popover({
            trigger: 'focus'
        })
    </script>





    <section>
        <div class="col-lg-6 offset-lg-2">
            <h2 class="secondary text-center font-weight-bold">Your Listing</h2>
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
                <h6 class="mb-3">Basic Vehicle Information</h6>
                <small>Required Information</small>
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
                    <div class="row">
                        <div class="col-6 text-left">
                            <label class="control-label" for="bodyStyle">Body Style</label>
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
                    <asp:DropDownList ID="bodyStyle" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-6">
                            <label class="control-label" for="transmission">Transmission</label>
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
            <div>
                <small>Optional information</small>
                <hr />
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
                    <div class="row">
                        <div class="col-6">
                            <label class="control-label" for="driveType">Drive Type</label>
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

                    <asp:DropDownList ID="driveType" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label" for="fueltype">Fuel Type</label>
                    <asp:DropDownList ID="fuelType" CssClass="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="text-center text-lg-left">
                    <a href="#">Save progress</a>
                </div>
                <hr />

                <div>
                    <h6>Your Car's Features</h6>
                    <p>Check any that apply or select none.</p>
                    <div>
                        <h6 class="my-3">Comfort</h6>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="AC_Front">
                            <label class="custom-control-label" for="AC_Front">A/C: Front</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="AC_Rear">
                            <label class="custom-control-label" for="AC_Rear">A/C: Rear</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Cruise_Control">
                            <label class="custom-control-label" for="Cruise_Control">Cruise Control</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Navigation">
                            <label class="custom-control-label" for="Navigation">Navigation</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Power_Locks">
                            <label class="custom-control-label" for="Power_Locks">Power Locks</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Power_Steering">
                            <label class="custom-control-label" for="Power_Steering">Power Steering</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Keyless_Entry">
                            <label class="custom-control-label" for="Keyless_Entry">Keyless Entry</label>
                            <a tabindex="0" role="button" data-toggle="popover"
                               data-trigger="focus"
                               data-content="Any system which allows the vehicle doors to be locked and unlocked with a remote device.">
                                <i class="fa fa-question-circle-o gray" aria-hidden="true" style="font-size: 20px"></i>
                            </a>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Integrated_Phone">
                            <label class="custom-control-label" for="Integrated_Phone">Integrated Phone</label>
                        </div>
                    </div>
                    <div>
                        <h6 class="my-3">Seats</h6>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Bucket_Seats">
                            <label class="custom-control-label" for="Bucket_Seats">Bucket Seats</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Leather_Interior">
                            <label class="custom-control-label" for="Leather_Interior">Leather Interior</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Memory_Seats">
                            <label class="custom-control-label" for="Memory_Seats">Memory Seats</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Power_Seats">
                            <label class="custom-control-label" for="Power_Seats">Power Seats</label>
                        </div>
                    </div>
                    <div>
                        <h6 class="my-3">Safety</h6>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Airbag_Driver">
                            <label class="custom-control-label" for="Airbag_Driver">Airbag: Driver</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Airbag_Passenger">
                            <label class="custom-control-label" for="Airbag_Passenger">Airbag: Passenger</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Airbag_Side">
                            <label class="custom-control-label" for="Airbag_Side">Airbag: Side</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Alarm">
                            <label class="custom-control-label" for="Alarm">Alarm</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Antilock_Brakes">
                            <label class="custom-control-label" for="Antilock_Brakes">Antilock Brakes</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Fog_Lights">
                            <label class="custom-control-label" for="Fog_Lights">Fog Lights</label>
                        </div>
                    </div>
                    <div>
                        <h6 class="my-3">Windows</h6>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Power_Windows">
                            <label class="custom-control-label" for="Power_Windows">Power Windows</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Rear_Window_Defroster">
                            <label class="custom-control-label" for="Rear_Window_Defroster">Rear Window Defroster</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Rear_Window_Wiper">
                            <label class="custom-control-label" for="Rear_Window_Wiper">Rear Window Wiper</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Tinted_Glass">
                            <label class="custom-control-label" for="Tinted_Glass">Tinted Glass</label>
                        </div>
                    </div>
                    <div>
                        <h6 class="my-3">Entertainment</h6>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="AM_FM_Stereo">
                            <label class="custom-control-label" for="AM_FM_Stereo">AM/FM Stereo</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Cassette_Player">
                            <label class="custom-control-label" for="Cassette_Player">Cassette Player</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="CD_Single_Disc">
                            <label class="custom-control-label" for="CD_Single_Disc">CD (Single Disc)</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="CD_Multi_Disc">
                            <label class="custom-control-label" for="CD_Multi_Disc">CD (Multi Disc)</label>
                            <a tabindex="0" role="button" data-toggle="popover"
                               data-trigger="focus"
                               data-content="A CD player that can store multiple CDs. Typically, these systems are 
                                             mounted in the trunk and store from six to 10 CDs.">
                                <i class="fa fa-question-circle-o gray" aria-hidden="true" style="font-size: 20px"></i>
                            </a>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="MP3_Single_Disc">
                            <label class="custom-control-label" for="MP3_Single_Disc">MP3 (Single Disc)</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Premium_Sound">
                            <label class="custom-control-label" for="Premium_Sound">Premium Sound</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="DVD_System">
                            <label class="custom-control-label" for="DVD_System">DVD System</label>
                        </div>
                    </div>
                    <div>
                        <h6 class="my-3">Other</h6>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Alloy_Wheels">
                            <label class="custom-control-label" for="Alloy_Wheels">Alloy Wheels</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Moonroof_Sunroof">
                            <label class="custom-control-label" for="Moonroof_Sunroof">Moonroof/Sunroof</label>
                        </div>
                        <div class="custom-control custom-checkbox mt-2">
                            <input type="checkbox" class="custom-control-input" id="Third_Row_Seats">
                            <label class="custom-control-label" for="Third_Row_Seats">Third Row Seats</label>
                        </div>
                        <div class="text-center text-lg-left my-3">
                            <a href="#">Save progress</a>
                        </div>
                    </div>
                    <hr />
                </div>

                <div class="mt-5">
                    <h6 class="mb-3">Price/Description</h6>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-6">
                                <label class="control-label" for="price">Enter Price (required)</label>
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
                            <asp:TextBox ID="price" TextMode="Number" CssClass="form-control pl-4" runat="server">
                            </asp:TextBox>
                            <i class="fa fa-usd" aria-hidden="true" style="position: absolute; left: 2%; top: 50%; transform: translateY(-50%)"></i>
                        </div>
                     </div>
                        <div class="form-group my-3">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="Or_Best_Offer">
                                <label class="custom-control-label" for="Or_Best_Offer">Or Best Offer</label>
                            </div>
                        </div>
                        <div class="form-group text-center text-lg-left">
                            <a href="#">Get Used Car Values</a>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="description">Enter Description (optional)</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="description" TextMode="MultiLine"></asp:TextBox>
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
                            <asp:TextBox ID="emailAdress" TextMode="Email" CssClass="form-control" runat="server">
                            </asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="phoneNumber">Phone number</label>
                            <asp:TextBox ID="phoneNumber" TextMode="Phone" CssClass="form-control" runat="server">
                            </asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="phoneType" CssClass="form-control" runat="server">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-6">
                                    <label class="control-label" for="zip">ZIP</label>
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

                            <asp:TextBox ID="zip" CssClass="form-control" runat="server">
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
</asp:Content>
