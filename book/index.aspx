<%@ Page Title="" Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Image ID="Image1" runat="server" Height="305px" ImageUrl="~/MY IMAGES/bookcondition.png" Width="496px" />

    <marquee direction="Left" heigth="100" onMouseOver="this.stop()" onMouseOut="this.start()" style="width: 238px; height: 241px; margin-top: 14px; margin-right: 31px;">
      <asp:HyperLink ID="HyperLink1" runat="server" 
                                                        ImageUrl="~/MY IMAGES/Library.jpg" NavigateUrl="~/My Information.aspx">HyperLink</asp:HyperLink>
      <asp:TextBox ID="TextBox1" runat="server" Height="22px" ReadOnly="True" 
                                                        Width="100px">Subscribe For Latest Books</asp:TextBox>
       <img src="MY IMAGES/MCA Book1.JPG"  alt="1" width="110px" />       
       <br />
       <img src="MY IMAGES/MBA Book.JPG"  alt="1" width="110px" />
       <br />
       <img src="MY IMAGES/B.E 3.JPG"  alt="1" width="110px" />    
        <br /></marquee>
    &nbsp;
    </asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div _designerregion="0">
        <asp:Image ID="Image2" runat="server" Height="170px" ImageUrl="~/MY IMAGES/33.jpg" Width="225px" />
    </div>
</asp:Content>

