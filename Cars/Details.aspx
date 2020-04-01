<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Cars.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row my-5">
        <div class="col-lg-10 offset-lg-1">
            <div class="row">
                <div class="col-lg-8 pr-lg-4 p-0">
                    <img src="Images/carImageExample.jpg" style="width: 100%" />
                </div>
                <div class="col-lg-4" style="border: 1px solid gray">
                    <div class="p-3">
                        <h4 class="bold">Contact Seller</h4>
                        <p>
                            <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <div>
                                        <span>
                                            <%#Eval("FirstName") %>
                                        </span>
                                        <span>
                                            <%#Eval("LastName") %>
                                        </span>
                                    </div>
                                    <div class="mt-2">
                                        <span>Call:</span>
                                        <span><%#Eval("PhoneNumber") %></span>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT SellerId, FirstName, LastName, EmailAdress, PhoneNumber, DayTime, ZIP FROM Sellers WHERE (SellerId = (SELECT SellerId FROM Cars WHERE (CarId = @CarId)))">
                                <SelectParameters>
                                    <asp:QueryStringParameter QueryStringField="id" Name="CarId"></asp:QueryStringParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </p>
                    </div>
                </div>
            </div>
            <div class="row my-5">
                <div class="col-lg-8">
                    <asp:Repeater runat="server" ID="DetailsRepeater" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <div class="p-3">
                                <span>USED</span>
                                <div style="font-size: 25px">
                                    <span><%#Eval("Year")%></span>
                                    <span><%#Eval("Make")%></span>
                                    <span><%#Eval("Model")%></span>
                                    <span><%#Eval("Style")%></span>
                                </div>
                                <div>
                                    <span><%#Eval("Mileage", "{0:n0}")%></span>
                                    <span>miles</span>
                                </div>
                                <hr />
                                <div>
                                    <h2 class="font-weight-bold"><%#Eval("Price", "{0:c0}")%></h2>
                                </div>
                                <div class="mt-5">
                                    <h4 class="font-weight-bold">Basics:</h4>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div>
                                            <span class="bold">Bodystyle:</span>
                                            <span><%#Eval("Bodystyle") %></span>
                                        </div>
                                        <div>
                                            <span class="bold">Transmission:</span>
                                            <span><%#Eval("Transmission") %></span>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div>
                                            <span class="bold">Exterior Color:</span>
                                            <span><%#Eval("ExteriorColor") %></span>
                                        </div>
                                        <div>
                                            <span class="bold">Interior Color:</span>
                                            <span><%#Eval("InteriorColor") %></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT * FROM [Cars] WHERE ([CarId] = @CarId)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="CarId" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
