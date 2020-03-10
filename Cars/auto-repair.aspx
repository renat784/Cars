<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="auto-repair.aspx.cs" Inherits="Cars.auto_repair" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="body-content">
        <h4 class="text-center my-5">Vehicle Service and Repairs</h4>

        <div class="col-lg-4 offset-lg-4">
            <div class="row form-group">
                <asp:DropDownList CssClass="form-control col-lg-6"
                                  ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True">All makers</asp:ListItem>
                    <asp:ListItem>Toyota</asp:ListItem>
                    <asp:ListItem>Honda</asp:ListItem>
                    <asp:ListItem>Lexus</asp:ListItem>
                </asp:DropDownList>
                <span class="col-1 p-1"></span>
                <asp:TextBox CssClass="form-control col-lg-5" ToolTip="Zip code, for example 12345" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col-12" style="padding: 0">
                    <asp:Button CssClass="btn"
                                Style="background-color: #93a533; color: white; display: block; width: 100%;"
                                runat="server"
                                Text="Find a Service Center" />
                </div>
            </div>
        </div>

        <div>
            <h4>Service Term to Know</h4>
            <div style="background-color: #F2F2F2; margin: 15px 0"><%= CleanTitle(item.Title) %></div>
            <div class="row">
                <div class="col-lg-6">
                    <img class="col-12" src="Glossary/<%= item.ImageFileName %>"/>
                </div>
                <div class="col-lg-6 pt-lg-4">
                    <%= ShowText(item.TextFileName) %> 
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
