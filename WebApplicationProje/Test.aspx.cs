using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Drawing;

namespace WebApplicationProje
{

    public partial class Test : System.Web.UI.Page
    {
        Sqlclass con = new Sqlclass();

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnTest_Click(object sender, EventArgs e)
        {
            T1047();
        }
        protected void btnTest2_Click(object sender, EventArgs e)
        {
            T1518();
        }
        public void T1518()
        {
            Process.Start(@"C:\Windows\System32\cmd.exe", "/c D: & reg query \"HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Internet Explorer\" /v svcVersion >>result.txt");
            SaveAttackDatabase("T1518");
        }
        public void T1047()
        {
            Process.Start(@"cmd.exe", "/c D: & wmic useraccount get /ALL /format:csv  >>result.txt");
            SaveAttackDatabase("T1047");
        }
        public int SaveAttackDatabase(string AttackID)
        {
            //string CompanyName=getCompany();
            string testResult = null;

            while (true)
            {
                testResult = File.ReadAllText(@"D://result.txt");
                File.Delete(@"D://result.txt");
                break;
            }

            int result = 0;
            string connectionString = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=CompanyInformation;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            if (connection.State == ConnectionState.Open)
            {
                SqlCommand command = new SqlCommand("INSERT INTO Attacks ( AttackID,AttackResult)" + "VALUES('" + AttackID + "', '" + testResult + "')", connection);
                result = command.ExecuteNonQuery();
            }
            return result;
        }

        protected void testResult_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Attacks", con.connection());
            SqlDataReader reader = command.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }
        //public string getCompany()
        //{
        //    string connectionString = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=CompanyInformation;Integrated Security=True";
        //    SqlConnection connection = new SqlConnection(connectionString);
        //    connection.Open();
        //    DataTable dtCourse = new DataTable();

        //    if (connection.State == ConnectionState.Open)
        //    {
        //        SqlDataAdapter adapter = new SqlDataAdapter("SELECT CompanyName, FROM Companies WHERE CompanyName: " + + , connection);
        //        adapter.Fill(dtCourse);
        //    }
        //    return dtCourse;
        //}
    }
}