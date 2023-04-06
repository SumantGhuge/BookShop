<%@ Page Title="" Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="customer_blog.aspx.cs" Inherits="customer_blog" validateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Add" CommandName = "Footer" Width="106px" />

    <asp:Label ID="Label1" runat="server"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" Width="654px" AutoGenerateColumns="false"
    AlternatingRowStyle-BackColor="#C2D69B" HeaderStyle-BackColor="green" ShowFooter="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="168px" style="margin-bottom: 0px">
    <Columns>
<asp:TemplateField HeaderText="customer_id">
            <ItemTemplate>
                <%# Eval("customer_id") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtcustomer_id" runat="server" />
            </FooterTemplate>
            </asp:TemplateField>  
      
                <asp:TemplateField HeaderText="customer_title">
            <ItemTemplate>
                <%# Eval("customer_title") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtcustomer_title" runat="server" />
            </FooterTemplate>
            </asp:TemplateField>
        
            <asp:TemplateField HeaderText="customer_blog">
            <ItemTemplate>
                <%# Eval("customer_blog") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtcustomer_blog" runat="server"></asp:TextBox>
            </FooterTemplate>
            </asp:TemplateField>

           
    </Columns>
    <AlternatingRowStyle BackColor="#C2D69B" />
    <EmptyDataTemplate>
        <tr style="background-color: Green;">
            <th scope="col">
                customer_title
            </th>
            <th scope="col">
                customer_id
            </th>
            <th scope="col">
                customer_blog
            </th>
            <th scope="col">
                   
            </th>
        
            <td>
                <asp:TextBox ID="TextBox1" runat="server" />
            </td>

            <td>
                <asp:TextBox ID="TextBox2" runat="server" />
            </td>
            
            <td>
                <asp:TextBox ID="TextBox3" runat="server" ForeColor="#FF99FF" BackColor="#CC66FF" />

            </td>
            
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Add" CommandName = "EmptyDataTemplate" />
                
            </td>
            
        </tr>
    </EmptyDataTemplate>
</asp:GridView>



    



</asp:Content>

