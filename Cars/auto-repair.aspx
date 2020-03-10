﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="auto-repair.aspx.cs" Inherits="Cars.auto_repair" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="bigImage" style="background-image: url(Images/repairCar.jpg)">
        <div class="textOnImage" style="padding-left: 30%">
            <h2 class="font-weight-bold">Vehicle Service and Repairs</h2>
        </div>
    </div>

    <div class="body-content">
        <div class="col-lg-10 offset-lg-1 divOnImage py-4 px-5" style="background-color: white; border-radius: 5px;">
            <div class="row">
                <div class="col-4 colorPrimary white p-4 text-center">
                    <h3 class="font-weight-bold">Auto Repair Services Near Me</h3>
                    <p>Find the best service center for you and get an estimate.</p>
                    <input type="button" style="width: 100%" class="btn niceButton2" value="Find a Service Center" />
                </div>
                <div class="col-7 offset-lg-1 my-auto">
                    <div class="row">
                        <div class="col-2">
                            <div class="colorPrimary white" style="border-radius: 50%; width: 50px; height: 50px; text-align: center">
                                <i style="font-size: 25px; padding-top: 25%" class="fa fa-usd" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="col-9 pl-0">
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
                        <div class="col-9 pl-0">
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
                        <div class="col-9 pl-0">
                            <p class="mb-0">Service & Repair Advice</p>
                            <p>
                                <a href="#">Learn about maintenance and repairs from our experts.</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="body-content">
            <section>
                <div class="col-lg-4 offset-lg-4">
                    <div class="row form-group">
                        <asp:DropDownList CssClass="form-control col-lg-6"
                                          ID="DropDownList1" runat="server" AutoPostBack="True">
                            <asp:ListItem Selected="True">All makers</asp:ListItem>
                            <asp:ListItem>Toyota</asp:ListItem>
                            <asp:ListItem>Honda</asp:ListItem>
                            <asp:ListItem>Lexus</asp:ListItem>
                        </asp:DropDownList>
                        <span class="col-1 p-1"></span>
                        <asp:TextBox CssClass="form-control col-lg-5" ToolTip="Zip code, for example 12345" runat="server"></asp:TextBox>
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
                <h4>Service Term to Know</h4>
                <div style="background-color: #F2F2F2; margin: 15px 0"><%= CleanTitle(item.Title) %></div>
                <div class="row">
                    <div class="col-lg-6">
                        <img class="col-12" src="Glossary/<%= item.ImageFileName %>" />
                    </div>
                    <div class="col-lg-6 pt-lg-4">
                        <%= ShowText(item.TextFileName) %>
                    </div>
                </div>
            </section>
        </div>
        

        <div class="text-center my-3">
            <a href="#">See More Auto Parts ></a>
        </div>

        <section>
            <h3 class="">Find Service by Make</h3>
            <div>
                <ul class="horizMenu">
                    <li>acura</li>
                    <li>audi</li>
                    <li>BMW</li>
                    <li>Buick</li>
                    <li>Cadillac</li>
                    <li>Chevrolet</li>
                </ul>
            </div>
        </section>
    </div>



</asp:Content>
