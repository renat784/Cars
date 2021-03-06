﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="Cars.SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="updpnlRefresh" runat="server" UpdateMode="Conditional">
        <ContentTemplate>

            <style>
                li.custom.nav-item a {
                    color: white;
                    background-color: #666;
                }

                    li.custom.nav-item a:hover {
                        color: white;
                    }

                    li.custom.nav-item a.active:hover {
                        color: black;
                    }

                li.custom.nav-item {
                    width: 50%;
                    text-align: center;
                }

                a.pageLink {
                    color: #5c707c;
                }

                    a.pageLink:hover {
                        color: #5c707c;
                    }

                    a.pageLink.activePage {
                        font-weight: bold;
                    }


                input[type="radio"] {
                    margin-right: 10px;
                }
            </style>

            <script>

                // full page reload
                $(() => {
                    localStorage["searchresult_activeTabId"] = "home-tab";
                    ChangeTab();
                    ActivePageLink();
                })

                function ActivePageLink() {
                    var url = window.location;
                    var active_Page = 'a[href="' + url + '"]';
                    var page = $(active_Page);
                    page.addClass("activePage");
                    console.log(page);
                }

                // partial page reload (isPostBack)
                function pageLoad(sender, args) {
                    if (args._isPartialLoad) {
                        ChangeTab();
                    }
                }

                function ChangeTab() {
                    if (localStorage["searchresult_activeTabId"] !== null &&
                        localStorage["searchresult_activeTabId"] !== undefined) {
                        ActiveTabSwitcher(localStorage["searchresult_activeTabId"]);
                    } else {
                        ActiveTabSwitcher("home-tab");
                        localStorage["searchresult_activeTabId"] = "home-tab";
                    }
                }

                function ActiveTabSwitcher(id) {
                    switch (id) {
                        case "home-tab":
                            if ($("#profile-tab").hasClass("active")) { $("#profile-tab").removeClass("active"); }
                            if ($("#new_search").hasClass("active")) { $("#new_search").removeClass("active"); }
                            if ($("#new_search").hasClass("show")) { $("#new_search").removeClass("show"); }

                            if (!$("#home-tab").hasClass("active")) { $("#home-tab").addClass("active"); }
                            if (!$("#filter_result").hasClass("active")) { $("#filter_result").addClass("active"); }
                            if (!$("#filter_result").hasClass("show")) { $("#filter_result").addClass("show"); }
                            break;

                        case "profile-tab":
                            if ($("#home-tab").hasClass("active")) { $("#home-tab").removeClass("active"); }
                            if ($("#filter_result").hasClass("active")) { $("#filter_result").removeClass("active"); }
                            if ($("#filter_result").hasClass("show")) { $("#filter_result").removeClass("show"); }

                            if (!$("#profile-tab").hasClass("active")) { $("#profile-tab").addClass("active"); }
                            if (!$("#new_search").hasClass("active")) { $("#new_search").addClass("active"); }
                            if (!$("#new_search").hasClass("show")) { $("#new_search").addClass("show"); }
                            break;
                    }
                }

                function TabClicked(e) {
                    ActiveTabSwitcher(e.id);
                    localStorage["searchresult_activeTabId"] = e.id;
                }

            </script>

            <div class="body-content mt-5">
                <hr />
                <h4 class="text-center mb-3">Search</h4>
                <div class="row colorGray">
                    <%--menu--%>
                    <div class="col-lg-4">
                        <div class="my-4" style="background-color: white">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item custom">
                                    <a class="nav-link active" id="home-tab" onclick="TabClicked(this)" data-toggle="tab" href="#filter_result" role="tab"
                                        aria-controls="filter_result" aria-selected="true">Filter Results</a>
                                </li>
                                <li class="nav-item custom">
                                    <a class="nav-link" id="profile-tab" onclick="TabClicked(this)" data-toggle="tab" href="#new_search" role="tab"
                                        aria-controls="new_search" aria-selected="false">New Search</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="filter_result" role="tabpanel" aria-labelledby="filter_result-tab">
                                    <%--filter results tab:--%>
                                    <div class="p-3">
                                        <div class="mt-3">
                                            <div class="row">
                                                <div class="col-6 text-center">
                                                </div>
                                                <div class="col-6 text-center">
                                                    <a href="#">Save Search</a>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div>
                                            <div class="mb-3">
                                                <asp:Label CssClass="bold control-label" runat="server">Year</asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="col-6">
                                                    <asp:Label CssClass="bold control-label" AssociatedControlID="MinYear" runat="server">Min</asp:Label>
                                                    <asp:DropDownList CssClass="form-control" SelectMethod="MinYearList" ID="MinYear" runat="server" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-6">
                                                    <asp:Label CssClass="bold control-label" AssociatedControlID="MaxYear" runat="server">Max</asp:Label>
                                                    <asp:DropDownList CssClass="form-control" SelectMethod="MaxYearList" ID="MaxYear" runat="server" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div>
                                            <div>
                                                <asp:Label CssClass="control-label bold" runat="server">Make</asp:Label>
                                            </div>
                                            <asp:RadioButtonList ID="Make_RadioList" runat="server" OnDataBound="MakeRadioList_OnDataBound" AutoPostBack="True" DataSourceID="SqlDataSource1"
                                                DataTextField="Make" DataValueField="Make" />
                                        </div>
                                        <hr />

                                        <div>
                                            <div>
                                                <asp:Label CssClass="control-label bold" runat="server">Model</asp:Label>
                                            </div>
                                            <asp:RadioButtonList ID="Model_RadioList" runat="server" OnDataBound="Model_RadioList_OnDataBound" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Model" DataValueField="Model" />
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Model] FROM [Cars] WHERE ([Make] = @Make)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Make_RadioList" PropertyName="SelectedValue" Name="Make" Type="String"></asp:ControlParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                        <hr />
                                        <div>
                                            <asp:RadioButtonList OnDataBound="Style_RadioList_OnDataBound" ID="Style_RadioList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Style" DataValueField="Style" />
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Style] FROM [Cars]"></asp:SqlDataSource>
                                        </div>
                                        <hr />
                                        <div>
                                            <div class="mb-3">
                                                <asp:Label CssClass="bold control-label" runat="server">Price</asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="col-6">
                                                    <asp:Label CssClass="bold control-label" AssociatedControlID="MinPrice_FilterResults" runat="server">Min</asp:Label>
                                                    <asp:DropDownList CssClass="form-control" SelectMethod="MinPrices" ID="MinPrice_FilterResults" runat="server" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-6">
                                                    <asp:Label CssClass="bold control-label" AssociatedControlID="MaxPrice_FilterResults" runat="server">Max</asp:Label>
                                                    <asp:DropDownList CssClass="form-control" SelectMethod="MaxPrices" ID="MaxPrice_FilterResults" runat="server" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div>
                                            <asp:RadioButtonList OnDataBound="Mileage_RadioList_OnDataBound" ID="Mileage_RadioList" SelectMethod="Mileage_List" runat="server" />
                                        </div>
                                        <hr />
                                        <div class="col-12">
                                            <asp:Button Style="width: 100%" CssClass="btn niceButton" runat="server" Text="Search" OnClick="SearchFromFilterResults" />
                                        </div>
                                    </div>
                                </div>
                                <div class="tb-pane fade " id="new_search" role="tabpanel" aria-labelledby="new_search-tab">
                                    <%--new search tab:--%>
                                    <div class="p-4 my-4">
                                        <div class="form-group">
                                            <asp:Label class="control-label" AssociatedControlID="Make" runat="server">Make</asp:Label>
                                            <asp:DropDownList ID="Make" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Make" DataValueField="Make">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Make] FROM [Cars]"></asp:SqlDataSource>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="control-label" AssociatedControlID="Model" runat="server">Model</asp:Label>
                                            <asp:DropDownList ID="Model" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Model" DataValueField="Model">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Model] FROM [Cars] WHERE ([Make] = @Make)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Make" PropertyName="SelectedValue" Name="Make" Type="String"></asp:ControlParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="control-label" AssociatedControlID="MaxPrice" runat="server">Max Price</asp:Label>
                                            <asp:DropDownList ID="MaxPrice" SelectMethod="MaxPriceList" CssClass="form-control" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <asp:Button runat="server" ID="SearchButton" Style="width: 100%" CssClass="btn niceButton" OnClick="SearchFromNewSearch" Text="Search" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--search results--%>
                    <div class="col-lg-8">
                        <div class="row my-4">
                            <div class="col-lg-7  pt-1">
                                <asp:Label ID="TotalResults" runat="server"></asp:Label>
                            </div>
                            <div class="col-lg-5 ">
                                <div class="row">
                                    <div class="col-lg-3 col-5 text-right px-0">
                                        <asp:Label CssClass="control-label bold pt-1" runat="server" AssociatedControlID="SortBy">Sort by:</asp:Label>
                                    </div>
                                    <div class="col-lg-9 col-7">
                                        <asp:DropDownList SelectMethod="SortByList" OnDataBound="SortBy_OnDataBound" OnSelectedIndexChanged="SortBy_OnSelectedIndexChanged" CssClass="form-control" ID="SortBy" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="NoResults" class="text-center my-5" runat="server">
                            <hr />
                            <h5 class="mb-3">Ops, no items found !</h5>
                            <p>Try to start <strong>New Search</strong></p>
                            <p>OR</p>
                            <p>change few filters in <strong>Filter Results</strong></p>
                            <hr />
                        </div>
                        <asp:Repeater runat="server" ID="RepeaterCards" OnItemCreated="RepeaterCards_OnItemCreated">
                            <ItemTemplate>
                                <div class="my-4">
                                    <div class="row">
                                        <div class="col-lg-6 p-0">
                                            <img src="Images/carImageExample.jpg" style="width: 100%" />
                                        </div>
                                        <div class="col-lg-6 p-3" style="background-color: white">
                                            <div>
                                                <span class="bold" style="font-size: 24px"><%#Eval("Price", "{0:c0}") %></span>
                                                <span class="gray mx-1 small">|</span>
                                                <span class="gray small"><%#Eval("Mileage", "{0:n0}") %> miles</span>
                                            </div>
                                            <div class="bold">
                                                <span><%#Eval("Year")%></span>
                                                <span><%#Eval("Make")%></span>
                                                <span><%#Eval("Model")%></span>
                                            </div>
                                            <div class="row small mt-1">
                                                <div class="col-5">
                                                    <div>
                                                        <span class="bold">Ext.Color:</span>
                                                        <span><%#Eval("ExteriorColor")%></span>
                                                    </div>
                                                    <div>
                                                        <span class="bold">Int.Color:</span>
                                                        <span><%#Eval("InteriorColor")%></span>
                                                    </div>
                                                </div>
                                                <div class="col-7">
                                                    <div>
                                                        <span class="bold">Transmission:</span>
                                                        <span><%#Eval("Transmission")%></span>
                                                    </div>
                                                    <div>
                                                        <span class="bold">Body Style:</span>
                                                        <span><%#Eval("Bodystyle")%></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-center mt-5">
                                                <a href="/Details.aspx?id=<%#Eval("CarId")%>" style="width: 100%; background-color: #a400b4" class="btn niceButton2">Check Availability</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="text-center my-5">
                            <asp:Repeater runat="server" ID="Pagination">
                                <HeaderTemplate>
                                    <ul class="mt-4">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li style="display: inline">
                                        <a class="p-2  mx-2 pageLink" href="<%#Eval("Url") %>"><%#Eval("OrderId") %></a>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="my-5 row justify-content-center">
                            <asp:DropDownList OnDataBound="ResultsPerPage_OnDataBound" SelectMethod="SelectResultsPerPage" CssClass="form-control col-lg-3 col-5" OnSelectedIndexChanged="ResultsForPage" runat="server" ID="ResultsPerPage" AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                        <div class="small pb-5">
                            <div>
                                * Title, other fees, and incentives are not included in this calculation, which is an estimate only. Monthly payment estimates are for illustrative purposes only and do not represent a financing offer from the seller. Other taxes may apply.
                            </div>
                            <div>
                                The information on vehicles provided in this service is supplied by the seller or other third parties; Cars.com is not responsible for the accuracy of such information. Cars.com provides this service and materials without representations or warranties of any kind, either expressed or implied.
                                <a href="#">See our terms of service for more details.</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
