<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookClass.aspx.cs" Inherits="FitWellClient.BookClass" %>
<a href="FitWellDashboard.aspx" class="btn btn-link mb-3">← Back to Dashboard</a>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FitWell - Book Class</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body style="background-color:#f8f9fa;">
    <form id="form1" runat="server" class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 bg-white p-4 shadow rounded">
                <h3 class="text-center mb-4 text-primary">Book a Fitness Class</h3>

                <div class="form-group">
                    <label for="txtMemberID">Member ID</label>
                    <asp:TextBox ID="txtMemberID" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="ddlClassName">Class Name</label>
                    <asp:DropDownList ID="ddlClassName" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Yoga" Value="Yoga" />
                        <asp:ListItem Text="Kickboxing" Value="Kickboxing" />
                        <asp:ListItem Text="Muay Thai" Value="MuayThai" />
                        <asp:ListItem Text="Pilates" Value="Pilates" />
                        <asp:ListItem Text="Bodybuilding" Value="Bodybuilding" />
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="txtDate">Date</label>
                    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" TextMode="Date" />
                </div>

                <asp:Button ID="btnBook" runat="server" Text="Book Class" OnClick="btnBook_Click" CssClass="btn btn-primary btn-block" />
                <asp:Label ID="lblResult" runat="server" CssClass="d-block mt-3 font-weight-bold" />
            </div>
        </div>
    </form>
</body>
</html>
