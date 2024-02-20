<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" MasterPageFile="~/Site.Master" Inherits="ProjectA7.Verification" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  

    <style>
     fieldset {
         margin-bottom: 20px;
         padding: 15px;
         border: 1px solid #ccc;
     }
     legend {
         font-weight: bold;
     }
     label {
         display: inline-block;
         width: 100px;
     }
 </style>

 <!-- Verification Function -->
 <fieldset>
     <legend>Function: verification</legend>
     <p>Description: This function verifies an XML file against an XSD schema.</p>
     <p>Input: xmlUrl: String, xsdUrl: String</p>
     <p>Output: validationResult: String</p>
     <label id="Label2" runat="server">XML Url:</label>
     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
     <label id="Label3" runat="server">XSD Url:</label>
     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
     <asp:Button ID="Button1" runat="server" Text="Verify" OnClick="Button1_Click" /><br />
     <p>Output:</p>
     <asp:Label ID="Label7" runat="server" Text="Result"></asp:Label>
 </fieldset>

</asp:Content>