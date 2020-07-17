using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ShowGears : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            
            con.Open();
            string id;
            SqlDataAdapter da = new SqlDataAdapter("select * from Job", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            id = dt.Rows[0][0].ToString();
            lblName.Text = dt.Rows[0][1].ToString();
            lblPrice.Text = dt.Rows[0][2].ToString();
            lblType.Text = dt.Rows[0][3].ToString();
            imgProd.ImageUrl = "ImageHandler.ashx?ID="+id;

            id = dt.Rows[1][0].ToString();
            lblName0.Text = dt.Rows[1][1].ToString();
            lblPrice0.Text = dt.Rows[1][2].ToString();
            lblType0.Text = dt.Rows[1][3].ToString();
            imgProd0.ImageUrl = "ImageHandler.ashx?ID=" + id;
            con.Close();

            id = dt.Rows[2][0].ToString();
            lblName5.Text = dt.Rows[2][1].ToString();
            lblPrice5.Text = dt.Rows[2][2].ToString();
            lblType5.Text = dt.Rows[2][3].ToString();
            imgProd1.ImageUrl = "ImageHandler.ashx?ID=" + id;
            con.Close();

            id = dt.Rows[3][0].ToString();
            lblName1.Text = dt.Rows[3][1].ToString();
            lblPrice1.Text = dt.Rows[3][2].ToString();
            lblType1.Text = dt.Rows[3][3].ToString();
            imgProd2.ImageUrl = "ImageHandler.ashx?ID=" + id;
            con.Close();

            id = dt.Rows[4][0].ToString();
            lblName2.Text = dt.Rows[4][1].ToString();
            lblPrice2.Text = dt.Rows[4][2].ToString();
            lblType2.Text = dt.Rows[4][3].ToString();
            imgProd3.ImageUrl = "ImageHandler.ashx?ID=" + id;
            con.Close();

            id = dt.Rows[5][0].ToString();
            lblName6.Text = dt.Rows[5][1].ToString();
            lblPrice6.Text = dt.Rows[5][2].ToString();
            lblType6.Text = dt.Rows[5][3].ToString();
            imgProd4.ImageUrl = "ImageHandler.ashx?ID=" + id;
            con.Close();

            id = dt.Rows[6][0].ToString();
            lblName3.Text = dt.Rows[6][1].ToString();
            lblPrice3.Text = dt.Rows[6][2].ToString();
            lblType3.Text = dt.Rows[6][3].ToString();
            imgProd5.ImageUrl = "ImageHandler.ashx?ID=" + id;
            con.Close();

            id = dt.Rows[7][0].ToString();
            lblName4.Text = dt.Rows[7][1].ToString();
            lblPrice4.Text = dt.Rows[7][2].ToString();
            lblType4.Text = dt.Rows[7][3].ToString();
            imgProd6.ImageUrl = "ImageHandler.ashx?ID=" + id;
            con.Close();

            id = dt.Rows[8][0].ToString();
            lblName7.Text = dt.Rows[8][1].ToString();
            lblPrice7.Text = dt.Rows[8][2].ToString();
            lblType7.Text = dt.Rows[8][3].ToString();
            imgProd7.ImageUrl = "ImageHandler.ashx?ID=" + id;
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<Script type=\"text/javascript\">alert('You have applied for the job post Successfully.');</script>");
        }

        protected void btnbuy2_Click(object sender, EventArgs e)
        {
            Response.Write("<Script type=\"text/javascript\">alert('You have applied for the job post Successfully.');</script>");
        }

        protected void btnbuy3_Click(object sender, EventArgs e)
        {
            Response.Write("<Script type=\"text/javascript\">alert('You have applied for the job post Successfully.');</script>");
        }

        protected void btnbuy4_Click(object sender, EventArgs e)
        {
            Response.Write("<Script type=\"text/javascript\">alert('You have applied for the job post Successfully.');</script>");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Write("<Script type=\"text/javascript\">alert('You have applied for the job post Successfully.');</script>");
        }

        protected void btnb_Click(object sender, EventArgs e)
        {
            Response.Write("<Script type=\"text/javascript\">alert('You have applied for the job post Successfully.');</script>");
        }

        protected void btnbuy6_Click(object sender, EventArgs e)
        {
            Response.Write("<Script type=\"text/javascript\">alert('You have applied for the job post Successfully.');</script>");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write("<Script type=\"text/javascript\">alert('You have applied for the job post Successfully.');</script>");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Write("<Script type=\"text/javascript\">alert('You have applied for the job post Successfully.');</script>");
        }
    }
}