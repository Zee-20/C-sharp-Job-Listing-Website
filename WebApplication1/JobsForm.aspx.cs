using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Customize : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["uType"] == null || !Session["uType"].Equals("Admin"))
            //    Response.Redirect("Login.aspx");
           
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtJobName.Text == "" || txtJobPay.Text == "")
            {
                Response.Write("<Script type=\"text/javascript\">alert('Fields cannot be empty');</script>");
            }
            else
            {

            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                Stream fs = fuJobImg.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                byte[] content = br.ReadBytes((Int32)fs.Length);

                string query1 = "insert into Job (jobName, jobPay, jobType, jobImg) values (@jName, @jPay, @jType, @jImg)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@jName", txtJobName.Text);
                cmd1.Parameters.AddWithValue("@jPay", txtJobPay.Text);
                cmd1.Parameters.AddWithValue("@jType", ddlJType.Text);
                cmd1.Parameters.AddWithValue("@jImg", content);
                cmd1.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                lblMessage.Text = "Job Added Successfully";
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        }


        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update Job set jobName ='" + txtJobName.Text + "',jobPay ='" + txtJobPay.Text + "',jobType ='" + ddlJType.Text + "'where jobId = '" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
            lblMessage.Text = "Job Updated Successfully";
            con.Close();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
      

        public string fetchData()
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
                int jobpay = reader.GetInt32(2);
                string jtype = reader.GetString(3);
                htmlStr += "<tr><td>" + jid + "</td><td>" + jname + "</td><td>" + jobpay + "</td><td>" + jtype + "</td></tr>";
            }
            con.Close();
            return htmlStr;
        }

        protected void btnSearchId_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Job where jobId= '" + txtJobId.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            id = Convert.ToInt32(dt.Rows[0][0]);
            txtJobName.Text = dt.Rows[0][1].ToString();
            txtJobPay.Text = dt.Rows[0][2].ToString();
            ddlJType.Text = dt.Rows[0][3].ToString();
          
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from Job where jobId = '" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
            lblMessage.Text = "Job Deleted Successfully";
            con.Close();
        }

        protected void btnReset_Click1(object sender, EventArgs e)
        {
            txtJobName.Text = String.Empty;
            txtJobPay.Text = String.Empty;
            ddlJType.Text = String.Empty;
        }
    }
}