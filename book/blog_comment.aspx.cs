using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class blog_comment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            string query = "SELECT comment FROM HTMLContent";
            string conString = ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();

                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            txtHTMLContent.Text = sdr["comment"].ToString();
                        }
                        sdr.Close();
                    }
                    con.Close();
                }
            }
        }
    }
    protected void Submit(object sender, EventArgs e)
    {
        string query = "INSERT INTO HTMLContent VALUES (@comment)";
        string conString = ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString;
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@comment", txtHTMLContent.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/blog_comment.aspx");
            }
        }
    }
}