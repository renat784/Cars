<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FindTheDealer.ascx.cs" Inherits="Cars.Reusable.FindTheDealer" %>

<section>
    <div class="row py-3" style="background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7) ), 
                            url(Images/big-Map.png);color: white; text-align: center">
                                                                     
        <div class="col-lg-1 offset-lg-2">
            <i class="fa fa-map-marker" style="font-size: 40px" aria-hidden="true"></i>
        </div>
        <div class="col-lg-5">
            <h3>Find the Best Car Dealers</h3> 
        </div>
        <div class="col-lg-2">
            <asp:Button CssClass="btn btn-outline-dark white-outline-button" runat="server" Text="Search Near You" />
        </div>

    </div>
</section>
