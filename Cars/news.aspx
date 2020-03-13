<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="Cars.news" %>

<%@ Register Src="~/Reusable/EmailSubscription.ascx" TagName="emailSubscription" TagPrefix="CustomControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="body-content">

        <div class="row pt-3">
            <div class="col-6">
                <h1 style="font-weight: bold">News</h1>
            </div>
            <div class="col-lg-4 offset-lg-2 offset-sm-1 col-sm-5">
                <input type="search" id="searchForm" placeholder="Search" class="form-control" />
            </div>
        </div>

        <div class="my-4">
            <div class="horizMenu">
                <a href="#">Expert Rewievs</a>
                <a href="#">Videos</a>
                <a href="#">Awards</a>
                <a href="#">Multi-Car comparison</a>
                <a href="#">Auto Shows</a>
                <a href="#">Car Seat Checks</a>
                <a href="#">Jenni Driven</a>
            </div>
            <hr style="margin-top: 0" />
        </div>

        <div class="row">
            <div class="col-lg-8">

                <div class="row">
                    <div class="col-8">
                        <h3 class="font-weight-bold">Latest Stories</h3>
                    </div>
                    <div class="col-4 text-right pt-2">
                        <a href="#">See all</a>
                    </div>
                </div>
                <a href="#" class="cardWithImage">
                    <div class="card" style="border: none">
                        <img src="../Content/News/bigImage.jpg" class="card-img-top">
                        <div class="card-body pl-0">
                            <span class="card-title small font-weight-bold black onHover third">Auto Show</span>
                            <h5 class="black onHover mb-0">Hyundai Prophecy Concept: Electric Car Future Foretold or Flashy False Prophet?</h5>
                            <span class="card-text gray small">March 4, 2020</span>
                        </div>
                    </div>
                </a>


                
                <div class="row mt-4">
                    <div class="col-lg-3">
                        <a href="#" class="cardWithImage">
                            <div class="card" style="border: none">
                                <img src="/Content/News/news-porche.png" class="card-img-top smallImage">
                                <div class="card-body pl-0">
                                    <span class="card-title small font-weight-bold black onHover third">Auto Show</span>
                                    <h5 class="black onHover mb-0">2021 Porsche 911 Turbo S: 911’s Next  Top Model</h5>
                                    <span class="card-text gray small">March 4, 2020</span>
                                </div>
                            </div>
                        </a>






                    </div>
                    <div class="col-lg-3">
                        <a href="#" class="cardWithImage">
                            <div class="card" style="border: none">
                                <img src="/Content/News/news-hundai.png" class="card-img-top smallImage">
                                <div class="card-body pl-0">
                                    <span class="card-title small font-weight-bold black onHover third">Safety</span>
                                    <h5 class="black onHover mb-0">2013-2014 Hyundai Sonata: Recall Alert</h5>
                                    <span class="card-text gray small">March 4, 2020</span>
                                </div>
                            </div>
                        </a>






                    </div>
                    <div class="col-lg-3">
                        <a href="#" class="cardWithImage">
                            <div class="card" style="border: none">
                                <img src="/Content/News/news-lexus.png" class="card-img-top smallImage">
                                <div class="card-body pl-0">
                                    <span class="card-title small font-weight-bold black onHover third">Safety</span>
                                    <h5 class="black onHover mb-0">2013-2019 Lexus and Toyota Cars: Recall Alert</h5>
                                    <span class="card-text gray small">March 4, 2020</span>
                                </div>
                            </div>
                        </a>






                    </div>
                    <div class="col-lg-3">
                        <a href="#" class="cardWithImage">
                            <div class="card" style="border: none">
                                <img src="/Content/News/news-safety.png" class="card-img-top smallImage">
                                <div class="card-body pl-0">
                                    <span class="card-title small font-weight-bold black onHover third">Safety</span>
                                    <h5 class="black onHover mb-0">Which Cars Have Self-Driving Features for 2020?</h5>
                                    <span class="card-text gray small">March 4, 2020</span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            
            
            
            
            

            <div class="col-lg-4">
                <h3 class="font-weight-bold">Featured Stories</h3>

                <a href="#" class="cardWithImage">
                    <div class="card" style="border: none">
                        <img src="/Content/News/audi_s4.jpg" class="card-img-top">
                        <div class="card-body pl-0">
                            <span class="card-title small font-weight-bold black onHover third">News</span>
                            <h5 class="black onHover mb-0">2020 Audi S4 Review: Lost in the Shuffle or Ready to Hustle?</h5>
                            <span class="card-text gray small">By Brian Wong on March 4, 2020</span>
                        </div>
                    </div>
                </a>

                <a href="#" class="cardWithImage">
                    <div class="card" style="border: none">
                        <div class="card-body pl-0">
                            <span class="card-title small font-weight-bold black onHover third">Auto Show</span>
                            <h5 class="black onHover mb-0">10 Biggest News Stories of the Week: 2020 Chevrolet Corvette Trounces Telluride</h5>
                            <span class="card-text gray small">By Brian Wong on March 4, 2020</span>
                        </div>
                    </div>
                </a>

                <a href="#" class="cardWithImage">
                    <div class="card" style="border: none">
                        <div class="card-body pl-0">
                            <span class="card-title small font-weight-bold black onHover third">News</span>
                            <h5 class="black onHover mb-0">2021 Kia Seltos: 6 Things We Like and 3 Things We Don’t</h5>
                            <span class="card-text gray small">By Brian Wong on March 4, 2020</span>
                        </div>
                    </div>
                </a>

                <a href="#" class="cardWithImage">
                    <div class="card" style="border: none">
                        <div class="card-body pl-0">
                            <span class="card-title small font-weight-bold black onHover third">Auto Show</span>
                            <h5 class="black onHover mb-0">2021 Mercedes-Benz E-Class: New Face, New Wagon</h5>
                            <span class="card-text gray small">By Brian Wong on March 4, 2020</span>
                        </div>
                    </div>
                </a>

                <a href="#" class="cardWithImage">
                    <div class="card" style="border: none">
                        <div class="card-body pl-0">
                            <span class="card-title small font-weight-bold black onHover third">News</span>
                            <h5 class="black onHover mb-0">The Week in Tesla News: Rivian Gets OK for Colorado Sales, Fisker Ocean Info Flows and Tesla Takes Iowa State Fair(?)</h5>
                            <span class="card-text gray small">By Brian Wong on March 4, 2020</span>
                        </div>
                    </div>
                </a>

                <a href="#" class="cardWithImage">
                    <div class="card" style="border: none">
                        <div class="card-body pl-0">
                            <span class="card-title small font-weight-bold black onHover third">News</span>
                            <h5 class="black onHover mb-0">What’s the Best 3-Row SUV for 2020?</h5>
                            <span class="card-text gray small">By Brian Wong on March 4, 2020</span>
                        </div>
                    </div>
                </a>









            </div>
        </div>





        <CustomControl:emailSubscription runat="server"></CustomControl:emailSubscription>

        <section>
            <h3 class="font-weight-bold">Latest Expert Reviews</h3>
            <div class="row mt-4">
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card" style="border: none">
                            <img src="Content/News/audi-image1.png" class="card-img-top">
                            <div class="card-body pl-0">
                                <h5 class="card-title black onHover">2020 Audi S4 Review: Lost in the Shuffle or Ready to Hustle?</h5>
                                <p class="small gray">By Brian Wong on March 4, 2020</p>
                                <p class="card-text black">In a crowded field of sports sedans, the Audi S4 has gotten lost in the shuffle a bit. New entries including the Genesis G70 and redesigned BMW 3 Series have recently stolen much of the thunder, bu...</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card " style="border: none">
                            <img src="Content/News/audi-image2.png" class="card-img-top">
                            <div class="card-body pl-0">
                                <h5 class="card-title black onHover">2020 Audi Q7 Review: Quibbles With the Biggest Q</h5>
                                <p class="small gray">By Brian Wong on March 2, 2020</p>
                                <p class="card-text black">The 2020 Audi Q7 occupies an important, family-friendly space in Audi’s lineup. Although it ranks numerically beneath the Q8, the Q7 is the only Audi that seats more than five occupants as Audi’s o...</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card" style="border: none">
                            <img src="Content/News/chevroltet3333333.jpg" class="card-img-top">
                            <div class="card-body pl-0">
                                <h5 class="card-title black onHover">2020 Chevrolet Corvette Stingray Review: We Drive the $60,000 One</h5>
                                <p class="small gray">By Joe Bruzek on February 25, 2020</p>
                                <p class="card-text black">Up until now, the only 2020 Chevrolet Corvette Stingray we drove had a bunch of options and the Z51 Performance Package, which added nearly $25,000 to the car’s starting price: $85,000. Ouch. The m...</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section>

        <section>
            <h3 class="font-weight-bold">Latest Videos</h3>
            <div class="row mt-4">
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card" style="border: none">

                            <div class="playVideoButton">
                                <div class="triangle"></div>
                            </div>
                            <img src="Content/ImagesForVideo/imageVideo-1.png" class="card-img-top">


                            <div class="card-body pl-0">
                                <h5 class="card-title black onHover">2020 Chevrolet Corvette Stingray Review — Cars.com</h5>
                                <p class="gray small">
                                    <span>9:02 |</span>
                                    <span>March 3, 2020 |</span>
                                    <span>505 views</span>
                                </p>
                                <p class="card-text black">2020 Chevrolet Corvette Stingray Review — Cars.com</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card" style="border: none">
                            <div class="playVideoButton">
                                <div class="triangle"></div>
                            </div>
                            <img src="Content/ImagesForVideo/imageVideo-2.png" class="card-img-top">
                            <div class="card-body pl-0">
                                <h5 class="card-title black onHover">2020 Hyundai Sonata Review — Cars.com</h5>
                                <p class="gray small">
                                    <span>6:23 |</span>
                                    <span>February 19, 2020 |</span>
                                    <span>1167 views</span>
                                </p>
                                <p class="card-text black">2020 Hyundai Sonata Review — Cars.com</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card" style="border: none">
                            <div class="playVideoButton">
                                <div class="triangle"></div>
                            </div>
                            <img src="Content/ImagesForVideo/imageVideo-3.png" class="card-img-top">
                            <div class="card-body pl-0">
                                <h5 class="card-title black onHover">2020 Alfa Romeo Stelvio Quadrifoglio: First Look – Cars.com</h5>
                                <p class="gray small">
                                    <span>2:40 |</span>
                                    <span>February 13, 2020 |</span>
                                    <span>723 views</span>
                                </p>
                                <p class="card-text black">2020 Alfa Romeo Stelvio Quadrifoglio: First Look – Cars.com</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section>

        <section>
            <h3 class="font-weight-bold">Latest Car Buying Advice</h3>
            <div class="row mt-4">
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card" style="border: none">
                            <img src="Content/News/1car.jpg" class="card-img-top">
                            <div class="card-body pl-0">
                                <h5 class="card-title black onHover">10 Biggest News Stories of the Week: Kia Seltos, Volvo XC90 Blow Past Palisade</h5>
                                <p class="small gray">By Matt Schmitz on March 11, 2020</p>
                                <p class="card-text black">Age before beauty, as the saying goes — and that’s just what happened this week on our list of most popular news articles when the salt-and-pepper-haired Volvo XC90 bested the still-wet-behind-the-...</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card " style="border: none">
                            <img src="Content/News/2car.jpg" class="card-img-top">
                            <div class="card-body pl-0">
                                <h5 class="card-title black onHover">2020 Audi Q7: Everything You Need to Know</h5>
                                <p class="small gray">By Jennifer Geiger on March 10, 2020</p>
                                <p class="card-text black">Audi’s three-row SUV, the Q7, got a host of updates for 2020, including exterior styling borrowed from the all-new Q8 as well as a revised multimedia system and dash layout. There’s also a new engi...</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="#">
                        <div class="card" style="border: none">
                            <img src="Content/News/3car.jpg" class="card-img-top">
                            <div class="card-body pl-0">
                                <h5 class="card-title black onHover">2021 Audi RS 6 Avant Price and Specs: Go-Fast Grocery Getter Goes for $110K</h5>
                                <p class="small gray">By Brian Wong on March 10, 2020</p>
                                <p class="card-text black">Since it was announced in August and after seeing it in the flesh at the 2019 Los Angeles Auto Show, we’ve been eagerly awaiting details on the 2021 Audi RS 6 Avant — and one of the final pieces of...</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section>

    </div>
</asp:Content>
