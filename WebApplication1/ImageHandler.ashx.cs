using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    /// <summary>
    /// Summary description for ImageHandler
    /// </summary>
    public class ImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string imgID = context.Request.QueryString["id"].ToString();
            SqlConnection conn = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("Select jobImg from Job where jobId ="+imgID, conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((byte[])dr["jobImg"]);
            dr.Close();
            conn.Close();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}