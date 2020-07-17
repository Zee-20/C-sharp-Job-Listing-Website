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
    public partial class Feedback : System.Web.UI.Page
    {

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "" || txtSubject.Text == "" || txtEmail.Text == "" || txtMessage.Text == "")
            {
                Response.Write("<Script type=\"text/javascript\">alert('Fields cannot be empty');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();
                    string query1 = "insert into Feedback (fName, fEmail, fSubject, fMessage) values (@fname, @femail, @fsubject, @fmessage)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@fname", txtName.Text);
                    cmd1.Parameters.AddWithValue("@femail", txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@fsubject", txtSubject.Text);
                    cmd1.Parameters.AddWithValue("@fmessage", txtSubject.Text);
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script type=\"text/javascript\">alert('Your Feedback has been recorded!.');</script>");

                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}