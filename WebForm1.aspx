<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="WebForm1.aspx.cs" Inherits="ProjectA7.WebForm1" %>
<%@ Register Src="~/Login.ascx" TagPrefix="uc" TagName="Login" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <!-- Search Function -->
     <% if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"]) { %>
 <fieldset>
     <legend>Function: search</legend>
     <p>Description: This function searches for a key in an XML file and returns the node's content and attributes.</p>
     <p>Input: xmlUrl: String, key: String</p>
     <p>Output: results: String</p>
      <p>Service URL: http://localhost:52324/Service1.svc</p>
     <label id="Label5" runat="server">XML Url:</label>
     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
     <label id="Label6" runat="server">Key:</label>
     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
     <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" /><br />
     <p>Output:</p>
     <asp:Label ID="Label8" runat="server" Text="Result"></asp:Label>
 </fieldset>
    
     <% } else { %>
    <p>Please <a href="Default.aspx">login</a> to view this content.</p>
    
    <% } %>
 </asp:Content>
