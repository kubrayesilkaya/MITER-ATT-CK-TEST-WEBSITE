using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplicationProje
{
    public class Sqlclass
    {
        public SqlConnection connection()
        {
            string connectionString = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=CompanyInformation;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            return connection;

        }
    }
}