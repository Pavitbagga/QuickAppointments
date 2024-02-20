<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="wsdlAddr.aspx.cs" Inherits="ProjectA7.wsdlAddr" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"]) { %>
    <section>
        <h2 CssClass="subHeading">WSDL ADDRESS</h2>
        <label>Description: Analyze a webpage and return all WSDL addresses in that webpage</label> <br />
        <label> Input: : URL </label> <br />
        <label> Output: string[] </label> <br />
        <label class="padding"> Enter a URL </label> 
        <asp:TextBox CssClass="textArea" ID="wsdlTextBox" runat="server" > </asp:TextBox>  <!-- Added an asp textbox -->
        <asp:Button CssClass="button-size" ID="wsdlButton" runat="server" Text="Submit"  OnClick="wsdlButton_Click" /> <!-- Button with ID and onclick function -->
 
        <asp:Label  CssClass="label" ID="wsdlResult" runat="server"> </asp:Label><br /> <!-- Added css label -->

<br />
        <label class="fst-italic">Made by Pavit Bagga</label> <!-- added signature -->
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