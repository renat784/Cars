﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="Cars.SearchResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<asp:UpdatePanel ID="updpnlRefresh" runat="server" UpdateMode="Conditional">
<ContentTemplate>
    
    <div class="body-content my-5">
        <hr />
        <h4 class="text-center mb-3">Search results:</h4>
        <div class="row colorGray">
            <div class="col-lg-4">
                
                <div class="p-4 my-4" style="background-color: white">
                    <div>
                        <span class="bold"><%#Eval("") %></span>
                        <span>results</span>
                        <hr />
                    </div>
                    <div class="form-group">
                        <asp:Label class="control-label" for="Year" runat="server">Year</asp:Label>
                        <asp:DropDownList ID="Year" CssClass="form-control" SelectMethod="YearsList" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label class="control-label" AssociatedControlID="Make"  runat="server">Make</asp:Label>
                        <asp:DropDownList ID="Make" CssClass="form-control"  runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label class="control-label" AssociatedControlID="Model" runat="server">Model</asp:Label>
                        <asp:DropDownList ID="Model" CssClass="form-control"  runat="server" AutoPostBack="True">
                            <asp:ListItem>Select a Make First</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" CssClass="btn niceButton" OnClick="SearchCars" Text="Search"/>
                    </div>
                </div>
                
            </div>
            <div class="col-lg-8">
                <asp:Repeater runat="server" ID="RepeaterCards">
                    
                    <ItemTemplate>
                        <div class="my-4" style="background-color: white">
                            <div class="row">
                                <div class="col-6">
                                    <img src="Images/carImageExample.jpg" style="width: 100%"/>
                                </div>
                                <div class="col-6">
                                    <div>
                                        <span class="bold" style="font-size: 24px">$<%#Eval("Price") %></span>
                                        <span class="gray mx-1 small">|</span>
                                        <span class="gray small">500 miles</span>
                                    </div>
                                    
                                    <div class="bold">
                                        <span><%#Eval("Year")%></span>
                                        <span class="ml-1"><%#Eval("Name")%></span>
                                        <span class="ml-1"><%#Eval("MakeId")%></span>
                                    </div>
                                    <div class="row small mt-1">
                                        <div class="col-6">
                                            <div>
                                                <span class="bold">Ext.Color:</span>
                                                <span><%#Eval("ExteriorColorId")%></span>
                                            </div>
                                            <div>
                                                <span class="bold">Int.Color:</span>
                                                <span><%#Eval("InteriorColorId")%></span>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div>
                                                <span class="bold">Transmission:</span>
                                                <span><%#Eval("TransmissionId")%></span>
                                            </div>
                                            <div>
                                                <span class="bold">Drivetrain:</span>
                                                <span><%#Eval("DriveType")%></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-center mt-3">
                                        <asp:Button runat="server" CssClass="btn niceButton2" style="width: 90%"  Text="Check Availability"/>
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
