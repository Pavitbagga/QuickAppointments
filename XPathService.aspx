<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="XPathService.aspx.cs" Inherits="ProjectA7.XPathService" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <% if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"]) { %>
<h1>XML XPath Search - Try It Page</h1>
    <div>
        <label> Description: this service returns the XPath of XML</label>
        <label> Input: XML:URL, XSD:URL</label>
        <label> Output: String</label>
    
   
    </div>
<div>
    <label for="xmlUrl">XML URL:</label>
    <asp:TextBox ID="xmlUrl" runat="server" Width="77%" Text="https://www.public.asu.edu/~aahuja16/parks.xml"></asp:TextBox>
</div>

<div>
    <label for="xsdUrl">XSD URL:</label>
    <asp:TextBox ID="xsdUrl" runat="server" Width="77%" Text="https://www.public.asu.edu/~aahuja16/parks.xsd"></asp:TextBox>
</div>


<div>
    <label for="xpath">XPath Expression:</label>
    <asp:TextBox ID="xpath" runat="server" Width="75%" Text="//your/xpath/expression"></asp:TextBox>
</div>

<div>
    <asp:Button ID="searchButton" runat="server" Text="Search XPath" OnClick="SearchXPath" CssClass="btn btn-primary" />
</div>

<div>
    <h2>Result</h2>
    <asp:Label ID="resultLabel" runat="server" Text=""></asp:Label>
</div>
     <% } else { %>
<p>Please <a href="Default.aspx">login</a> to view this content.</p>

<% } %>
</asp:Content>