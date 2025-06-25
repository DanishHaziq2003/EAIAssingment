using System;
using FitWellClient.FitWellProxy;

namespace FitWellClient
{
    public partial class GetClassSchedule : System.Web.UI.Page
    {
        protected void btnSchedule_Click(object sender, EventArgs e)
        {
            var client = new WebService1SoapClient();
            string from = txtFrom.Text;
            string to = txtTo.Text;

            var schedule = client.GetClassSchedule(from, to);
            bltSchedule.Items.Clear();

            foreach (var item in schedule)
            {
                bltSchedule.Items.Add(item);
            }
        }
    }
}
