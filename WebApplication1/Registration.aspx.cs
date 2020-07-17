using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Text = String.Empty;
            txtPassword.Text = String.Empty;
            txtRePass.Text = String.Empty;
            txtEmail.Text = String.Empty;
            rdbGender.SelectedIndex = 0;
            ddlCountry.SelectedIndex = 0;
            ddlUserType.SelectedIndex = 0;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "select count(*) from UserRegistration where email ='" + txtEmail.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (check > 0)
                {
                    Response.Write("<script type=\"text/javascript\">alert('Email already exist.');</script>");

                }
                else
                {
                    string query1 = "insert into UserRegistration (username, password, repass, email, gender, country, usertype) values (@uname, @pword, @repass, @email, @gender,@country, @usertype)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@uname", txtUsername.Text);
                    cmd1.Parameters.AddWithValue("@pword", txtPassword.Text);
                    cmd1.Parameters.AddWithValue("@repass", txtRePass.Text);
                    cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@gender", rdbGender.Text);
                    cmd1.Parameters.AddWithValue("@country", ddlCountry.Text);
                    cmd1.Parameters.AddWithValue("@usertype", ddlUserType.Text);
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script type=\"text/javascript\">alert('Registration Successful.');</script>");
                    Response.Redirect("Home.aspx");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void rdbGender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}