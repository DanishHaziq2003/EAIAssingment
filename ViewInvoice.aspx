<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewInvoice.aspx.cs" Inherits="FitWellClient.ViewInvoice" %>
<a href="FitWellDashboard.aspx" class="btn btn-link mb-3">← Back to Dashboard</a>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>FitWell - View Invoice</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body style="background-color:#f2f2f2;">
    <form id="form1" runat="server" class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 bg-white p-4 rounded shadow-sm">
                <h3 class="text-center text-primary mb-4">View Your Invoice</h3>

                <div class="form-group">
                    <label for="txtMemberID">Member ID</label>
                    <asp:TextBox ID="txtMemberID" runat="server" CssClass="form-control" />
                </div>

                <asp:Button ID="btnCheckInvoice" runat="server" Text="View Invoice" CssClass="btn btn-info btn-block" OnClick="btnCheckInvoice_Click" />
                <asp:Label ID="lblResult" runat="server" CssClass="mt-3 text-success font-weight-bold d-block" />
            </div>
        </div>
    </form>
</body>
</html>
