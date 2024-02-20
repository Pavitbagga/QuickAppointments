<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="WebDownload.aspx.cs" Inherits="ProjectA7.WebDownload" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="font-family: Arial, sans-serif;">
        <h2>Try It Page</h2>

        <!-- Description of Services -->
        <div>
            <h3>Service Descriptions:</h3>
            <p>Web Downloading: Downloads and returns plain text content from a given URL.</p>
        </div>

        <!-- Web Downloading Section -->
        <div style="margin-top: 20px;">
            <h3>Web Downloading Service</h3>
            
            <p>Input: A webpage URL in string.</p> 
            <p> Output: string of the content of the webpage</p>
            <asp:Label ID="Label2" runat="server" Text="Enter the URL: "></asp:Label>
            <asp:TextBox ID="TextBox1" ValidateRequestMode="Disabled" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Fetch Data" />
            <asp:Label ID="Label3" runat="server" Text="Downloaded Content:"></asp:Label>
            <asp:TextBox ID="TextBox3" Width="400px" Height="100px" TextMode="MultiLine" runat="server"></asp:TextBox>
        </div>

    </div>
</asp:Content>