<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="advanced-search.aspx.cs" Inherits="Cars.advanced_search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="col-lg-8 col-sm-12">
        <div class="row">
            <div class="col-lg-6">
                <h2>Advanced Search</h2>
            </div>
            <div class="col-lg-6">
                <a href="#">Start Over</a>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-lg-4 form-group">
                <label class="control-label">Search Within</label>
                <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                    <asp:ListItem>10 miles</asp:ListItem>
                    <asp:ListItem>20 miles</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class=" col-lg-4 form-group">
                <label class="control-label">ZIP Code</label>
                <asp:TextBox CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class=" col-lg-4 form-group">
                <label class="control-label">Home Delivery</label>
                <div>
                    <asp:CheckBox runat="server"/>
                    <span>Include cars available for home delivery</span>
                </div>
            </div>
        </div>
        <div class="mt-3">
            <h2>Additional Search Options</h2>
            <div class="row">
                    
                <div class="col-lg-6 form-group">
                    <label class="control-label">Price Range</label>
                    <div class="row">
                        <div class="col-6">
                            <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                                <asp:ListItem>Min Price</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-6">
                            <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                                <asp:ListItem>Max Price</asp:ListItem>
                                <asp:ListItem>No Max</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 form-group">
                    <label class="control-label">Year Range</label>
                    <div class="row">
                        <div class="col-6">
                            <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                                <asp:ListItem>From Year</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-6">
                            <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                                <asp:ListItem>To Year</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                        
                    
                    
                
                   
                       
                    
               
                
            
        </div>
            <div class="row">
                <div class="col-lg-6 form-group">
                    <label class="control-label">Mileage</label>
                    <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>Any Mileage</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-6 form-group">
                    <label class="control-label">Exterior Color</label>
                    <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>Any Color</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 form-group">
                    <label class="control-label">Interior Color</label>
                    <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>Any Color</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-6 form-group">
                    <label class="control-label">Transmission</label>
                    <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>Any Transmission</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 form-group">
                    <label class="control-label">Drivetrain</label>
                    <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>Any Drivetrain</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-6 form-group">
                    <label class="control-label">Cylinder Count</label>
                    <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>Any Cylinder Count</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 form-group">
                    <label class="control-label">Seller Type</label>
                    <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>Any Seller Type</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-6 form-group">
                    <label class="control-label">Listing Date</label>
                    <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>Any Date</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        
        <div class="mt-3">
            <label>Fuel</label>
            <div class="form-group">
                <asp:CheckBox CssClass="checkbox" runat="server"/>
                <span>Gasoline</span>
            </div>
            <div class="form-group">
                <asp:CheckBox CssClass="checkbox" runat="server"/>
                <span> E-85/Gasoline</span>
            </div>
            <div class="form-group">
                <asp:CheckBox runat="server"/>
                <span>Gasoline Hybrid</span>
            </div>
            <div class="form-group">
                <asp:CheckBox runat="server"/>
                <span>Diesel</span>
            </div>
            <div class="form-group">
                <asp:CheckBox runat="server"/>
                <span>Electric</span>
            </div>
            <div class="form-group">
                <asp:CheckBox runat="server"/>
                <span> Compressed Natural Gas</span>
            </div>
            <div class="form-group">
                <asp:CheckBox runat="server"/>
                <span>Unknown</span>
            </div>
        </div>
        
        <div class="mt-5">
            <label class="control-label">Additional Keywords</label>
            <div class="row">
                <div class="col-lg-6 form-group">
                    <asp:TextBox CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-6 form-group">
                    <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>Match Any</asp:ListItem>
                        <asp:ListItem>Match All</asp:ListItem>
                        <asp:ListItem>Exact Phrase</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div>
                <asp:Button CssClass="btn btn-success greenButton col-sm-12 col-lg-2" runat="server" Text="Search"/>
            </div>
        </div>
        

    </div>

</asp:Content>
