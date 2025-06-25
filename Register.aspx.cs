using FitWellClient.FitWellProxy; 
using System;
using System.Text.RegularExpressions;


namespace FitWellClient
{
    public partial class Register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string plany = ddlPlan.SelectedValue;

            var client = new WebService1SoapClient();
            int newMemberId = client.Register(name, email, phone, plany); 

            lblMessage.Text = "✅ Registration successful!";
            lblMemberID.Text = $"Your Member ID is: <strong>{newMemberId}</strong>";
        }
    }
}