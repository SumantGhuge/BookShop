<%@ Page Title="" Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="blog_comment.aspx.cs" Inherits="blog_comment" validateRequest="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

    <script type="text/javascript" src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
<script type="text/javascript">
    tinymce.init({ selector: 'textarea', width: 500 });
</script>
<asp:TextBox ID="txtHTMLContent" runat="server" TextMode="MultiLine"/>
<br />
<asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="Submit" />



</asp:Content>

