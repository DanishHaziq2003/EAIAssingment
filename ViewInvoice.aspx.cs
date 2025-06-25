using System;
using FitWellClient.FitWellProxy;

namespace FitWellClient
{
    public partial class ViewInvoice : System.Web.UI.Page
    {
        protected void btnCheckInvoice_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtMemberID.Text.Trim(), out int memberID))
            {
                var client = new WebService1SoapClient();
                string invoice = client.ViewInvoice(memberID);
                lblResult.Text = invoice;
            }
            else
            {
                lblResult.Text = "❌ Please enter a valid numeric Member ID.";
            }
        }
    }
}
