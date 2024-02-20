<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Top10.aspx.cs" Inherits="ProjectA7.Top10" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!-- Author:  Avneet Ahuja -->
<!-- ID: 1219955685 -->
<!-- Description: This ASP.NET page contains the user interface for two services: Word Count Service and Top 10 Words Service. -->
    <% if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"]) { %>

<div style="text-align: center; width: 50%; float: right; height: 450px;">
    <h2>Top 10 Words Service</h2>
    <h4><strong>Description: </strong>Filters out the top 10 most frequent content words<br />
        <strong>Method: </strong>Input: URL, Output: JSON String
    </h4>
    <!-- Input URL Label -->
    <label for="inputUrl">Input URL:</label>
    <br />
    <!-- Input Textbox for Top 10 Words Service -->
    <asp:TextBox ID="inputUrl" runat="server" Rows="1" Columns="50"></asp:TextBox>

    <br /><br />
    <!-- Button to Trigger Top 10 Words Service -->
    <asp:Button ID="top10Button" runat="server" Text="Get Top 10 Words" OnClick="top10Button_Click" />
    <br />
    <br />
    <!-- Output Text Label for Top 10 Words -->
    <label for="outputTop10">Top 10 Words:</label>
    <br /><br />
    <!-- Output Textbox for Top 10 Words Service -->
    <asp:TextBox ID="outputTop10" runat="server" TextMode="MultiLine" Rows="10" Columns="50" ReadOnly="true"></asp:TextBox>
</div>
     <% } else { %>
<p>Please <a href="Default.aspx">login</a> to view this content.</p>

<% } %>
</asp:Content>

