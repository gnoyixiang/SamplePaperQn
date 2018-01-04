using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string vehicleNumber = Request.QueryString["vehNum"];
        if (vehicleNumber != null)
        {
            gridReceipts.DataSource = (List<Receipt>)Application[vehicleNumber + ",receipts"];
            gridReceipts.DataBind();
        }

    }
}