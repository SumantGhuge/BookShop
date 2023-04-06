<%@ Page Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="My Search.aspx.cs" Inherits="My_Search" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 573px;
        }
        .auto-style5 {
            width: 101px;
        }
        .auto-style6 {
            width: 441px;
        }
        .auto-style7 {
            width: 230px;
        }
        .auto-style8 {
            height: 172px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="728px">
     
      <table border="1px" width="70%">
        <tr>
            <td class="auto-style5"><strong>Select Course</strong></td>
            <td class="auto-style6">
                <asp:DropDownList runat="server" ID="dpc" Height="16px" 
                    onselectedindexchanged="dpc_SelectedIndexChanged" Width="81px" style="font-weight: 700">
                    <asp:ListItem>MCA</asp:ListItem>
                    <asp:ListItem>B.E</asp:ListItem>
                    <asp:ListItem>M.Tech</asp:ListItem>
                    <asp:ListItem>MBA</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="66px" style="font-weight: 700">
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II</asp:ListItem>
                    <asp:ListItem>III</asp:ListItem>
                    <asp:ListItem>IV</asp:ListItem>
                    <asp:ListItem>V</asp:ListItem>
                    <asp:ListItem>VI</asp:ListItem>
                    <asp:ListItem>VII</asp:ListItem>
                    <asp:ListItem>VIII</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="93px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="font-weight: 700">
                    <asp:ListItem>MCA</asp:ListItem>
                    <asp:ListItem>CA</asp:ListItem>
                    <asp:ListItem>EC</asp:ListItem>
                    <asp:ListItem>CS</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                    <asp:ListItem>EE</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>Marketing </asp:ListItem>
                </asp:DropDownList>
                
            </td>
            <td class="auto-style7">
                <asp:Button runat="server" ID="btnshow" Text="Show" Width="99px" 
                    onclick="btnshow_Click" style="font-weight: 700" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                

            </td>
            </tr>
        <tr>
            <td colspan="3" class="auto-style8">
                <asp:GridView ID="dglist" runat="server" Width="698px" Height="87px">
                </asp:GridView>
                <asp:Button ID="Button1" runat="server" BackColor="#00FF99" ForeColor="Black" Height="33px" OnClick="Button1_Click" style="font-weight: 700" Text="Add Blog" Width="525px" />
                <br />
            </td>
        </tr>
      </table>
    
    </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bookcon %>" 
                    
        SelectCommand="SELECT DISTINCT [sem], [course], [branch] FROM [student]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            </asp:Content>

