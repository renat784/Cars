<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="auto-repair.aspx.cs" Inherits="Cars.auto_repair" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="text-center my-5">Vehicle Service and Repairs</h4>

    <div style="width: 40%; margin: 0 auto">
        <div class="row form-group">
            <asp:DropDownList CssClass="form-control col-lg-6" 
                              ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True">All makers</asp:ListItem>
                <asp:ListItem>Toyota</asp:ListItem>
                <asp:ListItem>Honda</asp:ListItem>
                <asp:ListItem>Lexus</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox CssClass="form-control col-lg-5 ml-lg-3" ToolTip="Zip code, for example 12345"  runat="server"></asp:TextBox>
        </div>
        <div class="row">
            <div class="form-group">
                <asp:Button CssClass="btn"
                    Style="background-color: #93a533; color: white;"
                    runat="server"
                    Width="460"
                    Text="Find a Service Center" />
            </div>
        </div>

    </div>
</asp:Content>
