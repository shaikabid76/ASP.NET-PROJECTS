using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace persondetailsinsert
{
    public class person
    {
     
        public string Firstname { get; set; }
        public String Lastname { get; set; }
        public string City { get; set; }
        public string Email { get; set; }
       
        public int insert_rec(person emp)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ("Server=DESKTOP-76FMNAQ; database=newdb;integrated Security=true");
            SqlCommand insertcmd = new SqlCommand();
            insertcmd.Connection = conn;
            insertcmd.CommandType = CommandType.StoredProcedure;
            insertcmd.Parameters.AddWithValue("@firstname", emp.Firstname);
            insertcmd.Parameters.AddWithValue("@lastname", emp.Lastname);
            insertcmd.Parameters.AddWithValue("@city", emp.City);
            insertcmd.Parameters.AddWithValue("@email", emp.Email);
            insertcmd.CommandText = "insertperson";
            conn.Open();
            int rowcount = insertcmd.ExecuteNonQuery();
            conn.Close();
            return rowcount;
        }
        public List<person> getdetails()
        {
            SqlConnection conn = new SqlConnection("server=DESKTOP-76FMNAQ;database=newdb;integrated security=true");
            SqlCommand selectcmd = new SqlCommand();
            selectcmd.Connection = conn;
            selectcmd.CommandType = CommandType.StoredProcedure;
            selectcmd.CommandText = "detais";
            SqlDataReader reader;
            conn.Open();
            reader = selectcmd.ExecuteReader();
            List<person> employeelist = new List<person>();
            if (reader.HasRows)
            {
                while (reader.Read())

                {
                    person emp = new person();
                    emp.Firstname = reader[0].ToString();
                    emp.Lastname = reader[1].ToString();
                    emp.City = reader[2].ToString();
                    emp.Email = reader[3].ToString();
                    employeelist.Add(emp);

                }
            }

            conn.Close();
            Console.ReadKey();
            return employeelist;
        }

    }
}
