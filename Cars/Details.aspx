<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Cars.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">





    <div class="row">
        <div class="col-6">
            <img src="Images/carImageExample.jpg" class="col-12" />
        </div>
        <div class="col-6">
            <h5>Contact Seller</h5>

            <p>
                <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <p>
                            <span>
                                <%#Eval("FirstName") %>
                            </span>
                            <span>
                                <%#Eval("LastName") %>
                            </span>
                        </p>
                        <p>Call:
                            <%#Eval("PhoneNumber") %>
                        </p>
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

    <asp:Repeater runat="server" ID="DetailsRepeater" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <h5>Used</h5>
            <div>
                <span><%#Eval("Year")%></span>
                <span><%#Eval("Make")%></span>
                <span><%#Eval("Model")%></span>
                <span><%#Eval("Style")%></span>
            </div>
            <div>
                <span><%#Eval("Mileage")%></span>
                <span>miles</span>
            </div>
            <hr />
            <div>
                <h3 class="bold">$<%#Eval("Price")%></h3>
            </div>
            <div>
                <h3 class="bold">Basics:</h3>
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

        </ItemTemplate>
    </asp:Repeater>



    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:CarsConnection %>' SelectCommand="SELECT * FROM [Cars] WHERE ([CarId] = @CarId)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="CarId" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
