<%@ Page Title="" Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="Login_page.aspx.cs" Inherits="Login_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 109px;
            height: 23px;
        }
        .auto-style6 {
            width: 109px;
            height: 52px;
        }
        .auto-style7 {
            width: 225px;
            height: 52px;
        }
        .auto-style8 {
            width: 177px;
            height: 23px;
        }
        .auto-style9 {
            width: 225px;
            height: 23px;
        }
        .auto-style11 {
            width: 225px;
            height: 132px;
        }
        .auto-style12 {
            height: 132px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form action ="password_chage.aspx" method ="post">
    <table border="1px" style="width: 69%; height: 291px;">
    <tr>
        <td class="auto-style5">
            Enter UserName</td>
        <td class="auto-style9">
            <asp:TextBox ID="UserName" runat="server" Width="177px" OnTextChanged="UserName_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:Label ID="Label1" runat="server"></asp:Label></td>
        
    </tr>
    <tr>
        <td class="auto-style6">
            Enter Password</td>
        <td class="auto-style7">
            
        <asp:TextBox ID="Password" runat="server" Width="176px" 
                contextchanged="Password_TextChanged"></asp:TextBox>
            </td>
    </tr>
     
    <tr>
        <td class="auto-style12">

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Home_Page" Width="120px" Height="23px" style="font-weight: 700" />
            
            <br />
            <br />
            
            <asp:Button ID="Button3" runat="server" Text="Change_Password" Width="148px" OnClick="Button3_Click" style="font-weight: 700" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Registration" Width="116px" OnClick="Button4_Click" style="font-weight: 700" />

        </td>
        <td class="auto-style11">

            <asp:Button ID="Button1" runat="server" Height="32px" Text="OK" Width="105px" OnClick="Button1_Click" style="font-weight: 700"  />

        </td>
    </tr>
        <form>
        </form>
</asp:Content>

