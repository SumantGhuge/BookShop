<%@ Page Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="My Registration.aspx.cs" Inherits="My_Registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style3
    {
        width: 84px;
    }
        .style4
        {
        width: 143px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1px" style="width: 87%; height: 291px;">
    <tr>
        <td class="style4">
            Enter Enrollment-no</td>
        <td style="width: 84px">
            <asp:TextBox ID="txtenroll" runat="server" Width="177px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Enter Name</td>
        <td class="style1" style="width: 84px">
            <asp:TextBox ID="Txtname" runat="server" Width="176px" 
                contextchanged="Txtname_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Select Course</td>
        <td style="width: 84px">
            <asp:DropDownList ID="DpCourse" runat="server" Height="17px" Width="70px">
                <asp:ListItem>MCA</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>MBA</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
                <asp:ListItem>B.E</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Categroy</td>
        <td style="width: 84px">
            <asp:DropDownList ID="Dpcategory" runat="server" Height="16px" Width="70px">
                <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Enter Collage Name</td>
        <td style="width: 84px">
            <asp:TextBox ID="Txtcollage" runat="server" Width="207px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Enter Branch</td>
        <td style="width: 84px">
            <asp:DropDownList ID="Dpbranch" runat="server" Height="16px" Width="66px">
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
            <asp:DropDownList ID="Dpsem" runat="server" Height="16px" Width="67px">
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
            Enter Mobile no</td>
        <td style="width: 84px">
            <asp:TextBox ID="Txtmobile" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Enter E-mail ID</td>
        <td class="style3">
            <asp:TextBox ID="Txtemail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Button ID="BtnSave" runat="server" onclick="BtnSave_Click" Text="Ok" 
                                                     Width="121px" />
            
        </td>
    </tr>
     <tr>
        <td class="style4">
            
            
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/My Search.aspx">PURCHASE</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/MY IMAGES/book.gif" 
                NavigateUrl="~/My Sale.aspx">SALE</asp:HyperLink>
            
            
        </td>
    </tr>
    
                                              
    
</table>

</asp:Content>

