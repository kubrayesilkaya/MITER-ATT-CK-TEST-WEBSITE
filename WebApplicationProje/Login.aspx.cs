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
    public partial class Login : System.Web.UI.Page
    {
        private static bool remembered = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["CompanyName"] != null && Request.Cookies["Password"] != null)
                {
                    Response.Redirect("Home.html");
                }
            }

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string getCompanyName = txtCompanyName.Text;
            string getPassword = txtPassword.Text;

            if (txtCompanyName.Text == "" || txtPassword.Text == "")
            {
                Label.Text = "User name or Password cannot be left blank. ";
                return;
            }

            string connectionString = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=CompanyInformation;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlDataAdapter User = new SqlDataAdapter();
            SqlCommand selectUser = new SqlCommand("SELECT CompanyName, Password FROM Companies WHERE CompanyName=@CompanyName");
            selectUser.Connection = conn;
            selectUser.Parameters.AddWithValue("@CompanyName", txtCompanyName.Text);
            User.SelectCommand = selectUser;
            DataSet UserDS = new DataSet();
            UserDS.Clear();
            User.Fill(UserDS);
            if (UserDS.Tables[0].Rows.Count == 0)
            {
                Label.Text = "The user cannot be found.";

                return;
            }
            string uPassword = UserDS.Tables[0].Rows[0]["Password"].ToString();

            if (uPassword == txtPassword.Text)
            {

                if (remember.Checked)
                {
                    Response.Cookies["CompanyName"].Value = txtCompanyName.Text;
                    Response.Cookies["Password"].Value = txtPassword.Text;
                    Response.Cookies["CompanyName"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(1);
                    conn.Close();
                }
                else
                {
                    Response.Cookies["CompanyName"].Expires = DateTime.Now.AddMinutes(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(-1);
                }

                Response.Redirect("Home.html");

            }
            else
            {
                Label.Text = "Your password is incorrect.";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("SignUp.aspx");
        }


    }
}