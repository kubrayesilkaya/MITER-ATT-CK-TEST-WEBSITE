using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Optimization;

namespace WebApplicationProje
{
    public partial class Contact : System.Web.UI.Page
    {
        private String getEmail;
        private String getTextMessage;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            getEmail = txtEmail.Text.Trim();
            getTextMessage = txtMessage.Text.Trim();
            int result = 0;
            string constr = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=CompanyInformation;Integrated Security=True";
            SqlConnection connection = new SqlConnection(constr);
            connection.Open();
            if (connection.State == ConnectionState.Open)
            {
                SqlCommand command = new SqlCommand("INSERT INTO Complaint ( Email,Message)" + "VALUES('" + getEmail + "','" + getTextMessage + "')", connection);
                result = command.ExecuteNonQuery();
                connection.Close();
            }
            if (result > 0)
            {
                labelMessage.Text = "We got your message.We will get back to you as soon as possible. ";
                labelMessage.Style.Add("color", "#F75B00");
                leftArea.Style.Add("display", "none");
                lblTitle.Style.Add("display", "none");
                Response.AddHeader("REFRESH","4,Contact.aspx");
            }
            else
            {
                labelMessage.Text = "Sorry, we cannot get your message. Please, try again.";
                labelMessage.Style.Add("color", "#F75B00");
                leftArea.Style.Add("display", "none");
                Response.AddHeader("REFRESH", "4,Contact.aspx");
            }
        }
    }
}