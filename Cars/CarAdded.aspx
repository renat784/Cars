﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarAdded.aspx.cs" Inherits="Cars.CarAdded" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center" style="margin: 100px 0">
        <h1>WooHoo</h1>
        <p class="my-2" style="color: green;font-size: 20px">Your car successfully added to our database!</p>
        <div class="mt-3">
            <a href="<%=HttpContext.Current.Request.Url.PathAndQuery.Replace("caradded", "searchresult") %>">This is a link to your car</a>
        </div>
    </div>
</asp:Content>
