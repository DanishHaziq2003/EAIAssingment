<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FitWellDashboard.aspx.cs" Inherits="FitWellClient.FitWellDashboard" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>FitWell Member Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .dashboard-card {
            transition: transform 0.2s ease-in-out;
        }

        .dashboard-card:hover {
            transform: scale(1.03);
        }

        body {
            background-color: #f8f9fa;
        }

        h2.dashboard-title {
            background-color: #00888a; 
            color: white;
            padding: 20px;
            text-align: center;
            margin-bottom: 30px;
            border-radius: 5px;
        }

        .btn-turquoise {
            background-color: #00888a;
            color: white;
        }

        .btn-turquoise:hover {
            background-color: #00b4b7;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="dashboard-title">🏋️ FitWell Member Dashboard</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card dashboard-card shadow-sm">
                        <div class="card-body text-center">
                            <h5 class="card-title">Register</h5>
                            <p class="card-text">Sign up as a new member.</p>
                            <a href="Register.aspx" class="btn btn-turquoise">Go to Register</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card dashboard-card shadow-sm">
                        <div class="card-body text-center">
                            <h5 class="card-title">Book Class</h5>
                            <p class="card-text">Reserve your fitness class spot.</p>
                            <a href="BookClass.aspx" class="btn btn-turquoise">Book Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card dashboard-card shadow-sm">
                        <div class="card-body text-center">
                            <h5 class="card-title">Cancel Booking</h5>
                            <p class="card-text">Cancel an existing class booking.</p>
                            <a href="CancelBooking.aspx" class="btn btn-turquoise">Cancel</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card dashboard-card shadow-sm">
                        <div class="card-body text-center">
                            <h5 class="card-title">View Invoice</h5>
                            <p class="card-text">Check your current membership fee.</p>
                            <a href="ViewInvoice.aspx" class="btn btn-turquoise">View Invoice</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card dashboard-card shadow-sm">
                        <div class="card-body text-center">
                            <h5 class="card-title">Update Profile</h5>
                            <p class="card-text">Edit your email or phone number.</p>
                            <a href="UpdateProfile.aspx" class="btn btn-turquoise">Update</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card dashboard-card shadow-sm">
                        <div class="card-body text-center">
                            <h5 class="card-title">Class Schedule</h5>
                            <p class="card-text">View upcoming classes.</p>
                            <a href="GetClassSchedule.aspx" class="btn btn-turquoise">Schedule</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
