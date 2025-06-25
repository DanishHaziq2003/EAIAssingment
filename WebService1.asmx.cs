using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;


namespace FWwebservice
{

    [WebService(Namespace = "http://fitwellstudio.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]

    
    public class WebService1 : WebService
    {
        
        private static List<int> validMemberIDs = new List<int> { 123456, 234567, 345678 };

        [WebMethod]
        public int Register(string name, string email, string phone, string plany)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["FitWellDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(
                    "INSERT INTO Members (Name, Email, Phone, Plany) OUTPUT INSERTED.MemberID VALUES (@name, @email, @phone, @plany)", conn);

                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@phone", phone);
                cmd.Parameters.AddWithValue("@plany", plany);

                int newMemberID = (int)cmd.ExecuteScalar(); 
                return newMemberID;
            }
        }




       [WebMethod]
public int BookClass(int memberID, string className, string date)
{
    string connectionString = ConfigurationManager.ConnectionStrings["FitWellDB"].ConnectionString;

    using (SqlConnection conn = new SqlConnection(connectionString))
    {
        conn.Open();

      
        SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Members WHERE MemberID = @memberID", conn);
        checkCmd.Parameters.AddWithValue("@memberID", memberID);

        int count = (int)checkCmd.ExecuteScalar();
        if (count == 0)
            return -1; 


        SqlCommand validateClass = new SqlCommand("SELECT COUNT(*) FROM Schedules WHERE ClassName = @className AND ScheduleDate = @date", conn);
        validateClass.Parameters.AddWithValue("@className", className);
        validateClass.Parameters.AddWithValue("@date", date);

        int validClass = (int)validateClass.ExecuteScalar();
        if (validClass == 0)
            return -2; 

   
        SqlCommand cmd = new SqlCommand(
            "INSERT INTO Bookings (MemberID, ClassName, Date) OUTPUT INSERTED.BookingID VALUES (@memberID, @className, @date)", conn);

        cmd.Parameters.AddWithValue("@memberID", memberID);
        cmd.Parameters.AddWithValue("@className", className);
        cmd.Parameters.AddWithValue("@date", date);

        int newBookingID = (int)cmd.ExecuteScalar();
        return newBookingID;
    }
}



        [WebMethod]
        public string CancelBooking(int bookingID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["FitWellDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM Bookings WHERE BookingID = @bookingID", conn);
                cmd.Parameters.AddWithValue("@bookingID", bookingID);
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                    return "✅ Booking cancelled successfully.";
                else
                    return "❌ Booking ID not found.";
            }
        }



        [WebMethod]
        public string ViewInvoice(int memberID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["FitWellDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT Plany FROM Members WHERE MemberID = @memberID", conn);
                cmd.Parameters.AddWithValue("@memberID", memberID);
                object planObj = cmd.ExecuteScalar();

                if (planObj == null)
                    return "❌ Member not found.";

                string plan = planObj.ToString();
double amount = 0.0;

switch (plan)
{
    case "Monthly":
        amount = 100.0;
        break;
    case "Quarterly":
        amount = 270.0;
        break;
    case "Annual":
        amount = 1000.0;
        break;
    default:
        amount = 0.0;
        break;
}


                return $"💳 Invoice for Member {memberID}: RM{amount} ({plan} Plan)";
            }
        }

        [WebMethod]
        public string UpdateProfile(int memberID, string newEmail, string newPhone)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["FitWellDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("UPDATE Members SET Email = @newEmail, Phone = @newPhone WHERE MemberID = @memberID", conn);
                cmd.Parameters.AddWithValue("@newEmail", newEmail);
                cmd.Parameters.AddWithValue("@newPhone", newPhone);
                cmd.Parameters.AddWithValue("@memberID", memberID);

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                    return "✅ Profile updated successfully.";
                else
                    return "❌ Member ID not found.";
            }
        }
        [WebMethod]
        public List<string> GetClassSchedule(string fromDate, string toDate)
        {
            List<string> scheduleList = new List<string>();
            string connStr = ConfigurationManager.ConnectionStrings["FitWellDB"].ConnectionString;

         
            if (!DateTime.TryParse(fromDate, out DateTime fromDt) ||
                !DateTime.TryParse(toDate, out DateTime toDt) ||
                fromDt > toDt)
            {
                scheduleList.Add("❌ Invalid date range provided.");
                return scheduleList;
            }

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(@"
            SELECT ClassName, ScheduleDate, TimeSlot
            FROM Schedules
            WHERE ScheduleDate BETWEEN @fromDate AND @toDate
            ORDER BY ScheduleDate", conn);

                cmd.Parameters.AddWithValue("@fromDate", fromDate);
                cmd.Parameters.AddWithValue("@toDate", toDate);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string className = reader["ClassName"].ToString();
                        string date = Convert.ToDateTime(reader["ScheduleDate"]).ToString("yyyy-MM-dd");
                        string time = reader["TimeSlot"].ToString();

                        scheduleList.Add($"{className} - {date} {time}");
                    }
                }
            }

            return scheduleList;
        }





    }
}
