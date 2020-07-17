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
    public partial class ViewUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string fetchdata()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from UserRegistration";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int id = reader.GetInt32(0);
                string uname = reader.GetString(1);
                string pass = reader.GetString(2);
                string rpass = reader.GetString(3);
                string email = reader.GetString(4);
                string gender = reader.GetString(5);
                string country = reader.GetString(6);
                string utype = reader.GetString(7);
                htmlStr += "<tr><td>" + id + "</td><td>" + uname + "</td><td>" + pass + "</td><td>" + rpass + "</td><td>" + email + "</td><td>"+ gender + "</td><td>" + country+ "</td><td>" + utype + "</td></tr>";
            }
            con.Close();
            return htmlStr;
        
    }
    }
}