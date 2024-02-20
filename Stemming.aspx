<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Stemming.aspx.cs" Inherits="ProjectA7.Stemming" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"]) { %>
    <section>
        <h2 CssClass="subHeading">Stemming</h2> 
        <label>Description: Analyzes a string containing words and replaces each of the derived words to their stem or root word</label> <br />
        <label> Input: string (like My friend likes to have friends that have great friendships)</label> <br />
        <label> Output: string </label> <br />
        <label class="padding"> Enter a sentence </label> 
        <asp:TextBox CssClass="textArea" ID="stemTextBox" runat="server" > </asp:TextBox>  <!-- Added an asp textbox -->
        <asp:Button CssClass="button-size" ID="stemButton" runat="server" Text="Stem"  OnClick="stemButton_Click" /> <!-- Button with ID and onclick function -->
        <asp:Label  CssClass="label" ID="stemResult" runat="server"> </asp:Label> <!-- Added css label -->

<br />
    </section>
    
    
    <!-- Css styling -->
    <style> 
        .padding{
            padding: 20px;
        }
        .textArea{
            border-color:black;
            width: 500px;
            height:25px;
            
        }
        .button-size
        {
           
            height: 25px; 
            width: 100px;
            padding: 0px 1px 0px 0px;
            padding-left: 10px;
            text-align:center;
            background:aqua;           
        }
        .label{  
            padding: 25px;
            height: 50px;
            width: 70px;
         
        }
        .subHeading{
            align-content:center;
        }
        
    </style>
     <% } else { %>
<p>Please <a href="Default.aspx">login</a> to view this content.</p>

<% } %>
</asp:Content>