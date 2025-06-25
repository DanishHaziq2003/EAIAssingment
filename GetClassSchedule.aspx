<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetClassSchedule.aspx.cs" Inherits="FitWellClient.GetClassSchedule" %>
<a href="FitWellDashboard.aspx" class="btn btn-link mb-3">← Back to Dashboard</a>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Class Schedule</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server" class="container mt-5">
        <h3>Get Class Schedule</h3>
        <div class="form-group">
            <label for="txtFrom">From Date</label>
            <asp:TextBox ID="txtFrom" runat="server" TextMode="Date" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="txtTo">To Date</label>
            <asp:TextBox ID="txtTo" runat="server" TextMode="Date" CssClass="form-control" />
        </div>
        <asp:Button ID="btnSchedule" runat="server" Text="Get Schedule" CssClass="btn btn-info" OnClick="btnSchedule_Click" />
        <asp:BulletedList ID="bltSchedule" runat="server" CssClass="mt-3" />
    </form>
</body>
</html>
