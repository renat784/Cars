﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="Cars.SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        li.custom.nav-item a {
            color: black;
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
    </style>
    <script>



</script>
    <asp:UpdatePanel ID="updpnlRefresh" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="body-content my-5">
                <hr />
                <h4 class="text-center mb-3">Search results: </h4>
                <div class="row colorGray">
                    <%--menu--%>
                    <div class="col-lg-4">
                        <div class="my-4" style="background-color: white">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item custom">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#filter_result" role="tab"
                                        aria-controls="filter_result" aria-selected="true">Filter Results</a>
                                </li>
                                <li class="nav-item custom">
                                    <a class="nav-link " id="profile-tab" data-toggle="tab" href="#new_search" role="tab"
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
                                                    <asp:Label CssClass="bold" ID="ResultCount" runat="server"></asp:Label>
                                                    <span>results</span>
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
                                                    <asp:Label CssClass="bold control-label"  AssociatedControlID="MinYear" runat="server">Min</asp:Label>
                                                    <asp:DropDownList CssClass="form-control"  SelectMethod="MinYearList" ID="MinYear" runat="server" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-6">
                                                    <asp:Label CssClass="bold control-label" AssociatedControlID="MaxYear" runat="server">Max</asp:Label>
                                                    <asp:DropDownList CssClass="form-control"  SelectMethod="MaxYearList" ID="MaxYear" runat="server" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div>
                                            <div>
                                                <asp:Label CssClass="control-label bold" runat="server">Make</asp:Label>
                                            </div>
                                            
                                            <asp:RadioButtonList ID="Make_RadioList" runat="server" OnDataBound="OnDataBound" AutoPostBack="True" DataSourceID="SqlDataSource1" 
                                                                 DataTextField="Make" DataValueField="Make"/>
                                               
                                        </div>
                                        <hr />
                                        
                                        <div>
                                            <div>
                                                <asp:Label CssClass="control-label bold" runat="server">Model</asp:Label>
                                            </div>
                                            <asp:RadioButtonList ID="Model_RadioList" runat="server" OnDataBound="OnDataBound" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Model" DataValueField="Model" />
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT DISTINCT [Model] FROM [Cars] WHERE ([Make] = @Make)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Make_RadioList" PropertyName="SelectedValue" Name="Make" Type="String"></asp:ControlParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
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
                                        <%--<div>
                                            <div>
                                                <asp:Label CssClass="control-label bold" runat="server">Mileage</asp:Label>
                                            </div>
                                            <asp:Repeater runat="server" ID="Mileage_Repeater">
                                                <ItemTemplate>
                                                    <asp:RadioButton GroupName="group1" runat="server" ID="" Text="" />
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>--%>
                                        <hr />
                                        <%--<div>
                                            <div>
                                                <asp:Label CssClass="control-label bold" runat="server">Body Style</asp:Label>
                                            </div>
                                            <asp:Repeater runat="server" ID="BodyStyle_Repeater">
                                                <ItemTemplate>
                                                    <asp:CheckBox runat="server" ID="" Text="" />
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>--%>
                                        <hr />
                                        <div>
                                            <asp:Button runat="server" Text="Search" OnClick="SearchFromFilterResults"/>
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
                        <div class="row">
                            <div class="col-7"></div>
                            <div class="col-5">
                                <div class="row">
                                    <div class="col-3 text-right px-0">
                                        <asp:Label CssClass="control-label bold pt-1" runat="server" AssociatedControlID="SortBy">Sort by:</asp:Label>
                                    </div>
                                    <div class="col-9">
                                        <asp:DropDownList OnSelectedIndexChanged="SortBy_OnSelectedIndexChanged" CssClass="form-control" ID="SortBy" runat="server" AutoPostBack="True" >
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                

                            </div>
                        </div>
                        
                        
                        <asp:Repeater runat="server" ID="RepeaterCards">

                            <ItemTemplate>
                                <div class="my-4" style="background-color: white">
                                    <div class="row">
                                        <div class="col-6">
                                            <img src="Images/carImageExample.jpg" style="width: 100%" />
                                        </div>
                                        <div class="col-6">
                                            <div>
                                                <span class="bold" style="font-size: 24px">$<%#Eval("Price") %></span>
                                                <span class="gray mx-1 small">|</span>
                                                <span class="gray small"><%#Eval("Mileage") %> miles</span>
                                            </div>

                                            <div class="bold">
                                                <span><%#Eval("Year")%></span>
                                                <span><%#Eval("Make")%></span>
                                                <span><%#Eval("Model")%></span>

                                            </div>
                                            <div class="row small mt-1">
                                                <div class="col-4">
                                                    <div>
                                                        <span class="bold">Ext.Color:</span>
                                                        <span><%#Eval("ExteriorColor")%></span>
                                                    </div>
                                                    <div>
                                                        <span class="bold">Int.Color:</span>
                                                        <span><%#Eval("InteriorColor")%></span>
                                                    </div>
                                                </div>
                                                <div class="col-8">
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
                                            <div class="text-center mt-3">
                                                <asp:Button runat="server" CssClass="btn niceButton2" Style="width: 90%" Text="Check Availability" />
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

            </div>

        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>
