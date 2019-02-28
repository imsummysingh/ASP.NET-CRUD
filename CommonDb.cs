using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BasicWeb
{
    public class CommonDb
    {
        static string conString = ConfigurationManager.ConnectionStrings["Dbconnection"].ToString();
        SqlConnection con = new SqlConnection(conString);
        public void RegisterUser(int ID, string FirstName, string MiddleName, string LastName, string DOB, string Gender, string Nationality, 
            string Email, string Mobile, string P1, string P2, string P3, string Password, string ConfirmPassword, string Action)
        {
            string conString = ConfigurationManager.ConnectionStrings["Dbconnection"].ToString();
            SqlConnection con = new SqlConnection(conString);
            con.Open();

            SqlCommand cmd = new SqlCommand("StoreP", con);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;


            cmd.Parameters.AddWithValue("@ID", ID);
            cmd.Parameters.AddWithValue("@FirstName", FirstName);
            cmd.Parameters.AddWithValue("@MiddleName", MiddleName);
            cmd.Parameters.AddWithValue("@LastName", LastName);
            cmd.Parameters.AddWithValue("@DOB", DOB);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@Nationality", Nationality);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Mobile", Mobile);
            cmd.Parameters.AddWithValue("@P1", P1);
            cmd.Parameters.AddWithValue("@P2", P2);
            cmd.Parameters.AddWithValue("@P3", P3);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@ConfirmPassword", ConfirmPassword);
            cmd.Parameters.AddWithValue("@Action", Action);

            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable GetDisplay(int ID)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SelectStoreP";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);
            //SqlDataAdapter adp = new SqlDataAdapter("SelectStoreP", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            return dt;
        }
    }
}