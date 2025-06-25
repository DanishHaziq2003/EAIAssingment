using System;
using FitWellClient.FitWellProxy;

namespace FitWellClient
{
    public partial class CancelBooking : System.Web.UI.Page
    {
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtBookingID.Text.Trim(), out int bookingID))
            {
                var client = new WebService1SoapClient();
                string result = client.CancelBooking(bookingID);
                lblResult.Text = result;
            }
            else
            {
                lblResult.Text = "❌ Please enter a valid Booking ID.";
            }
        }
    }
}
