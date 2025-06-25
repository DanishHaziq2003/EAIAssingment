using System;
using FitWellClient.FitWellProxy;

namespace FitWellClient
{
    public partial class BookClass : System.Web.UI.Page
    {
        protected void btnBook_Click(object sender, EventArgs e)
        {
            int memberID;
            if (!int.TryParse(txtMemberID.Text.Trim(), out memberID))
            {
                lblResult.Text = "❌ Please enter a valid numeric Member ID.";
                lblResult.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string className = ddlClassName.SelectedValue;
            string date = txtDate.Text;

            var client = new WebService1SoapClient();
            string response = client.BookClass(memberID, className, date);

            lblResult.Text = response;
            lblResult.ForeColor = response.StartsWith("✅") ? System.Drawing.Color.Green : System.Drawing.Color.Red;
        }
    }
}
