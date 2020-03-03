<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Cars.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="text-center">Contact Us</h3>

    <div class="row mt-4 mb-5">
        <div class="col-lg-6">
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
        </div>

        <div class="col-lg-6 text-center">
            <p>Have a question? Check our <a href="#">Frequently Asked Questions</a> page.</p>
            <div id="grayBox">
                <p>
                    <strong>Customer Service</strong>
                    <br />
                    Call: (888) 780-1286
                </p>
                <p>
                    <strong>Cars.com Offices</strong>
                    <br />
                    <a href="tel:+13126015000">(312) 601-5000</a>
                    <br />
                    Fax: (312) 601-5755
                </p>
                <p>
                    <strong>National OEM Advertising Opportunity Inquiries</strong>
                    <br/>
                    <a href="mailto:NationalSales@cars.com">NationalSales@cars.com</a>
                </p>
                <p>
                    <strong>Media Inquiries</strong>
                    <br/>
                    PR Department
                    <br/>
                    <a href="mailto:PR@cars.com">PR@cars.com</a>
                </p>
            </div>
            <p>Interested in becoming a cars.com car dealer? Fill out our simple form!</p>
            <h4>
                <a style="text-decoration: underline" href="#">Join Us!</a>
            </h4>
        </div>
    </div>

    

</asp:Content>
