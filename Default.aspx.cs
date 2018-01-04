using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddReceipt_Click(object sender, EventArgs e)
    {
        Receipt receipt = new Receipt(txtReceiptSN.Text, txtShopName.Text, double.Parse(txtAmount.Text));
        List<Receipt> receipts = new List<Receipt>();
        if (ViewState["receipts"] != null)
        {
            receipts = (List<Receipt>) ViewState["receipts"];
        }
        receipts.Add(receipt);
        ViewState["receipts"] = receipts;
        gridReceipts.DataSource = receipts;
        gridReceipts.DataBind();
    }

    protected void btnApplyRebates_Click(object sender, EventArgs e)
    {
        if (ViewState["receipts"] != null)
        {
            Application[txtVechicleNumber.Text + ",receipts"] = ViewState["receipts"];
        }
        
        Response.Redirect("Default2.aspx?vehNum=" + txtVechicleNumber.Text);
    }
}
