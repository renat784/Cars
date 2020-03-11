<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="feedback.ascx.cs" Inherits="Cars.Reusable.feedback" %>
<p>Please summarize the business opportunity and provide your contact information so a Cars.com representative can follow up with you.</p>
            <div id="ContactUsForm" class="mt-5">
                <div class="row form-group">
                    <div class="col-lg-6">
                        <asp:Label CssClass="control-label" runat="server">Summary of Business Opportunity</asp:Label>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox CssClass="form-control" ID="summary" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-6">
                        <asp:Label CssClass="control-label" runat="server">Name</asp:Label>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox CssClass="form-control" ID="name" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-6">
                        <asp:Label CssClass="control-label" runat="server">Phone Number</asp:Label>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox CssClass="form-control" TextMode="Phone" ID="phone" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-6 ">
                        <asp:Label CssClass="control-label" runat="server">Email Adress</asp:Label>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:TextBox CssClass="form-control" TextMode="Email" ID="email" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-12 text-right">
                        <asp:Button CssClass="btn btn-dark" runat="server" Text="Send"/>
                    </div>
                </div>
            </div>
