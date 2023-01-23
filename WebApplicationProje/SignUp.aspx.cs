using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplicationProje
{
    public partial class SignUp : System.Web.UI.Page
    {
        String getName;
        String getPassword;
        String getDate;
        String getCountry;
        String getCity;
        String getPhone;
        String getEmail;
        String getType;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            getName = txtCompanyName.Text.Trim();
            getPassword = txtPassword.Text.Trim();
            getDate = txtDate.Text.Trim();
            getCountry = txtCountry.Text.Trim();
            getCity = txtCity.Text.Trim();
            getPhone = txtPhone.Text.Trim();
            getEmail = txtEmail.Text.Trim();
            int result = 0;
            string constr = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=CompanyInformation;Integrated Security=True";
            SqlConnection connection = new SqlConnection(constr);
            connection.Open();
            if (connection.State == ConnectionState.Open)
            {
                SqlCommand command = new SqlCommand("INSERT INTO Companies (CompanyName,Password,CompanyEstablishmentDate,CompanyCountry,CompanyCity,CompanyPhone,CompanyEmail,CompanyType)" + "VALUES('" + getName + "','" + getPassword +
                    "','" + getDate + "','" + getCountry + "','" + getCity + "','" + getPhone + "','" + getEmail + "','" + getType + "')", connection);
                result = command.ExecuteNonQuery();
                connection.Close();
            }
            if (result > 0)
            {
                lblMessage.Text = "Registration successful. You will be redirected to home page in 5 seconds.";
                lblMessage.Style.Add("color", "blue");
                MyTable.Style.Add("display", "none");
                Response.AddHeader("REFRESH", "5;URL=Home.html");
            }
            else
            {
                lblMessage.Text = "Sorry, your registration attempt was unsuccessful. Please, try again.";
                lblMessage.Style.Add("color", "red");
            }
        }

        protected void LoginPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}