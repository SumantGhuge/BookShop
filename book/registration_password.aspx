<%@ Page Title="" Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="registration_password.aspx.cs" Inherits="registration_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
            width: 188px;
        }
        .auto-style8 {
            width: 137px;
        }
        .auto-style9 {
        width: 137px;
        height: 29px;
    }
    .auto-style10 {
        height: 29px;
    }
    .auto-style11 {
        width: 188px;
        height: 29px;
    }
    .auto-style12 {
        width: 137px;
        height: 26px;
    }
    .auto-style13 {
        height: 26px;
    }
    .auto-style14 {
        width: 188px;
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table border="0" cellpadding="0" cellspacing="0" style="height: 131px; width: 453px;">
       
           
        
    <tr>
        

        <th colspan="3">
            Registration 
        </th>
        
    </tr>
    <tr>
        <td class="auto-style12">
            UserName
        </td>
        <td class="auto-style13">
            <asp:TextBox ID="txtUserName" runat="server" Width="122px" />
        </td>
        <td class="auto-style14">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Required" ForeColor="blue" ControlToValidate="txtUserName"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            Password
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        </td>
        <td class="auto-style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Required" ForeColor="white" ControlToValidate="txtPassword"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            Confirm Password
        </td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
        </td>
        <td class="auto-style5">
            <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Passwords do not match." ForeColor="yellow" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
        </td>
   
    <tr>
        <td class="auto-style9">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" Width="85px" />
        </td>
        <td class="auto-style10">
            <asp:Button ID="Button2" Text="Submit" runat="server" OnClick="RegisterUser" Width="93px" />
        </td>
        <td class="auto-style11">
            <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="Refresh" Width="80px" />
        </td>
    </tr>
</table>
</asp:Content>

