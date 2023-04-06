<%@ Page Title="" Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="password_chage.aspx.cs" Inherits="raw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

     <html xmlns="http://www.w3.org/1999/xhtml" >
<body>
    <form id="form1">
    <div>
    
               <asp:Button ID="Button3" runat="server" Text="SEARCH BOOKS" Width="206px" OnClick="Button3_Click"/>
        <table class="style1" style="width: 452px">
            <tr>
                <td class="style2">
                    Current Password</td>
                <td>
                    <asp:TextBox ID="txtOLDPassword" runat="server"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td class="style2">
                    New Password</td>
                <td>
                    <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Confirm New Password</td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                     <asp:Button ID="Button2" runat="server" style="margin-left: 33px" Text="Cancle" Width="87px" OnClick="Button2_Click" />
                     </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Save Settings" OnClick="Button1_Click" />
                   
                    <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                   
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body> 
</html>

 
</asp:Content>

