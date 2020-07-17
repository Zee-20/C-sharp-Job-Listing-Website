using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (txtUsername.Text == "" || txtPassword.Text == "")
            {
                Response.Write("<Script type=\"text/javascript\">alert('Fields cannot be empty');</script>");
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from UserRegistration where username = '" + txtUsername.Text 
                + "' and password = '" + txtPassword.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());

           

            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select usertype from UserRegistration where username = '" + txtUsername.Text + "'", con);
                string uType = cmdType.ExecuteScalar().ToString().Replace(" ", "");
                Session["usertype"] = uType;
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Login Failed!";
            }
            con.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Text = String.Empty;
            txtPassword.Text = String.Empty;
        }

        protected void newuserbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}