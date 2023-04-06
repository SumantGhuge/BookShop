<%@ Page Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="My sale.aspx.cs" Inherits="My_sale" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
        width: 198px;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1px" style="width: 87%; height: 291px;">
    <tr>
        <td class="style4">
            Mobile no</td>
        <td style="width: 84px">
            <asp:TextBox ID="txtmobile" runat="server" Width="211px" BackColor="#FFC1FF" 
                ForeColor="Black" Height="28px" ToolTip="Not more than 10 digits"></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td class="style4">
            Email_id</td>
        <td style="width: 84px">
            <asp:TextBox ID="Txtemail" runat="server" Width="213px" BackColor="#C4FFC4" 
                Height="27px"></asp:TextBox>
        </td>
    </tr>
    <tr>
    
    <td bgcolor="#FFFFC4">
        <asp:Label ID="Label1" runat="server" Text="Recheck Mobile_no"></asp:Label>
        </td>
    
    <td bgcolor="#FFFFC4">
        <asp:Label ID="Label2" runat="server" Text="Recheck Email_id"></asp:Label>
        </td>
    
    </tr>
     <tr>
        <td class="style4">
            Select Course</td>
        <td style="width: 84px">
            <asp:DropDownList ID="DpCourse" runat="server" Height="17px" Width="106px">
                <asp:ListItem>COURSE</asp:ListItem>
                <asp:ListItem>MCA</asp:ListItem>
                <asp:ListItem>B.E</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>MBA</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Enter Branch</td>
        <td style="width: 84px">
            <asp:DropDownList ID="Dpbranch" runat="server" Height="16px" Width="107px">
                <asp:ListItem>BRANCH</asp:ListItem>
                <asp:ListItem>MCA</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
                <asp:ListItem>Marketing</asp:ListItem>
                <asp:ListItem>CS</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>ELetrical</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>Electronic</asp:ListItem>
                <asp:ListItem>Marketing</asp:ListItem>
                <asp:ListItem>H.R</asp:ListItem>
                <asp:ListItem>Retail</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Enter Semister</td>
        <td style="width: 84px">
            <asp:DropDownList ID="Dpsem" runat="server" Height="16px" Width="76px">
                <asp:ListItem>SEM</asp:ListItem>
                <asp:ListItem>I</asp:ListItem>
                <asp:ListItem>II</asp:ListItem>
                <asp:ListItem>III</asp:ListItem>
                <asp:ListItem>IV</asp:ListItem>
                <asp:ListItem>V</asp:ListItem>
                <asp:ListItem>VI</asp:ListItem>
                <asp:ListItem>VII</asp:ListItem>
                <asp:ListItem>VIII</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Enter Book Publication name</td>
        <td style="width: 84px">
            <asp:DropDownList ID="Dpbook_publish" runat="server" Height="16px" 
                Width="105px">
                <asp:ListItem>Shivani</asp:ListItem>
                <asp:ListItem>20-Question</asp:ListItem>
                <asp:ListItem>Arrow</asp:ListItem>
                <asp:ListItem>BalaJi</asp:ListItem>
                <asp:ListItem>Vidaya</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Enter Book Price</td>
        <td style="width: 84px">
            <asp:TextBox ID="Txtprice" runat="server" Width="147px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Button ID="Btnnext" runat="server"  Text="Next" 
                                                     Width="98px" 
                onclick="Btnnext_Click" />
            
        </td>
   
    
 
        <td class="style4">
            <asp:Button ID="Btnok" runat="server" Text="Ok" 
                                                     Width="94px" onclick="Btnok_Click" />
            
        </td>
    
     </tr>
    
    </table>
</asp:Content>

