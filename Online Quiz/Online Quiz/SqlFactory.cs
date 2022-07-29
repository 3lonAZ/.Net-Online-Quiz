using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public class SqlFactory
    {
        public static string connectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString;
            }
        }
        public static int QueryCount;
        public void SelectAllData()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand("Select *from query", connection);
            var reader = command.ExecuteReader();
            while (reader.Read())
            {
                Variants.Id.Add((int)reader["Id"]);
                Variants.Query.Add(reader["Query"].ToString());
                Variants.A.Add(reader["A"].ToString());
                Variants.B.Add(reader["B"].ToString());
                Variants.C.Add(reader["C"].ToString());
                Variants.D.Add(reader["D"].ToString());
                Variants.True_Variant.Add(char.Parse(reader["True_Variant"].ToString()));
            }
            QueryCount = Variants.Id.Count - 1;
            connection.Close();
        }
        public void DelSelectedID(int Id)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand($"Delete from query where Id={Id}", connection);
            command.ExecuteNonQuery();
            connection.Close();
        }
        public void InsertQuery(string query,string variant_A, string variant_B, string variant_C, string variant_D, char True_Variant)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand($"Insert Into query Values(N'{query}',N'{variant_A}',N'{variant_B}',N'{variant_C}',N'{variant_D}','{True_Variant}')", connection);
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static DataTable QuizDB()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand("Select *from query", connection);
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = command;
            DataTable table = new DataTable();
            adapter.Fill(table);
            connection.Close();

            return table;
        }
        public void DeleteFromDB()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand("TRUNCATE TABLE query",connection);
            command.ExecuteNonQuery();
            connection.Close();
        }

        public DataTable RefreshData()
        {
            return QuizDB();
        }
        public static void SelectDataById()
        {
            var id = Operations.Id;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand($"Select *from query where Id={id}", connection);
            var reader = command.ExecuteReader();
            while (reader.Read())
            {
                Operations.Query = reader["Query"].ToString();
                Operations.A = reader["A"].ToString();
                Operations.B = reader["B"].ToString();
                Operations.C = reader["C"].ToString();
                Operations.D = reader["D"].ToString();
                Operations.True_Variant = char.Parse(reader["True_Variant"].ToString());
            }
            connection.Close();
        }
        public void UpdateQuery(int id,string query, string variant_A, string variant_B, string variant_C, string variant_D, char True_Variant)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand($"Update query set Query=N'{query}',A=N'{variant_A}',B=N'{variant_B}',C=N'{variant_C}',D=N'{variant_D}',True_Variant='{True_Variant}' where Id={id}", connection);
            command.ExecuteNonQuery();
            connection.Close();
        }
       
        public bool AdminLog(string admin, string password)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand($"Select *from admindb where Admin='{admin}' and password='{password}'", connection);
            var status = command.ExecuteScalar();
            connection.Close();
            if (status != null)
                return true;
            else
                return false;
        }
    }
}