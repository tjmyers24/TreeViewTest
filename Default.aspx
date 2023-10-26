<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="TreeViewTesting._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hello, World!</h1>
            <p>Welcome to Beginning ASP.NET 3.5 on <%= DateTime.Now.ToString() %></p>
            <asp:Panel runat="server" ID="pnlProjectVB" BorderStyle="Solid" BorderColor="Black">
                <asp:TreeView runat="server" ID="tvProjectVB" BackColor="Black" NodeStyle-ForeColor="Yellow" OnTreeNodePopulate="tvProjectVB_TreeNodePopulate">
                    <Nodes>

<%--                        <asp:TreeNode
                            Value="100"
                            Text="Bofa"
                            SelectAction="Expand"
                            Expanded="false">
                            <asp:TreeNode
                                Value="110"
                                Text="Deez"
                                Expanded="false">
                                <asp:TreeNode
                                    Value="111"
                                    Text="Nuts">
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </asp:TreeNode>

                        <asp:TreeNode
                            Value="200"
                            Text="Grabbin"
                            SelectAction="Expand"
                            Expanded="false">
                            <asp:TreeNode
                                Value="210"
                                Text="Deez"
                                Expanded="false">
                                <asp:TreeNode
                                    Value="211"
                                    Text="Nuts">
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </asp:TreeNode>--%>

                        <asp:TreeNode
                            Value="100"
                            Text="Sugan"
                            SelectAction="Expand"
                            Expanded="false"
                            PopulateOnDemand="true">
                        </asp:TreeNode>

                    </Nodes>
                </asp:TreeView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
