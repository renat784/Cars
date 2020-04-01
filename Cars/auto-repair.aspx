<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="auto-repair.aspx.cs" Inherits="Cars.auto_repair" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script>
        function changeText(e) {
            if (e.text == 'View More Makes') {
                e.text = 'View Less Makes';
                $('#chevron').attr('class', 'fa fa-chevron-up pl-2');
            }
            else {
                e.text = 'View More Makes';
                $('#chevron').attr('class', 'fa fa-chevron-down pl-2');
            }
        }
    </script>

    <div class="bigImage" style="background-image: url(Images/repairCar.jpg); position: relative">
        <div class="textOnImage" style="left: 50%; transform: translateX(-50%)">
            <h2 class="font-weight-bold">Vehicle Service and Repairs</h2>
        </div>
    </div>
    <div class="body-content">
        <div class="col-lg-10 offset-lg-1 py-lg-4 px-lg-5 repairBlock" style="background-color: white; border-radius: 5px; position: relative">
            <div class="row">
                <div class="col-lg-4 colorPrimary white p-4 text-center">
                    <h3 class="font-weight-bold">Auto Repair Services Near Me</h3>
                    <p>Find the best service center for you and get an estimate</p>
                    <input type="button" style="width: 100%" class="btn niceButton2" value="Find a Service Center" />
                </div>
                <div class="col-lg-7 offset-lg-1 my-auto repairList">
                    <div class="row">
                        <div class="col-2">
                            <div class="colorPrimary white" style="border-radius: 50%; width: 50px; height: 50px; text-align: center">
                                <i style="font-size: 25px; padding-top: 25%" class="fa fa-usd" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="col-10">
                            <p class="mb-0">Do It Yourself Repairs</p>
                            <p>
                                <a href="#">Learn how to make repairs to your car.</a>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2">
                            <div class="colorPrimary white" style="border-radius: 50%; width: 50px; height: 50px; text-align: center">
                                <i style="font-size: 25px; padding-top: 25%" class="fa fa-search" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="col-10 ">
                            <p class="mb-0">Search Recalls</p>
                            <p>
                                <a href="#">Find out if there are any recalls on your car.</a>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2 ">
                            <div class="colorPrimary white" style="border-radius: 50%; width: 50px; height: 50px; text-align: center">
                                <i style="font-size: 25px; padding-top: 25%" class="fa fa-comment-o" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="col-10 ">
                            <p class="mb-0">Service & Repair Advice</p>
                            <p>
                                <a href="#">Learn about maintenance and repairs from our experts.</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section>
            <div class="col-lg-6 offset-lg-3 px-lg-5">
                <div class="row form-group">
                    <asp:DropDownList CssClass="form-control col-8"
                        ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True">All Makes</asp:ListItem>
                        <asp:ListItem>Toyota</asp:ListItem>
                        <asp:ListItem>Honda</asp:ListItem>
                        <asp:ListItem>Lexus</asp:ListItem>
                    </asp:DropDownList>
                    <div class="col-4 pl-lg-2 pr-0">
                        <asp:TextBox CssClass="form-control" Style="width: 100%" ToolTip="Zip code, for example 12345" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12" style="padding: 0">
                        <asp:Button CssClass="btn"
                            Style="background-color: #93a533; color: white; display: block; width: 100%;"
                            runat="server"
                            Text="Find a Service Center" />
                    </div>
                </div>
            </div>
        </section>
        <section>
            <h3 class="secondary">Recalls</h3>
            <p>Find out if there are any recalls on your car.</p>
            <div class="row">
                <div class="col-lg-4 offset-lg-2 pr-lg-5">
                    <div class="row">
                        <div class="col-6">
                            <h5 class="font-weight-bold mb-0">2020 Hyundai Sonata</h5>
                            <small>02/28/2020</small>
                            <p style="font-size: 13px; margin: 15px 0">EQUIPMENT:OTHER:LABELS</p>
                            <a href="#">See Full Recall</a>
                        </div>
                        <div class="col-6">
                            <img src="Images/hundai.png" style="width: 100%" />
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-6">
                            <h5 class="font-weight-bold mb-0">2016 Ford F-150</h5>
                            <small>02/21/2020</small>
                            <p style="font-size: 13px; margin: 15px 0">EQUIPMENT:ELECTRICAL</p>
                            <a href="#">See Full Recall</a>
                        </div>
                        <div class="col-6">
                            <img src="Images/ford.png" style="width: 100%" />
                        </div>

                    </div>
                    <hr />
                </div>
                <div class="col-lg-4 pl-lg-5">
                    <div class="row">
                        <div class="col-6">
                            <h5 class="font-weight-bold mb-0">2013 Hyundai Sonata</h5>
                            <small>02/28/2020</small>
                            <p style="font-size: 13px; margin: 15px 0">FUEL SYSTEM, GASOLINE:DELIVERY:HOSES, LINES/PIPING, AND FITTINGS</p>
                            <a href="#">See Full Recall</a>
                        </div>
                        <div class="col-6">
                            <img src="Images/hundai22.png" style="width: 100%" />
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-6">
                            <h5 class="font-weight-bold mb-0">2014 Hyundai Sonata</h5>
                            <small>02/28/2020</small>
                            <p style="font-size: 13px; margin: 15px 0">UEL SYSTEM, GASOLINE:DELIVERY:HOSES, LINES/PIPING, AND FITTINGS</p>
                            <a href="#">See Full Recall</a>
                        </div>
                        <div class="col-6">
                            <img src="Images/hundai33333.png" style="width: 100%" />
                        </div>
                    </div>
                    <hr />
                </div>
            </div>
            <div class="mt-4">
                <a href="#" class="btn niceButton col-lg-4 offset-lg-4">Find Recalls for Your Car</a>
            </div>
        </section>
        <section>
            <h3 class="secondary">Do It Yourself Repairs</h3>
            <p>Learn how to make repairs on your car in your own garage.</p>
            <div class="row listRepairs">
                <div class="col-lg-6">
                    <ul>
                        <li>
                            <a href="#">
                                <img src="Icons/oil-change.svg" />
                                <span>Change Oil</span>
                                <span>&gt;</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="Icons/jumping-a-car.svg" />
                                <span>Jump Car</span>
                                <span>&gt;</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="Icons/check-transmission-fluid.svg" />
                                <span>Change Transmission Fluid</span>
                                <span>&gt;</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <ul>
                        <li>
                            <a href="#">
                                <img src="Icons/windshield-wiper-replacement.svg" />
                                <span>Replace Windshield Wipers</span>
                                <span>&gt;</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="Icons/when-to-replace-tire.svg" />
                                <span>Replace Tires</span>
                                <span>&gt;</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="Icons/how-to-check-tire-pressure.svg" />
                                <span>Check Tire Pressure</span>
                                <span>&gt;</span>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
            <div>
                <a href="#" class="btn niceButton col-lg-4 offset-lg-4">See All DIY Repairs</a>
            </div>
        </section>
        <section>
            <h3 class="secondary">Expert Tips About Service</h3>
            <div class="row mt-4">
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card" style="border-style: none">
                            <img src="ExpertTips/image1.jpg" class="card-img-top" />
                            <div class="card-body pl-0">
                                <h5 class="card-title black">Expensive Oil Changes Are Here to Stay</h5>
                                <p class="card-text black">
                                    Oil changes may be more expensive with the required 0W-20 weight oil compared to conventional oil, but only having to service the car once or twice a year keeps annual costs to nearly a wash.
                                </p>
                                <p>Read more</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card" style="border-style: none">
                            <img src="ExpertTips/image2.jpg" class="card-img-top" />
                            <div class="card-body pl-0 ">
                                <h5 class="card-title black">What's Included in a Tuneup?</h5>
                                <p class="card-text black">
                                    Actually, there is no such thing as a tuneup in the traditional sense of replacing parts to bring the ignition and fuel systems up to specs for maximum performance and efficiency efficiency...
                                </p>
                                <p>Read more</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card" style="border-style: none;">
                            <img src="ExpertTips/image3.jpg" class="card-img-top" />
                            <div class="card-body pl-0">
                                <h5 class="card-title black">Do You Really Need to Change Your Oil Every 3,000 Miles?</h5>
                                <p class="card-text black">
                                    No, you don't, according to every auto manufacturer we've talked to. The main advocates of the 3,000-mile oil change schedule are those who would profit by it...
                                </p>
                                <p>Read more</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section>
        <section>
            <h3 class="secondary">Service Term to Know</h3>
            <div style="background-color: #F2F2F2; margin: 15px 0"><%= CleanTitle(item.Title) %></div>
            <div class="row">
                <div class="col-lg-6">
                    <img class="col-12" src="Glossary/<%= item.ImageFileName %>" />
                </div>
                <div class="col-lg-6 pt-lg-4">
                    <%= ShowText(item.TextFileName) %>
                </div>
            </div>

            <div class="text-center my-3">
                <a href="#">See More Auto Parts ></a>
            </div>
        </section>
        <section>
            <h3 class="secondary">Find Service by Make</h3>
            <div class="carMake">
                <ul class="row">
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/acura.svg" />
                            </div>
                            <p class="gray">Acura</p>
                        </a>
                    </li>
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/audi.svg" />
                            </div>
                            <p class="gray">Audi</p>
                        </a>
                    </li>
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/bmw.svg" />
                            </div>
                            <p class="gray">BMW</p>
                        </a>
                    </li>
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/buick.svg" />
                            </div>
                            <p class="gray">Buick</p>
                        </a>
                    </li>
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/cadillac.svg" />
                            </div>
                            <p class="gray">Cadillac</p>
                        </a>
                    </li>
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/chevrolet.svg" />
                            </div>
                            <p class="gray">Chevrolet</p>
                        </a>
                    </li>
                </ul>
                <ul id="hiddenList" class="row collapse">
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/chrysler.svg" />
                            </div>
                            <p class="gray">Chrysler</p>
                        </a>
                    </li>
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/dodge.svg" />
                            </div>
                            <p class="gray">Dodge</p>
                        </a>
                    </li>
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/fiat.svg" />
                            </div>
                            <p class="gray">Fiat</p>
                        </a>
                    </li>
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/ford.svg" />
                            </div>
                            <p class="gray">Ford</p>
                        </a>
                    </li>
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/geo.svg" />
                            </div>
                            <p class="gray">Geo</p>
                        </a>
                    </li>
                    <li class="col-lg-2">
                        <a href="#" class="text-center">
                            <div>
                                <img src="CarVector/gmc.svg" />
                            </div>
                            <p class="gray">GMC</p>
                        </a>
                    </li>
                </ul>
                <div class="text-center">
                    <a href="#hiddenList" onclick="changeText(this)" data-toggle="collapse">View More Makes</a>
                    <i id="chevron" class="fa fa-chevron-down pl-2" aria-hidden="true"></i>
                </div>
            </div>
        </section>
    </div>

</asp:Content>
