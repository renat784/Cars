<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="Cars.news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
   

    <div class="row">
        <div class="col-6">
            <h2 style="color: black; font-weight: bold">News</h2>
        </div>
        <div class="col-lg-4 offset-lg-2 offset-sm-1 col-sm-5">
            <input type="search" id="searchForm" placeholder="Search" class="form-control"/>
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
        <hr style="margin-top: 0"/>
    </div>

    <div class="row">
        <div class="col-lg-8">
            <div id="bigImage">
                <div class="row">
                    <div class="col-8">
                        <h3 style="color: black">Latest Stories</h3>
                    </div>
                    <div class="col-4 text-right" style="margin-top: 30px;">
                        <a href="#">See all</a>
                    </div>
                </div>
                <div class="latestStories">
                    <img src="../Content/News/bigImage.jpg" />
                    <div>
                        <a href="#">Auto Show</a>
                        <a href="#">
                            <p>
                                Hyundai Prophecy Concept: Electric Car Future Foretold or Flashy False Prophet?
                            </p>
                        </a>
                        <a href="#">
                            <small>March 4, 2020</small>
                        </a>
                    </div>
                </div>
            </div>
            <div>
            </div>
            <div class="row mt-4">
                <div class="col-lg-3">
                    <div class="latestStories">
                        <img src="../Content/News/porsche-911-carrera.jpg" />
                        <div>
                            <a href="#">Auto Show</a>
                            <a href="#">
                                <p>
                                    2021 Porsche 911 Turbo S: 911’s Next  Top Model
                                </p>
                            </a>
                            <a href="#">
                                <small>March 4, 2020</small>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="latestStories">
                        <img src="../Content/News/hundai.jpg" />
                        <div>
                            <a href="#">Safety</a>
                            <a href="#">
                                <p>
                                    2013-2014 Hyundai Sonata: Recall Alert
                                </p>
                            </a>
                            <a href="#">
                                <small>March 4, 2020</small>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="latestStories">
                        <img src="../Content/News/2019-lexus.jpg" />
                        <div>
                            <a href="#">Safety</a>
                            <a href="#">
                                <p>
                                    2013-2019 Lexus and Toyota Cars: Recall Alert
                                </p>
                            </a>
                            <a href="#">
                                <small>March 4, 2020</small>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="latestStories">
                        <img src="/Content/News/car-safety-features-motion.png" />
                        <div>
                            <a href="#">Safety</a>
                            <a href="#">
                                <p>
                                    Which Cars Have Self-Driving Features for 2020?
                                </p>
                            </a>
                            <a href="#">
                                <small>March 4, 2020</small>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <h3 style="color: black">Featured Stories</h3>
            <div class="latestStories mb-4">
                <img src="/Content/News/audi_s4.jpg" />
                <div>
                    <a href="#">News</a>
                    <a href="#">
                        <p>
                            2020 Audi S4 Review: Lost in the Shuffle or Ready to Hustle?
                        </p>
                    </a>
                    <a href="#">
                        <small>By Brian Wong on March 4, 2020</small>
                    </a>
                </div>
            </div>
            <div class="latestStories mb-4">
                <div>
                    <a href="#">Auto Show</a>
                    <a href="#">
                        <p>
                            10 Biggest News Stories of the Week: 2020 Chevrolet Corvette Trounces Telluride
                        </p>
                    </a>
                    <a href="#">
                        <small>By Brian Wong on March 4, 2020</small>
                    </a>
                </div>
            </div>
            <div class="latestStories mb-4">
                <div>
                    <a href="#">News</a>
                    <a href="#">
                        <p>
                            2021 Kia Seltos: 6 Things We Like and 3 Things We Don’t
                        </p>
                    </a>
                    <a href="#">
                        <small>By Brian Wong on March 4, 2020</small>
                    </a>
                </div>
            </div>
            <div class="latestStories mb-4">
                <div>
                    <a href="#">Auto Show</a>
                    <a href="#">
                        <p>
                            2021 Mercedes-Benz E-Class: New Face, New Wagon
                        </p>
                    </a>
                    <a href="#">
                        <small>By Brian Wong on March 4, 2020</small>
                    </a>
                </div>
            </div>
            <div class="latestStories mb-4">
                <div>
                    <a href="#">News</a>
                    <a href="#">
                        <p>
                            The Week in Tesla News: Rivian Gets OK for Colorado Sales, Fisker Ocean Info Flows and Tesla Takes Iowa State Fair(?)
                        </p>
                    </a>
                    <a href="#">
                        <small>By Brian Wong on March 4, 2020</small>
                    </a>
                </div>
            </div>
            <div class="latestStories mb-4">
                <div>
                    <a href="#">News</a>
                    <a href="#">
                        <p>
                            What’s the Best 3-Row SUV for 2020?
                        </p>
                    </a>
                    <a href="#">
                        <small>By Brian Wong on March 4, 2020</small>
                    </a>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
