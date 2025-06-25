<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="FitWellClient.UpdateProfile" %>
<a href="FitWellDashboard.aspx" class="btn btn-link mb-3">← Back to Dashboard</a>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Update Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server" class="container mt-5">
        <h3>Update Your Profile</h3>
        <div class="form-group">
            <label for="txtMemberID">Member ID</label>
            <asp:TextBox ID="txtMemberID" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="txtEmail">New Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="txtPhone">New Phone</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
        </div>
        <asp:Button ID="btnUpdate" runat="server" Text="Update Profile" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
        <asp:Label ID="lblResult" runat="server" CssClass="d-block mt-3 font-weight-bold" />
    </form>
</body>
</html>
