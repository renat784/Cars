<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cars.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    <div class="body-content text-center mt-5">
        <div class="col-lg-4 offset-lg-4">
            <a class="underlinedLink activ">Log In</a>
            <a class="underlinedLink ml-2" runat="server" href="~/Account/Register" >Sign Up</a> 
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
                    <h5 class="text-left font-weight-bold mb-4">Log In With Email</h5>
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="control-label">Email</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group mb-0">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="control-label">Password</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div>
                            <a href="#">Forgot your password?</a>
                        </div>
                    </div>
                    <div class="form-group mt-5">
                        <div>
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn niceButton2 col-12" />
                        </div>
                    </div>
                </div>
                <p class="text-center my-5 small">
                    We value your privacy.<br />
                    Cars.com <a href="#">Privacy Statement.</a>
                </p>
            </div>
        </div>
    </div>

</asp:Content>
