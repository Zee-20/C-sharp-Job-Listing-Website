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
    public partial class ViewGears : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string fetchdata()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Job";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int jid = reader.GetInt32(0);
                string jname = reader.GetString(1);
                int jpay = reader.GetInt32(2);
                string jtype = reader.GetString(3);
               

                htmlStr += "<tr><td>" + jid + "</td><td>" + jname + "</td><td>" + jpay + "</td><td>" + jtype +"</td></tr>";
            }
            con.Close();
            return htmlStr; 
        }
    }
}