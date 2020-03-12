<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmailSubscription.ascx.cs" Inherits="Cars.Reusable.EmailSubscription" %>

<section class="p-3 colorGray">
    <div class="row ">
        <div class="col-lg-5">
            <h3 class="font-weight-bold">Stay in the Know</h3>
            <p>Cars.com editors produce daily reviews, videos and news updates. Add your email and get the latest info in your inbox.</p>
        </div>
        <div class="col-lg-4 px-lg-0">
            <div class="form-group">
                <label for="emailId">Email</label>
                <input type="text" id="emailId" class="form-control"/>
            </div>
        </div>
        <div class="col-lg-3 verticalAlign">
            <a href="#" class="btn niceButton">Send Me The Latest!</a>
        </div>
    </div>
</section>