<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Cars.Contact" %>
<%@ Register Src="~/Reusable/feedback.ascx" TagName="feedback" TagPrefix="CustomControl"%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="body-content">
        <h3 class="text-center mt-5 secondary font-weight-bold">Contact Us</h3>
    <div class="row mt-4 mb-5">
        <div class="col-lg-6">
            <CustomControl:feedback runat="server" ID="feedback"></CustomControl:feedback>
        </div>

        <div class="col-lg-6 text-center">
            <p>Have a question? Check our <a href="#">Frequently Asked Questions</a> page.</p>
            <div class="py-4 px-2 colorGray">
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
    </div>
    

</asp:Content>
