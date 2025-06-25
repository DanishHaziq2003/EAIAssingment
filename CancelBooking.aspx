<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelBooking.aspx.cs" Inherits="FitWellClient.CancelBooking" %>
<a href="FitWellDashboard.aspx" class="btn btn-link mb-3">← Back to Dashboard</a>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Cancel Booking</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server" class="container mt-5">
        <h3>Cancel Your Booking</h3>
        <div class="form-group">
            <label for="txtBookingID">Booking ID</label>
            <asp:TextBox ID="txtBookingID" runat="server" CssClass="form-control" />
        </div>
        <asp:Button ID="btnCancel" runat="server" Text="Cancel Booking" CssClass="btn btn-danger" OnClick="btnCancel_Click" />
        <asp:Label ID="lblResult" runat="server" CssClass="d-block mt-3 font-weight-bold" />
    </form>
</body>
</html>

