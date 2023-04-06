<%@ Page Title="" Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="Data_Details_sql.aspx.cs" Inherits="Data_Details_sql" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<body>
<div>
Enter Course:<asp:TextBox ID="txtSearch" runat="server" />
<asp:Button ID="btnsearch" Text="Search" runat="server" onclick="btnsearch_Click" />
<br /><br />
<asp:GridView ID="gvDetails" CellPadding="5" runat="server" EnableModelValidation="True">
<HeaderStyle BackColor="#DF5015" Font-Bold="true" ForeColor="White" />
</asp:GridView>
</div>

</body>
</asp:Content>

