<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Cars.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <div class="body-content text-center mt-5">
        <div class="col-lg-4 offset-lg-4">
            <a class="underlinedLink"  runat="server" href="~/Account/Login">Log In</a>
            <a class="underlinedLink ml-2 activ">Sign Up</a>
        </div>
    </div>
    <hr />
    <div class="body-content">
        <div class="col-lg-4 offset-lg-4">
            <div class="text-center">
                <div class="my-4">
                    <a class="btn btn-primary col-12" style="background-color: #3b5998; position: relative" href="#">
                        <span style="position: absolute; left: 5%"><i class="fa fa-facebook" aria-hidden="true"></i></span>
                        <span>Log In With Facebook</span>
                    </a>
                </div>
                <div class="my-4">
                    <span>OR</span>
                </div>
            </div>
            <div>
                <div>
                    <h5 class="text-left font-weight-bold mb-4">Sign Up With Email</h5>
                    <asp:ValidationSummary runat="server" CssClass="text-danger" />

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="control-label">Email</asp:Label>
                        
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="control-label">Password</asp:Label>
                        
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                CssClass="text-danger" ErrorMessage="The password field is required." />
                        
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="control-label">Confirm password</asp:Label>
                        
                            <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                            <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                        
                    </div>
                    <div class="form-group mt-5">
                        
                            <asp:Button runat="server" OnClick="CreateUser_Click" Text="Sign Up" CssClass="btn niceButton2 col-12" />
                        
                    </div>
                    <p class="text-center my-5 small">
                        We value your privacy.<br />
                        Cars.com <a href="#">Privacy Statement.</a>
                    </p>
                </div>
            </div>
        </div>
    </div>






</asp:Content>
