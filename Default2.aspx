<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ PreviousPageType VirtualPath="~/Default.aspx" %> 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="gridReceipts" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Receipt_Sn" HeaderText="Receipt S/N" SortExpression="Receipt_Sn" />
                <asp:BoundField DataField="Shop" HeaderText="Shop" SortExpression="Shop" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
