<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Parking Rebate System<br />
        Vehicle number:
        <asp:TextBox ID="txtVechicleNumber" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter receipt information<br />
        Receipt s/n:
        <asp:TextBox ID="txtReceiptSN" runat="server"></asp:TextBox>
        <br />
        Shop name:
        <asp:TextBox ID="txtShopName" runat="server"></asp:TextBox>
        <br />
        Amount:
        <asp:TextBox ID="txtAmount" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Button ID="btnAddReceipt" runat="server" OnClick="btnAddReceipt_Click" Text="Add receipt" />
        <br />
        <asp:GridView ID="gridReceipts" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Receipt_Sn" HeaderText="Receipt S/N" SortExpression="Receipt_Sn"/>
                <asp:BoundField DataField="Shop" HeaderText="Shop" SortExpression="Shop"/>
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount"/>
            </Columns>         
        </asp:GridView>
        <br />
        <asp:Button ID="btnApplyRebates" runat="server" Text="Apply rebates" OnClick="btnApplyRebates_Click" />
    
    </div>
    </form>
</body>
</html>
