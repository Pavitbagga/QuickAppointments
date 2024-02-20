<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="WConversion.aspx.cs" Inherits="ProjectA7.WConversion" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"]) { %>
           <h1> Weight Conversion</h1> <!-- Added heading -->
    
    
    <section>
        <label> Enter Weight (in Kg):</label>
        <asp:TextBox CssClass="textArea" ID="wsdlTextBox" runat="server" > </asp:TextBox>  <!-- Added an asp textbox -->
        <br />
        <asp:Button CssClass="button-size" ID="wsdlButton" runat="server" Text="Submit"  OnClick="wsdlButton_Click" /> <!-- Button with ID and onclick function -->
 
        <asp:Label  CssClass="label" ID="wsdlResult" runat="server"> </asp:Label>
        <label> Pounds </label><br /> <!-- Added css label -->

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