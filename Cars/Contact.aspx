<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Cars.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">Contact Us</h2>

    <div class="row">
        <div class="col-lg-6">
            <p>Please summarize the business opportunity and provide your contact information so a Cars.com representative can follow up with you.</p>
            <div id="ContactUsForm">
                <div class="row p-2">
                    <div class="col-lg-6">
                        <asp:Label runat="server">Summary of Business Opportunity</asp:Label>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="summary" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row p-2">
                    <div class="col-lg-6">
                        <asp:Label runat="server">Name</asp:Label>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row p-2">
                    <div class="col-lg-6">
                        <asp:Label runat="server">Phone Number</asp:Label>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox TextMode="Phone" ID="phone" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row p-2">
                    <div class="col-lg-6">
                        <asp:Label runat="server">Email Adress</asp:Label>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox TextMode="Email" ID="email" runat="server"></asp:TextBox>
                    </div>
                </div>



            </div>
        </div>

        <div class="col-lg-6 text-center">
            <p>Have a question? Check our <a href="#">Frequently Asked Questions</a> page.</p>
            <div>
                <p>
                    <strong>Customer Service</strong>
                    <br />
                    Call: (888) 780-1286
                </p>
                <p>
                    <strong>Cars.com Offices</strong>
                    <br />
                    (312) 601-5000
                    <br />
                    Fax: (312) 601-5755
                </p>
                <p>
                    <strong>National OEM Advertising Opportunity Inquiries</strong>
                    <br/>
                    NationalSales@cars.com
                </p>
                <p>
                    <strong>Media Inquiries</strong>
                    <br/>
                    PR Department
                    <br/>
                    PR@cars.com
                </p>
            </div>
            <p>Interested in becoming a cars.com car dealer? Fill out our simple form!</p>
            <h4>
                <a href="#">Join Us!</a>
            </h4>
        </div>
    </div>

    

</asp:Content>
