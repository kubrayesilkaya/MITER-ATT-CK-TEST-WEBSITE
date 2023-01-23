using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationProje
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string newCompanyName = txtCompanyName.Text;
            string newPassword = txtPassword.Text;
            string newPhone = txtPhone.Text;
            string newEmail = txtEmail.Text;
            string connectionString = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=CompanyInformation;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = new SqlCommand("UPDATE Companies set CompanyName=@Name, Password=@Password, CompanyPhone=@Phone, CompanyEmail=@Email FROM Companies WHERE CompanyName=@CompanyName", conn);

            com.Parameters.AddWithValue("@Name", newCompanyName);
            com.Parameters.AddWithValue("@Password", newPassword);
            com.Parameters.AddWithValue("@Phone", newPhone);
            com.Parameters.AddWithValue("@Email", newEmail);
            com.Parameters.AddWithValue("@CompanyName", User.Identity.Name);
            com.ExecuteNonQuery();
            conn.Close();

        }
    }
}