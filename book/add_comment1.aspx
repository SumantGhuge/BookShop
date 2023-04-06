<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_comment1.aspx.cs" Inherits="add_comment1"  validateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 24px;
            width: 80px;
        }
        .auto-style2 {
            height: 23px;
            width: 566px;
        }
        .auto-style4 {
            height: 22px;
            width: 566px;
        }
        .auto-style5 {
            height: 22px;
            width: 80px;
        }
        .auto-style6 {
            width: 222px;
        }
        .auto-style7 {
            height: 22px;
            width: 222px;
        }
        .auto-style8 {
            height: 35px;
            width: 566px;
        }
        .auto-style9 {
            width: 222px;
            height: 35px;
        }
        .auto-style10 {
            height: 35px;
            width: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    



        <div class="formDesign">
                <table style="width: 60%;" border="0" class="auto-style6">
                    <tr>
                        <td class="auto-style1">Name</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtName" runat="server" Width="244px" BackColor="#FF9999" BorderColor="#CC99FF">Name</asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please Provide Name" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Email</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtEmail" runat="server" Width="252px" BackColor="#FFFFCC" ForeColor="#CC99FF">example@xyz.com</asp:TextBox>
                        </td>
                        <td class="auto-style7">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please Provide Email" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email ID is Incorrect" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Comment</td>
                        <td class="auto-style8" colspan="0">
                            <asp:TextBox ID="txtComment" runat="server" Height="71px" TextMode="MultiLine" Width="433px" BackColor="#CCFFFF" ForeColor="#CC99FF">Here</asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComment" ErrorMessage="Please Provide Comment" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="btn_Submit" runat="server" Text="Post Comment" OnClick="btn_Submit_Click" CssClass="buttonSubmit" BackColor="White" ForeColor="Maroon" />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home Page" Width="175px" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                </table>
            </div>
            <h4 style="text-decoration:underline;">Comments:</h4>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="commentbox">
                        <b>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name") %>'>'></asp:Label></b>&nbsp;(<asp:Label ID="Label2" runat="server" Text='<%#Eval("Email") %>'>'></asp:Label>):<br />
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Comment") %>'></asp:Label><br />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div style="overflow: hidden;">
                <asp:Repeater ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnPage"
                            Style="padding: 8px; margin: 2px; background: #007acc; border: solid 1px blue; font: 8px;"
                            CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                            runat="server" ForeColor="White" Font-Bold="True" CausesValidation="false"><%# Container.DataItem %>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:Repeater>
            </div>






    </div>
    </form>
</body>
</html>
