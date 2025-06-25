using System;
using FitWellClient.FitWellProxy;

namespace FitWellClient
{
    public partial class UpdateProfile : System.Web.UI.Page
    {
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtMemberID.Text.Trim(), out int memberID))
            {
                string email = txtEmail.Text.Trim();
                string phone = txtPhone.Text.Trim();

                var client = new WebService1SoapClient();
                string result = client.UpdateProfile(memberID, email, phone);

                lblResult.Text = result;
            }
            else
            {
                lblResult.Text = "❌ Invalid Member ID.";
            }
        }
    }
}
