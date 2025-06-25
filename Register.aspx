<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FitWellClient.Register" %>
<a href="FitWellDashboard.aspx" class="btn btn-link mb-3">← Back to Dashboard</a>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>FitWell - Register</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body style="background-color:#f2f2f2;">
    <form id="form1" runat="server" class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 bg-white p-4 rounded shadow-sm">
                <h3 class="text-center text-primary mb-4">FitWell Member Registration</h3>

                <div class="form-group">
                    <label for="txtName">Full Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtPhone">Phone Number</label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="ddlPlan">Select Plan</label>
                    <asp:DropDownList ID="ddlPlan" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Monthly" Value="Monthly" />
                        <asp:ListItem Text="Quarterly" Value="Quarterly" />
                        <asp:ListItem Text="Annual" Value="Annual" />
                    </asp:DropDownList>
                </div>

                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn btn-success btn-block" />
<asp:Label ID="lblMessage" runat="server" CssClass="mt-3 text-success font-weight-bold d-block" />
<asp:Label ID="lblMemberID" runat="server" CssClass="text-primary font-weight-bold d-block" />


                <asp:Label ID="lblResult" runat="server" CssClass="mt-3 font-weight-bold d-block" />
            </div>
        </div>
    </form>
</body>
</html>
