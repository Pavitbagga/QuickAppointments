<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="WordCount.aspx.cs" Inherits="ProjectA7.WordCount" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"]) { %>
<div style="text-align: center; width: 75%; float: left; height: 450px;">
    <h2>Word Count Service</h2>
    <h4>
    Description: Counts the occurences of each word in input string.<br />
        
        Method: Input: String <br />
        Output: JSON String
    </h4>
    <!-- Input Text Label -->
    <label for="inputText">Input Text:</label>
    <br />
    <!-- Input Textbox for Word Count Service -->
    <asp:TextBox ID="inputText" runat="server" TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>

    <br />
    <!-- Button to Trigger Word Count Service -->
    <asp:Button ID="countButton" runat="server" Text="Count Words" OnClick="countButton_Click" />
    <br />
    <br />
    <!-- Output Text Label -->
    <label for="outputText">Word Count:</label>
    <br />
    <!-- Output Textbox for Word Count Service -->
    <asp:TextBox ID="outputText" runat="server" TextMode="MultiLine" Rows="10" Columns="50" ReadOnly="true"></asp:TextBox>
</div>
     <% } else { %>
<p>Please <a href="Default.aspx">login</a> to view this content.</p>

<% } %>
</asp:Content>