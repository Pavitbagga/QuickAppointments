<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="WordFilter.aspx.cs" Inherits="ProjectA7.WordFilter" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"]) { %>
    <div style="font-family: Arial, sans-serif;">
        <h2>Try It Page</h2>

        <!-- Description of Services -->
        <div>
            <h3>Service Descriptions:</h3>
            <p>Word Filter: Filters a given text based on certain criteria.</p>
        </div>

        <!-- Word Filter Section -->
        <div style="margin-top: 20px;">
            <h3>Word Filter Service</h3>
            <p>Input: A text in string.</p>
            <p>Output: string after removing the stop words and XML tags and attributes</p>
            <asp:Label ID="Label4" runat="server" Text="Enter Text to Filter: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Apply Filter" OnClick="Button2_Click" />
            <asp:Label ID="Label5" runat="server" Text="Filtered Content:"></asp:Label>
        </div>
    </div>
     <% } else { %>
<p>Please <a href="Default.aspx">login</a> to view this content.</p>

<% } %>
</asp:Content>
