<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shopping.aspx.cs" Inherits="Cars.Shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="colorSecondary py-lg-4 px-lg-3">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab"
                    aria-controls="home" aria-selected="true">Search By Make</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                    aria-controls="profile" aria-selected="false">Search By Body Style</a>
            </li>
        </ul>
        <div class="tab-content mt-4" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="px-3">
                    <div class="row">
                        <div class="col-lg-4 p-0">
                            <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                <asp:ListItem>Used Cars</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-4 p-0">
                            <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                <asp:ListItem>All Makes</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-4 p-0">
                            <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                <asp:ListItem>All Models</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-4 p-0">
                            <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                <asp:ListItem>No Max Price</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-2 p-0">
                            <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                                <asp:ListItem>30 miles from</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-2 p-0">
                            <asp:TextBox CssClass="form-control borderRad-0" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 p-0">
                            <asp:Button CssClass="btn btn-success greenButton borderRad-0" 
                                runat="server" Text="Search" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <div class="row px-3">
                    <div class="col-lg-2 p-0">
                        <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                            <asp:ListItem>Used Cars</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2 p-0">
                        <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                            <asp:ListItem>SUV</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2 p-0">
                        <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                            <asp:ListItem>No Max Price</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2 p-0">
                        <asp:DropDownList CssClass="form-control borderRad-0" runat="server" AutoPostBack="True">
                            <asp:ListItem>30 miles from</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2 p-0">
                        <asp:TextBox CssClass="form-control borderRad-0" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2 p-0">
                        <asp:Button CssClass="btn btn-success greenButton borderRad-0" 
                            runat="server" Text="Search" />
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
